source("./getDataSet.R")
Sys.setlocale("LC_ALL","en_GB.utf8") 
hpc<-getDataSet()


png(file="./plot4.png",
    width=480, height=480)
par(mfrow=c(2,2),cex=0.75)
#top left
plot(
        hpc[!is.na(hpc$Global_active_power),"dateTime"],
        hpc[!is.na(hpc$Global_active_power),"Global_active_power"],
        type="l",
        main="",
        xlab="",
        ylab="Global Active Power"
)

#top right
plot(
        hpc[!is.na(hpc$Voltage),"dateTime"],
        hpc[!is.na(hpc$Voltage),"Voltage"],
        type="l",
        main="",
        xlab="datetime",
        ylab="Voltage"
)

#bottom left
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
legend("topright",lty=1,
       col=c("black","blue","red"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       bty = "n")

#bottom right
plot(
        hpc[!is.na(hpc$Global_reactive_power),"dateTime"],
        hpc[!is.na(hpc$Global_reactive_power),"Global_reactive_power"],
        type="l",
        main="",
        xlab="datetime",
        ylab="Global_reactive_power"
)


dev.off()