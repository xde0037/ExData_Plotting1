   Project : Exploratory Data Analysis Course : 2016

   This document : README.md file.

   Introduction:

   This project is based on the machine learning data as maintained at UC Irvine Machine Learning
   Repository at the following web link:

   http://archive.ics.uci.edu/ml/

   Following dataset has been used in the analysis presented here for the course project:
   DataSet Description : Household level electric power consumption.
   DataSet DownLoad Link :  ( Size about 20 MB ):
   https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
   
   This dataset represents a sample of Measurements of electric power consumption in a single 
   household with a one-minute sampling rate over a period of almost 4 years. Different electrical 
   quantities and some sub-metering values are available.

   Following 9 variables are used in the analysis here for this project. The definitions of these
   variables are taken from following web link:

   https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption
   And these 9 variables are :

  1.  Date: Date in format dd/mm/yyyy 
  2.  Time: time in format hh:mm:ss 
  3.  Global_active_power: household global minute-averaged active power (in kilowatt) 
  4.  Global_reactive_power: household global minute-averaged reactive power (in kilowatt) 
  5.  Voltage: minute-averaged voltage (in volt) 
  6.  Global_intensity: household global minute-averaged current intensity (in ampere) 
  7.  Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). 
      It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave 
      (hot plates are not electric but gas powered). 
  8.  Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). 
      It corresponds to the laundry room, containing a washing-machine, a tumble-drier, 
      a refrigerator and a light. 
  9.  Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds 
      to an electric water-heater and an air-conditioner.

  Loading the data :

  When loading the dataset into R, please consider the following:

-- The dataset has 2,075,259 rows and 9 columns. First calculate a rough estimate of 
   how much memory the dataset will require in memory before reading into R. Make sure your 
   computer has enough memory (most modern computers should be fine).
-- We will only be using data from the dates 2007-02-01 and 2007-02-02.
   It is better to just read data for this date-range rather than reading in the entire 
   dataset and subsetting to those dates.
-- You may find it useful to convert the Date and Time variables to Date/Time 
   classes in R using the strptime() and as.Date() functions.
-- Note that in this dataset missing values are coded as "?" .

Making Plots :

    Our overall goal here is simply to examine how household energy usage varies over 
	a 2-day period in February, 2007. Your task is to reconstruct the following plots below, 
	all of which were constructed using the base plotting system.
	
    First you will need to fork and clone the following GitHub repository: 
	https://github.com/rdpeng/ExData_Plotting1
	

Project Assignment Requirements : For each plot you should:

   -- Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
   -- Name of each of the plot files as plot1.png, plot2.png, etc.
   -- Create a separate R code file (plot1.R, plot2.R, etc.) that constructs the 
      corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. 
	  Your code file should include code for reading the data so that the plot can be fully 
	  reproduced. You should also include the code that creates the PNG file.
   -- Add the PNG file and R code file to your git repository
   
   When you are finished with the assignment, push your git repository to GitHub so 
   that the GitHub version of your repository is up to date. There should be 
   four PNG files and four R code files:
 
 The Project Files in this Project Repo:
 
    As outlined above for project requirements, here are the files for this project assignment
	in this Repo:
	
	'R' Code Files:
	
	[1] plot1.R  :
	[2] plot2.R  :
	[3] plot3.R  :
	[4] plot4.R  :
	[5] load_data.R  : use this to download and load data. Please make sure to set appropriate 
	                   directory using setwd() command of R.
	
	Image Files for the Plots generated (PNG Format):
	[1] plot1.png
	[2] plot2.png
	[3] plot3.png
	[4] plot4.png
	
    README.md    : this README file.
	
	Image Files of the Plots given as example in the assignment instructions for comparison :
	
	unnamed-chunk-2.png
	unnamed-chunk-3.png
	unnamed-chunk-4.png
	unnamed-chunk-5.png

