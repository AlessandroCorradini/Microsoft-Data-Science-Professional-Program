id.outlier <- function(df){
  ## Use ifelse to filter for outliers
  df[, "outlier"] <- ifelse(df[,"enginesize"] > 190 | 
                              df[, "weight"] > 3500| 
                              df[, "citympg"] > 40, '1', '0')   
  df
}

## ID and plot outliers
auto.price <- maml.mapInputPort(1) # read autos data frame from port 1
require(dplyr) # make sure dplyr is loaded
auto.price <- id.outlier(auto.price) # mark the outliers
## remove rows where outlier is 1, then remove outlier column
out <- auto.price %>% filter(outlier == 0) %>% subset(select=-outlier) # filter outliers
maml.mapOutputPort("out") ## Output the data frame
