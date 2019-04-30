## Define a function to join the data frames
join.auto <- function(autos, makes){
  require(dplyr) ## Make sure dplyr is loaded
  left_join(autos, makes, by = 'make-id')
}

## Function to clean and prepare the auto data
prep.auto <- function(df, col.names){
  require(dplyr) ## Make sure dplyr is loaded
  
  ## set the column names. 
  names(df) <- col.names
  
  ## Eliminate unneeded columns
  df <- df[,!(names(df) %in% 
                c('symboling', 'normalizedlosses', 'makeid'))]

  ## Add a log transformed column for price using dplyr mutate
  df <- df %>% mutate(lnprice = log(price))
  
  ## Remove rows with NAs 
  df <- df[complete.cases(df), ]
  
  ## Remove duplicate rows
  df <- df %>% filter (! duplicated(df,))
  
  ## Consolidate the number of cylinders
  df <- df %>%
    mutate(cylinders = ifelse(cylinders %in% c("four", "three", "two"), "three-four",
           ifelse(cylinders %in% c("five", "six"), "five-six", "eight-twelve")))

  df
}

## Function to find outliers
id.outlier <- function(df){
  ## Use ifelse to filter for outliers
  df[, "outlier"] <- ifelse(df[,"enginesize"] > 190 | 
                              df[, "weight"] > 3500| 
                              df[, "citympg"] > 40, '1', '0')   
  df
}

## Define column names (change - to . for R)
col.names <- c('symboling', 'normalizedlosses', 'makeid', 'fueltype', 'aspiration', 'doors',
               'body', 'drive', 'engineloc', 'wheelbase',
               'length', 'width', 'height', 'weight', 'enginetype',
               'cylinders', 'enginesize', 'fuelsystem', 'bore', 'stroke',
               'compression', 'horsepower', 'rpm', 'citympg',
               'highwaympg', 'price', 'make')

## R code to prep the auto data
autos <- maml.mapInputPort(1) # read autos data frame from port 1
makes <- maml.mapInputPort(2) # read makes data frame from port 2
require(dplyr) # make sure dplyr is loaded
joined <- join.auto(autos, makes) ## Join the data frames
prepped <- prep.auto(joined, col.names) # Transform the data
outliers <- id.outlier(prepped) # mark the outliers
## remove rows where outlier is 1, then remove outlier column
out <- outliers %>% filter(outlier == 0) %>% subset(select=-outlier) 
maml.mapOutputPort("out") ## Output the prepared data frame