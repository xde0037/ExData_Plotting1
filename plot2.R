# This file : plot2.R
# Purpose : plots a Line Graph for Active Power(KW) and saves the graph to
#           a binary PNG file called 'plot2.png'.
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

png(filename = "plot2.png",  
      width = 480, height = 480, 
      units = "px", bg = "transparent") 
plot(DateTime, globalActivePower,  
      type = "l", 
      xlab = "", 
      ylab = "Global Active Power (kilowatts)") 
dev.off() 

