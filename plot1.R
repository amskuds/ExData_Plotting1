# Generating histogram plot in R for Exploratory Data Analysis Assignment 1
# Ron Mashrouteh May 11, 2014

# read the data form the .txt file
data <- read.table("~/household_power_consumption.txt",header = T, sep = ";",as.is=T,na.strings = "?")
# convert and assing the formating for data field
data$Date <- as.Date(data$Date,"%d/%m/%Y")
# filter the date value based on the given dates
data <- data[data$Date == '2007-02-01' | data$Date == '2007-02-02',]
# loop through the 9 variables (9 columns)
for(i in 3:9) data[,i] <- as.numeric(data[,i])

# Generate the graph
png("plot1.png")
with(data,hist(Global_active_power,main = "Global Active Power",col='red',xlab = 'Global Active Power (kilowatts)'))
