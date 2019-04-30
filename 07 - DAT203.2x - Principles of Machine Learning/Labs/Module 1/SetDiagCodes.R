code.table <- function(){
  c(rep('infections', 139),
    rep('neoplasms', (239 - 139)),
    rep('endocrine', (279 - 239)),
    rep('blood', (289 - 279)),
    rep('mental', (319 - 289)),
    rep('nervous', (359 - 319)),
    rep('sense', (389 - 359)),
    rep('circulatory', (459-389)),
    rep('respiratory', (519-459)),
    rep('digestive', (579 - 519)),
    rep('genitourinary', (629 - 579)),
    rep('pregnancy', (679 - 629)),
    rep('skin', (709 - 679)),
    rep('musculoskeletal', (739 - 709)),
    rep('congenital', (759 - 739)),
    rep('perinatal', (779 - 759)),
    rep('ill-defined', (799 - 779)),
    rep('injury', (999-799))
  )
}

set.codes <- function(x, code){
  i <- 1
  print(str(code))
  for(num in x){
    if(num == 'unknown' | is.na(num) | num == '?') {
      x[i] <- 'unknown'
    }else{  
      fchar <- toupper(substr(num, 1, 1))
      ifelse(fchar == 'E', x[i] <- 'injury',
             ifelse(fchar == 'V', x[i] <- 'suplemental',
                    x[i] <- codes[as.integer(num)] 
             ))
    } 
    i <- i + 1 
  }
  x
}

df <- maml.mapInputPort(1)
codes <- code.table()
diagCols <- c("diag_1", "diag_2", "diag_3")
df[,diagCols] <- lapply(df[, diagCols], set.codes, codes)
maml.mapOutputPort('df')
