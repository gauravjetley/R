pollutantmean <- function (directory, pollutant, id = 1:332) {
    
    #getting and setting wd
    currentwd<-getwd()
    if (grep(pattern = directory,x = currentwd)) {}
    else {setwd(paste("./",directory,"/",sep=""))}
    
    #declaring objects
    x<-1    
    poll<-pollutant
    meandata<-c()
    
    #Looping through the files
    for (i in id){    
        
        #Appending leading zero's to the file names
        j<-c()
        if (i<10) {j<-paste("00",i,".csv",sep="")}
        else if (i>=10 & i<100) {j<-paste("0",i,".csv",sep="")}
        else {j<-paste(i,".csv",sep="")}
        
        #Adding means of pollutant in meandata
        temp <- read.csv(file = j, head = TRUE, sep = ",")
        meandata[x] <- mean(temp[,poll], na.rm = TRUE)
        x<-x+1
    }
    
    #rounding and displaying values
    round(mean(meandata),3)
}
