source("./getDataSet.R")
Sys.setlocale("LC_ALL","en_GB.utf8") 
hpc<-getDataSet()


png(file="./plot3.png",
    width=480, height=480)
plot(
        hpc[!is.na(hpc$Sub_metering_1),"dateTime"],
        hpc[!is.na(hpc$Sub_metering_1),"Sub_metering_1"],
        type="l",
        main="",
        xlab="",
        ylab="Energy sub metering"
)
lines(
        hpc[!is.na(hpc$Sub_metering_2),"dateTime"],
        hpc[!is.na(hpc$Sub_metering_2),"Sub_metering_2"],
        type="l",
        col="red"
)
lines(
        hpc[!is.na(hpc$Sub_metering_3),"dateTime"],
        hpc[!is.na(hpc$Sub_metering_3),"Sub_metering_3"],
        type="l",
        col="blue"
)
legend("topright",lty=1,col=c("black","blue","red"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()