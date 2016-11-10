if(!file.exists("data")){dir.create("data")} #if file data does not exist it will be created
FileURL <- "http://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
download.file(FileURL, destfile = "C:/users/rzhp93/Documents/data/housing.zip") #downloads the dataset
unzip(zipfile  = "C:/users/rzhp93/Documents/data/housing.zip", exdir = "./data") #unzips the file

HousingFile <- file("./data/household_power_consumption.txt")
HousingData <- read.table(text = grep("^[1,2]/2/2007",readLines(HousingFile), value = TRUE), 
                          col.names = c("Date","Time","Global_active_power", "Global_reactive_power","Voltage", 
                                        "Global_intensity", "Sub_metering_1", "Sub_metering_2","Sub_metering_3"), sep = ";", header = TRUE) #turns data set into a table from dates 1/2/2007 to 2/2/2007

png(filename = "plot1.png",bg = "transparent", width = 480, height = 480) #creates the plot as a png file 
hist(HousingData$Global_active_power, main = "Global Active Power", col ="red", xlab = "Global Active Power (kilowatts)")
dev.off() #closes the plot