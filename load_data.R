## This File : load_data.R
## Purpose : Extract and read the input data file
##           and then extract the sample data for 2 days
##           as required by the assignment, and then
##           create a Subset data frame to be used in
##           creating various plots as required (total of 4 plots).
##  Note :  Please set the appropriate working directory as per your own set up.
########################################################################################
# Set the working directory path, ( change here for your own set up ).
setwd("c:\\Users\\Chetan")
filename <- "household_power_consumption.txt" 

data <- read.table(filename, 
                   header = TRUE, 
                   sep = ";", 
                   colClasses = c("character", "character", rep("numeric",7)), 
                   na = "?") 
# subset the data for 2 days before plotting.
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] 