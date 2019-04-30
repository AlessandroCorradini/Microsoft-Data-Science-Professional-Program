numCols <- c("temp", "hum", "windspeed", "hr")
bike.scatter <- function(df, cols){
  require(ggplot2)
  for(col in cols){
    p1 <- ggplot(df, aes_string(x = col, y = "cnt")) + 
            geom_point(aes(alpha = 0.001, color = "blue")) +  
            geom_smooth(method = "loess") + 
            ggtitle(paste('Count of bikes rented vs. ', col)) +
            theme(text = element_text(size=16))
    print(p1)
  }
}


catCols <- c('season', 'yr', 'mnth', 'hr', 'holiday', 'workingday', 'weathersit', 'dayOfWeek')
bike.box <- function(df, cols){
  require(ggplot2)
  for(col in cols){
    p1 <- ggplot(df, aes_string(x = col, y = 'cnt', group = col)) +
            geom_boxplot()+ 
            ggtitle(paste('Count of bikes rented vs. ', col)) +
            theme(text = element_text(size=16))
    print(p1)
  }
}


pltTimes = c(6, 8, 10, 12, 14, 16, 18, 20)
bike.series <- function(df, tms){
  require(ggplot2)
  ylims = c(min(df$cnt), max(df$cnt))
  for(t in tms){   
    temp = df[df$hr == t, ]
    p1 <- ggplot(temp, aes(x = days, y = cnt)) +
      geom_line() + 
      ylim(ylims) +
      ylab('Bikes rented') +
      ggtitle(paste('Count of bikes rented vs. time for', t, 'hour of the day')) +
      theme(text = element_text(size=16))
    print(p1)  
  }
}


histCols <- c("temp", "hum", "windspeed", "cnt")
bike.hist <- function(df, cols){
  require(ggplot2)
  for(col in cols){
    p1 <- ggplot(df, aes_string(x = col)) + 
      geom_histogram() +
      ggtitle(paste('Density of', col)) +
      theme(text = element_text(size=16))
    print(p1)
  }
}



bike.hist.cond <- function(df, tms){
  require(ggplot2)
#  require(gridExtra)
  par(mfrow = c(2,4))
  for(i in 1:length(tms)){
    temp = df[df$hr == tms[i], ]
    p <- ggplot(temp, aes(x = cnt)) + 
      geom_histogram() +
      ggtitle(paste('Density of bike rentals at time', as.character(tms[i]))) +
      theme(text = element_text(size=16))
    print(p)
  }
#  grid.arrange(grobs = p, ncol = 3)
  par(mfrow = c(1,1))
}

