housing_full <- read.csv("./data/household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";", nrows = 2075259) #gets the full dataset
housing_full$Date <- as.Date(housing_full$Date, format= "%d/%m/%Y") #changes date format to day/month/year
MyData <- subset(housing_full, subset = (Date >= "2007-02-01" & Date <= "2007-02-02")) #only uses dates from 1/2/2007 to 2/2/2007
rm(housing_full)
DateandTime <- paste(as.Date(MyData$Date), MyData$Time) #combines date and time
MyData$DateTime <- as.POSIXct(DateandTime) #creats a date and time column in dataset
plot(MyData$Global_active_power ~ MyData$DateTime, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)") dev.copy(png, file= "plot2.png")
dev.off()