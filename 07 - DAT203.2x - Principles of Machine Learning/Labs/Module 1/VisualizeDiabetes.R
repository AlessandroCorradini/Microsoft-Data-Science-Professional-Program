bar.plot <- function(x, cut = 200){
  require(ggplot2)
  if(is.factor(diabetes[, x]) | is.character(diabetes[, x]) & (x != 'readmitted')){
    colList = c('readmitted', x)
    diabetes[, colList] = lapply(diabetes[, colList], as.factor)
    sums <- summary(diabetes[, x], counts = n())
    msk <- names(sums[which(sums > cut)])
    tmp <- diabetes[diabetes[, x] %in% msk, colList]
    capture.output(
      if(strsplit(x, '[-]')[[1]][1] == x){
        g <- ggplot(tmp, aes_string(x)) +
          geom_bar() +
          facet_grid(. ~ readmitted) +
          ggtitle(paste('Readmissions by level of', x))
        print(g) 
      } 
    )    
  } 
}


violin.plot <- function(x){
  if(is.numeric(diabetes[, x])){
    ggplot(diabetes, aes_string('readmitted', x)) +
      geom_violin() +
      ggtitle(paste('Readmissions by', x))
  }
}


box.plot <- function(x){
  if(is.numeric(diabetes[, x])){
    ggplot(diabetes, aes_string('readmitted', x)) +
      geom_boxplot() +
      ggtitle(paste('Readmissions by', x))
  }
}

hist.plot <- function(x){
  if(is.numeric(diabetes[, x])){
    capture.output(
      ggplot(diabetes, aes_string(x)) +
        geom_histogram() +
        facet_grid(readmitted ~ .) +
        ggtitle(paste('Readmissions by', x))
    )
  }
}
