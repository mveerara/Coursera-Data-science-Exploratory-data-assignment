dataFile <- "./household_power_consumption.txt"
#data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data <- read.table(dataFile, header=TRUE, sep=";")
subsetData <- subset(data, Date = c("1/2/2007","2/2/2007"))
datetime  <- paste(subSetData$Date, subSetData$Time, sep=" ")

datetime <- strptime(datetime, "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()