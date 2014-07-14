setwd("~/Dropbox/DATA ANALYSIS/R Exercises/Exploratory Data Analysis/Project 1")
DataSet<-read.table(pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt"'),header=FALSE,sep=';')
colnames(DataSet)<-names(read.table('household_power_consumption.txt',header=TRUE,sep=';',nrows=1))
# Previous 2 lines of code suggested by eyal soreq in discussion forum
attach(DataSet)
hist(Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)", col="red")
dev.copy(png,'plot1.png')
dev.off()