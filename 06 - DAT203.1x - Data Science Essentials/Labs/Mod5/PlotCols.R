vis.simple <- function(col1, df = auto.price, col2 = 'lnprice'){
  require(ggplot2) # make sure ggplot2 is loaded
  title = paste('Plot of', col1, 'vs.', col2) # create the title text string
  ggplot(df, aes_string(col1, col2)) +
    geom_point() +
    ggtitle(title)
}

## Scatter plots of select columns
auto.price <- maml.mapInputPort(1) # read autos data frame from port 1
plot.cols <- c("weight",
               "enginesize",
               "citympg")
lapply(plot.cols, vis.simple) # apply the plot columns to the function
maml.mapOutputPort("auto.price") ## Output the data frame


