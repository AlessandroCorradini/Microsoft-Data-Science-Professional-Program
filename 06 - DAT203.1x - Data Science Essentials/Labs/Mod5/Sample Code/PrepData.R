## Function to clean and prepare the auto data
prep.auto <- function(df, col.names){
  require(dplyr) ## Make sure dplyr is loaded
  
  ## set the column names. 
  names(df) <- col.names
  
  ## Eliminate unneeded columns
  df <- df[,!(names(df) %in% 
                c('symboling', 'normalizedlosses', 'makeid'))]
 
  ## Coerce some character columns to numeric 
  ## Uncomment if NOT in Azure ML
  # cols <- c('price', 'bore', 'stroke', 'horsepower', 'rpm')
  # df[, cols] <- lapply(df[, cols], as.numeric)

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

## Define column names
col.names <- c('symboling', 'normalizedlosses', 'makeid', 'fueltype', 'aspiration', 'doors',
               'body', 'drive', 'engineloc', 'wheelbase',
               'length', 'width', 'height', 'weight', 'enginetype',
               'cylinders', 'enginesize', 'fuelsystem', 'bore', 'stroke',
               'compression', 'horsepower', 'rpm', 'citympg',
               'highwaympg', 'price', 'make')

## R code to prep the auto data
autos.price <- maml.mapInputPort(1) # read autos data frame from port 1
out <- prep.auto(autos.price, col.names) # Transform the data
maml.mapOutputPort("out") ## Output the prepared data frame