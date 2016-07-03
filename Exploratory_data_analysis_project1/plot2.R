
## Loading the data
data <- read.csv("household_power_consumption.txt", header = T, sep = ";",na.string = "?", nrows = 2075259, check.names = F, stringsAsFactors = F,comment.char = "", quote = "\"'")

## Subsetting the data
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Converting 
Num_global_active_power <- as.numeric(subSetData$Global_active_power)
Str_Datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep = " "), "%d/%m/%Y %H:%M:%S") 

## Plot2
png("plot2.png", width = 480, height = 480)
plot(Str_Datetime, Num_global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()