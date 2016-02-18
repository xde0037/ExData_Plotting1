# This file : plot4.R
# Purpose : plots a multi line graph with different colors for 3 sub-meter categories 
#            and saves a binary PNG file called 'plot4.png'.
######################################################################################

## First check whether we are in right directory path or not. 
if (!"load_data.R" %in% list.files("./")) { 
  cat("load_data.R is not available in present directory, please set appropriate directory \
          and Try Again.")
  stop() 
}  
source("load_data.R")
#str(subSetData) 
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")  
globalActivePower <- as.numeric(subSetData$Global_active_power) 
globalReactivePower <- as.numeric(subSetData$Global_reactive_power) 
voltage <- as.numeric(subSetData$Voltage) 

#subMetering1 <- as.numeric(subSetData$Sub_metering_1) 
#subMetering2 <- as.numeric(subSetData$Sub_metering_2) 
#subMetering3 <- as.numeric(subSetData$Sub_metering_3) 

png(filename = "plot4.png",  
     width = 480, height = 480, 
     units = "px", bg = "transparent") 
par(mfrow = c(2, 2)) 
## Top-left 
plot(DateTime, globalActivePower,  
      type = "l", 
      xlab = "", ylab = "Global Active Power") 
## Top-right 
plot(DateTime, Voltage, 
      type = "l", 
      xlab = "datetime", ylab = "Voltage") 
## Bottom-left 
plot(DateTime, Sub_metering_1,  
      type = "l", 
      col = "black", 
      xlab = "", ylab = "Energy sub metering") 
lines(DateTime, Sub_metering_2, col = "red") 
lines(DateTime, Sub_metering_3, col = "blue") 
# Remove the border of legend here. 
legend("topright",  
        bty = "n", 
        col = c("black", "red", "blue"), 
        c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
        lwd = 1) 
## Bottom-right 
plot(DateTime, globalReactivePower,  
      type = "l", 
      col = "black", 
      xlab = "datetime", ylab = colnames(newData)[4]) 
dev.off() 

