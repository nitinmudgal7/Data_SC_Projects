# -2.....-1.....0....1....2

## nested approach> less optimized

rm(result)
x <-rnorm(1)
if(x > 1){
  result <- "x is greater than 1"
} else { if(x > -1){
  result <- "x is between -1 and 1"
} else
  result <- "x is less -1"
}
## chain approach more optimized
rm(result)
x<-rnorm(1)
if(x > 1){
  result <- "x is greater than 1"
} else if( x >= -1){
  result <- "x is between -1 and 1"
} else{
  result <- "x is less than -1"
}
