set.days <- function(df){  
  df[,'days'] = as.integer(df[, 'instant']/24)
  df
}

df <- maml.mapInputPort(1)
df <- set.days(df)
maml.mapOutputPort('df')