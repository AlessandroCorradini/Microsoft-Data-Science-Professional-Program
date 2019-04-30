## Define a function to join the data frames
join.auto <- function(autos, makes){
  require(dplyr) ## Make sure dplyr is loaded
  left_join(autos, makes, by = 'make-id')
}

## R code to join the two input tables
autos <- maml.mapInputPort(1) # read autos data frame from port 1
makes <- maml.mapInputPort(2) # read makes data frame from port 2
out <- join.auto(autos, makes) ## Join the data frames
maml.mapOutputPort("out") ## Output the joined data frame
