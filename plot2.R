#Get dataset
dataFile <- "O:/DATA/Data Science Course/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#SubSet dataset
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Convert the Date and Time variables to Date/Time classes 
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#Change Global_active_power variable to numeric
globalActivePower <- as.numeric(subSetData$Global_active_power)

#Create png file
png("plot2.png", width=480, height=480)

#Make plot 2
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

#Close the png file device
dev.off()