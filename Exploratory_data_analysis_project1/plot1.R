
## Loading the data
data <- read.csv("household_power_consumption.txt", header = T, sep = ";",na.string = "?", nrows = 2075259, check.names = F, stringsAsFactors = F,comment.char = "", quote = "\"'")

## Subsetting the data
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Converting
Num_global_active_power <- as.numeric(subSetData$Global_active_power)

# Plot1
png("plot1.png", width=480, height=480)
hist(Num_global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "Red")
dev.off()

