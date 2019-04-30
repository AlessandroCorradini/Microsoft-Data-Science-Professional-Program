CREATE TABLE historic_data
([id] integer identity,
 [Year] integer,
 [Month] varchar(10),
 [MonthNumber] integer,
 [CottagecheeseProd] float,
 [IcecreamProd] float,
 [MilkProd] float,
 [FatPrice] float);
 
 CREATE TABLE milk_forecast
(id integer identity,
 created datetime default getdate(),
 forecast_year integer,
 forecast_month integer,
 forecast_month_name varchar(5),
 forecast decimal(12,6),
 upper95 decimal(12,6),
 lower95 decimal(12,6));

CREATE VIEW latest_milk_forecast
AS
select datefromparts(forecast_year, forecast_month, 1) as forecast_date,
        forecast,
		upper95,
		lower95
from milk_forecast
WHERE created = (select max(created) from milk_forecast);


CREATE VIEW last_year
AS
SELECT TOP 12 datefromparts([Year], [MonthNumber], 1) as [Date],
		CottagecheeseProd,
		IcecreamProd,
        MilkProd,
		FatPrice
from historic_data
WHERE [Year] = (select max([Year]) from historic_data);

CREATE VIEW last_and_next_milk
AS
SELECT [Date], MilkProd ,NULL AS Upper95, NULL AS Lower95 FROM last_year
UNION ALL
SELECT * FROM latest_milk_forecast;

select * from last_and_next_milk;
