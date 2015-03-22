colummean <- function(x, removeNA = TRUE) {
  
  numcolums <- ncol(x)
  
  meancolums <- numeric(ncol(x))
  
      for(i in 1:numcolums) {
        
        meancolums[i] <- mean(x[,i], na.rm = removeNA)
    
      }
  
  meancolums
  
}