# This file : plot3.R
# Purpose : plots a Line Graph for Sub Metering Categories and saves the graph to
#           a binary PNG file called 'plot3.png'.
######################################################################################

## First check whether we are in right directory path or not. 
if (!"load_data.R" %in% list.files("./")) { 
  cat("load_data.R is not available in present directory, please set appropriate directory \
          and Try Again.")
  stop() 
}  
source("load_data.R")
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")  
globalActivePower <- as.numeric(subSetData$Global_active_power) 

#subMetering1 <- as.numeric(subSetData$Sub_metering_1) 
#subMetering2 <- as.numeric(subSetData$Sub_metering_2) 
#subMetering3 <- as.numeric(subSetData$Sub_metering_3) 

png(filename = "plot3.png",  
     width = 480, height = 480, 
     units = "px", bg = "transparent") 
	 
plot(DateTime, Sub_metering_1,  
      type = "l", 
      col = "black", 
      xlab = "", ylab = "Energy sub metering") 
lines(DateTime, Sub_metering_2, col = "red") 
lines(DateTime, Sub_metering_3, col = "blue") 
legend("topright",  
       col = c("black", "red", "blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lwd = 1) 
dev.off() 

