plot(MyData$DateTime, MyData$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "") 
points(MyData$DateTime, MyData$Sub_metering_2, type = "l", col ="red") #adds the second sub_metering
points(MyData$DateTime, MyData$Sub_metering_3, type = "l", col = "blue") #adds the third sub_metering
legend("topright", lty = c(1,1,1), lwd = c(1,1,1), col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")) #creates a legend at the top right of graph
dev.copy(png, file="plot3.png") #copies graph to a png file
dev.off() #closes png file