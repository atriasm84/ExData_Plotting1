source("./getDataSet.R")
Sys.setlocale("LC_ALL","en_GB.utf8") 
hpc<-getDataSet()

png(file="./plot2.png",
    width=480, height=480)
plot(
        hpc[!is.na(hpc$Global_active_power),"dateTime"],
        hpc[!is.na(hpc$Global_active_power),"Global_active_power"],
        type="l",
        main="",
        xlab="",
        ylab="Global Active Power (kilowatts)"
)
dev.off()