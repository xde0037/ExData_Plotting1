# This file : plot1.R
# Purpose : plots a histogram for Active Power(KW) and saves the graph to
#           a binary PNG file called 'plot1.png'.
######################################################################################

## First check whether we are in right directory path or not. 
if (!"load_data.R" %in% list.files("./")) { 
  cat("load_data.R is not available in present directory, please set appropriate directory \
          and Try Again.")
  stop() 
}  
source("load_data.R") 
globalActivePower <- as.numeric(subSetData$Global_active_power) 
png(filename = "plot1.png",  
    width = 480, height = 480,  
    units = "px", bg = "transparent") 
hist(globalActivePower,  
      col = "red",  
      main = "Global Active Power",  
      xlab = "Global Active Power (kilowatts)", 
      breaks = 12, ylim = c(0, 1200)) 
dev.off() 

