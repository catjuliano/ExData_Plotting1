par(mfrow = c(2,2)) #sets the window into 2 rows and 2 columns
plot(MyData$DateTime,MyData$Global_active_power, xlab = "", ylab = "Global Active Power",type ="l") #first plot in top left
plot(MyData$DateTime,MyData$Voltage, xlab = "datetime", ylab = "Voltage", type = "l") #second plot in topright
plot(MyData$DateTime, MyData$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")  #third plot bottom left
points(MyData$DateTime, MyData$Sub_metering_2, type = "l", col ="red")
points(MyData$DateTime, MyData$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = c(1,1,1), lwd = c(1,1,1), col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty = "n")
plot(MyData$DateTime,MyData$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power") #fourth plot bottom right
dev.copy(png, file="plot4.png") #copy plot to png
dev.off() #close png
