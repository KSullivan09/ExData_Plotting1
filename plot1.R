#Get dataset
dataFile <- "O:/DATA/Data Science Course/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#SubSet dataset
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Change Global_active_power variable to numeric
globalActivePower <- as.numeric(subSetData$Global_active_power)

#Create png file
png("plot1.png", width=480, height=480)

#Make plot 1
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

#Close the png file device
dev.off()