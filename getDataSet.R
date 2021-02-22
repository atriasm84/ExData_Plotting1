#This function obatins the dataset and do some transformations on the types
#No decision took to solve NA in this method

getDataSet<-function(){
        datasetFile="./data/household_power_consumption.txt"
        
        if(!file.exists("./data")) {
                dir.create(file.path("./", "data"), showWarnings = FALSE)
                if(!file.exists(datasetFile)) {
                        url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
                        zipPath<-"./data/zippedRawDataset.zip"
                        download.file(url,zipPath)
                        unzip(zipPath,exdir="./data/")
                }
        }
        
        hpc<-read.table(datasetFile,sep=";",header=TRUE)
        
        hpc<-dplyr::filter(hpc,(Date=="1/2/2007")|(Date=="2/2/2007"))
        hpc$dateTime<-strptime(paste(hpc[,1],hpc[,2]),"%d/%m/%Y %H:%M:%S")
        hpc[,1]<-as.Date(hpc[,1], "%d/%m/%Y")
        hpc$Global_active_power<-as.numeric(hpc$Global_active_power)
        hpc
}