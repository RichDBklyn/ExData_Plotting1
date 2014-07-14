setwd("~/Dropbox/DATA ANALYSIS/R Exercises/Exploratory Data Analysis/Project 1")
DataSet<-read.table(pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt"'),header=FALSE,sep=';')
colnames(DataSet)<-names(read.table('household_power_consumption.txt',header=TRUE,sep=';',nrows=1))
# Previous 2 lines of code suggested by eyal soreq in discussion forum
DataSet$DateTime<-strptime(paste(DataSet$Date,DataSet$Time), format="%d/%m/%Y %H:%M:%S")
# Creates new variable combining Date and Time
with(DataSet,plot(DateTime,Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=""))
dev.copy(png,'plot2.png')
dev.off()