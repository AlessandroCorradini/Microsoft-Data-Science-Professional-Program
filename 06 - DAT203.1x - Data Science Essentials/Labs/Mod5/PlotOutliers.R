vis.outlier <- function(col1 = 'citympg'){
  require(ggplot2) # make sure ggplot2 is loaded
  ## convert character columns to factors for plotting
  auto.price[, "outlier"] <- as.factor(auto.price[, "outlier"])    
  auto.price[, "fueltype"] <- as.factor(auto.price[, "fueltype"])    
  title = paste('Plot of', col1, 'vs.lnprice') # character string title
  ggplot(auto.price, aes_string(col1, 'lnprice')) +
    geom_point(aes(color = outlier, 
                   shape = fueltype, 
                   alpha = 0.5, size = 4)) +
    ggtitle(title)
}

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
## set the columns to plot
plot.cols <- c("weight",
               "enginesize",
               "citympg")
auto.price <- id.outlier(auto.price) # id outliers
lapply(plot.cols, vis.outlier)  # plot the results
out <- auto.price %>% filter(outlier == 1) # return the outliers
maml.mapOutputPort("out") ## Output the data frame