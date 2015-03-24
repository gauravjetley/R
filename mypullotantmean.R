pollutantmean <- function (directory, pollutant, id = 1:332) {
    #setwd(dir = paste(directory,sep="")
    #meandata <- matrix()
        
    #Looping through the files
    for (i in id){    
        
        #Appending leading zero's to the file names
        j<-i
        if (j<10) {j<-paste("00",j,".csv",sep="")}
        else if (j>=10 & j<100) {j<-paste("0",j,".csv",sep="")}
        else {j<-j}
        
        #Adding means of files in temp
        temp <- read.csv(file = j, head = TRUE, sep = ",")
        meandata[i] <- mean(temp$sulfate, na.rm = TRUE)
    }
    
    mean(meandata)
}
