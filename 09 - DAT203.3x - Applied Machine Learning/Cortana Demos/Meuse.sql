
CREATE DATABASE pollution;
GO

USE pollution;
GO

CREATE USER [mssqlserver01] FOR LOGIN [SQL2016\MSSQLSERVER01] WITH DEFAULT_SCHEMA=[dbo]
GO


ALTER ROLE [db_datareader] ADD MEMBER [mssqlserver01]
GO



SELECT * INTO dbo.meuse_data
FROM Meuse.dbo.meuse_data;

SELECT * INTO dbo.meuse_grid
FROM Meuse.dbo.meuse_grid;
GO

CREATE PROCEDURE Prep_Meuse_Data
WITH EXECUTE AS OWNER
AS
execute sp_execute_external_script    
      @language = N'R'    
    , @script = N'
install.packages("sp")
install.packages("gstat")
install.packages("RODBC")
install.packages("rgdal")
set.coords = function(df){
  require(sp)
  # Function converts dataframe to spatialpointsdataframe
  # Convert to spatial points data frame
  coordinates(df) = ~x+y 

  # Assign the datum and compute the lat-lon of the 
  # of the x-y coordinates
  proj4string(df) <- CRS("+proj=stere
   +lat_0=52.15616055555555 +lon_0=5.38763888888889
   +k=0.999908 +x_0=155000 +y_0=463000
   +ellps=bessel +units=m +no_defs
   +towgs84=565.2369,50.0087,465.658,
   -0.406857330322398,0.350732676542563,-1.8703473836068, 4.0812")
  df
}


set.latlon = function(df){
  require(sp)
  ## Function to conver spatialPointsDataFrame to ordinary dataframe
  ## with lat-lon coordinates added.
  ## First save the original x-y coordinates into the dataframe
  df@data$x_coords = df@coords[,1]
  df@data$y_coords = df@coords[,2]
  
  ## Convert the coordinates to lat-lon
  df = spTransform(df ,CRS("+proj=longlat"))
  
  ## Covert to a regular datafrme and set the column names
  df = data.frame(df)
  ncols = ncol(df)
  start = ncols - 4
  end = ncols - 1
  nms = names(df)
  nms[start:end] = c("x", "y", "log", "lat")
  names(df) = nms
  df
}


set.latlon.grid = function(df){
  require(sp)
  ## Function to conver spatialGridDataFrame to ordinary dataframe
  ## with lat-lon coordinates added.
  ## Covert the grid to ordinary dataframe and then convert
  ## to a spatialPoints dataframe.
  df = data.frame(df)
  df = set.coords(df)
  
  ## The the lat-lon and output the result as a dataframe
  set.latlon(df)
}
meuse.data <- InputDataSet
meuse.data = set.coords(meuse.data)
require(gstat)
meuse.data$logCopper = log(meuse.data$copper)
meuse.data$sqrtDist = sqrt(meuse.data$dist)
copper.vgm = variogram(logCopper ~ sqrtDist, meuse.data)
copper.vgm.fit = fit.variogram(copper.vgm, model = vgm(1, "Sph", 900, 1))

library(RODBC);    
connStr <- "Driver=SQL Server;Server=(local);Database=pollution;Trusted_Connection=true;"    
    dbhandle <- odbcDriverConnect(connStr)    
    meuse.grid <- sqlQuery(dbhandle, "SELECT * from meuse_grid");    

## Convert to a spatialgriddataframe
meuse.grid = set.coords(meuse.grid)
gridded(meuse.grid) = TRUE


## Compute and plot the inverse distance weighted concentration of copper.
copper.idw = idw(copper ~ 1, meuse.data, meuse.grid)

## Use Kriging to inperplolate copper concentration and plot the results
copper.kriged = krige(logCopper ~ 1, meuse.data, meuse.grid, model = copper.vgm.fit)


## Convert the meuse.data spatialPointsDataFrame and the 
## meuse.grid and copper.kriged spatialGridDataFrames
## to ordinary dataframes with lat-lon coordinates.
mesue.data.out = set.latlon(meuse.data)
meuse.grid.out = set.latlon.grid(meuse.grid)
OutputDataSet = set.latlon.grid(copper.kriged)
'    
    , @input_data_1 = N' SELECT *  FROM dbo.meuse_data;'    
with RESULT SETS (([density] float not null,
                   [variability] float NOT NULL,
				   [x] int NOT NULL,
				   [y] int NOT NULL,
				   [long] float NOT NULL,
				   [lat] float NOT NULL,
				   [optional] bit NULL));


GO

CREATE TABLE meuse_copper
([density] float not null,
 [variability] float NOT NULL,
 [x] int NOT NULL,
 [y] int NOT NULL,
 [long] float NOT NULL,
 [lat] float NOT NULL,
 [optional] bit NULL);


INSERT INTO meuse_copper
EXEC Prep_Meuse_Data;

SELECT * FROM meuse_copper;

CREATE VIEW copper_points
AS
SELECT geography::Point(lat, long, 4326) AS coordinate, density, variability
FROM meuse_copper;

select * from copper_points

CREATE TABLE land_areas
(id integer identity,
 name varchar(10),
 location geography,
 center_point geography);

DECLARE @woodland geography = geography::STPolyFromText('POLYGON((5.754861 50.995199,
									5.757803 50.997108,
									5.757750 50.997405,
									5.756387 50.997982,
									5.753346 50.995936,
									5.753812 50.995359,
									5.754279 50.995406,
									5.754861 50.995199))', 4326)
INSERT INTO land_areas VALUES
('Woodland', @woodland, @woodland.EnvelopeCenter());

DECLARE @lake geography = geography::STPolyFromText('POLYGON((5.732768 50.976994,
5.734667 50.977981,
5.733744 50.979223,
5.734066 50.979352,
5.735149 50.978318,
5.736855 50.979581,
5.732178 50.983141, 
5.731341 50.982932,
5.732006 50.981453,
5.731115 50.981027,
5.732446 50.980034,
5.731748 50.979669,
5.730171 50.980993,
5.728734 50.980284,
5.728755 50.980291,
5.732768 50.976994))', 4326)
INSERT INTO land_areas VALUES
('Lake', @lake, @lake.EnvelopeCenter());

select * FROM land_areas;

CREATE VIEW land_area_points
AS
SELECT ID, name, center_point.Lat as center_lat, center_point.Long AS center_long
FROM land_areas;

CREATE VIEW points_near_land_areas
AS
SELECT center_point.Lat AS center_lat, center_point.Long AS center_long,name, coordinate.Lat AS point_lat, coordinate.Long AS point_long, density, coordinate.STDistance(location) AS distance
FROM copper_points CROSS JOIN land_areas
WHERE coordinate.STWithin(location.STBuffer(500)) = 1

CREATE VIEW nearby_areas
AS
select name, center_lat, center_long, min(distance) AS MinDistance, avg(density) as AvgDensity
from points_near_land_areas
GROUP BY name, center_lat, center_long

select * from nearby_areas



