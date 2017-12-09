#Peer-graded Assignment: Course Project 1 Plot 1 -Histogram

dataREAD <- "./household_power_consumption.txt"  #Read in data
data <- read.table(dataREAD, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") #Pass to table
datasubset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] #Get sub set of main data str(datasubset)

globalActivePower <- as.numeric(datasubset$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") #Set color, title, labels
dev.off() #Turn device off

# End
