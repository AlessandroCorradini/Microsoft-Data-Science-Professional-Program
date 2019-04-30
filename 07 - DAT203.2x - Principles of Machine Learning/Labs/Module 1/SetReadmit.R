class.readmit <- function(x){
  out <- rep("NO", length(x))
  out[which(x != "NO")] <- "YES"
  out
}

df <- maml.mapInputPort(1)
df$readmitted <- class.readmit(df$readmitted)
maml.mapOutputPort('df')
