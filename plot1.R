
#Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
#Name each of the plot files as plot1.png, plot2.png etc.
#Create a separate R code file plot1.R plot1.R, plot2.R that constructs the corresponding plot, i.e. code in plot1.R\color{red}{\verb|plot1.R|}plot1.R constructs the plot1.png\color{red}{\verb|plot1.png|}plot1.png plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You must also include the code that creates the PNG file.
#Add the PNG file and R code file to the top-level folder of your git repository (no need for separate sub-folders)
source("./getDataSet.R")

hpc<-getDataSet()

png(file="./plot1.png",
    width=480, height=480)
hist(hpc[!is.na(hpc$Global_active_power),"Global_active_power"],
     col="red",
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power"
   )
dev.off()
