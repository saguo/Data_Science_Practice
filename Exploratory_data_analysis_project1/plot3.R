
## Loading the data
data <- read.csv("household_power_consumption.txt", header = T, sep = ";",na.string = "?", nrows = 2075259, check.names = F, stringsAsFactors = F,comment.char = "", quote = "\"'")

## Subsetting the data
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Converting 
Str_Datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
num_submetering1 <- as.numeric(subSetData$Sub_metering_1)
num_submetering2 <- as.numeric(subSetData$Sub_metering_2)
num_submetering3 <- as.numeric(subSetData$Sub_metering_3)

## Plot3
png("plot3.png", width = 480, height = 480)
plot(Str_Datetime, num_submetering1, type = "l", xlab = "", ylab = "Energy Sub metering")
lines(Str_Datetime, num_submetering2, col = "Red")
lines(Str_Datetime, num_submetering3, col = "Blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))

dev.off()