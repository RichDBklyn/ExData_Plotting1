setwd("~/Dropbox/DATA ANALYSIS/R Exercises/Exploratory Data Analysis/Project 1")
DataSet<-read.table(pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt"'),header=FALSE,sep=';')
colnames(DataSet)<-names(read.table('household_power_consumption.txt',header=TRUE,sep=';',nrows=1))
# Previous 2 lines of code suggested by eyal soreq in discussion forum
DataSet$DateTime<-strptime(paste(DataSet$Date,DataSet$Time), format="%d/%m/%Y %H:%M:%S")
# Creates new variable combining Date and Time
with(DataSet,plot(DateTime,Sub_metering_1,type="l",ylab="Energy sub metering",xlab=""))
with(DataSet,lines(DateTime,Sub_metering_2,type="l",col="red"))
with(DataSet,lines(DateTime,Sub_metering_3,type="l",col="blue"))
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
dev.copy(png,'plot3.png')
dev.off()