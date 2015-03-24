colummean <- function(x, removeNA = TRUE) {
    
#This function takes gets the means of colums in a dataset
    
    numcolums <- ncol(x)
    meancolums <- numeric(ncol(x))
    for(i in 1:numcolums) {
        meancolums[i] <- mean(x[,i], na.rm = removeNA)
    }
    meancolums
}
