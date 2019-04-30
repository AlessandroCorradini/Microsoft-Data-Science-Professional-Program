set.day.of.week <- function(){
  library(dplyr)
  ## First day in the dataset is Sunday
  data.frame(weekday= c(0, 1, 2, 3, 4, 5, 6),
             dayOfWeek = c("Sun", "Mon", "Tue", "Wed", "Thr", "Fri", "Sat"),
             stringsAsFactors = FALSE)  
}


df <- set.day.of.week() 
maml.mapOutputPort('df')
