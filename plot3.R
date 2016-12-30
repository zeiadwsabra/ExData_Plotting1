source('Getting_and_Cleaning_data.R')

png(filename = "plot3.png", width = 480, height = 480)

with(needed_data, {
        plot(Date_Time,Sub_metering_1 , type = "l",col="black", xlab = "",
             ylab = "Energy sub metering") 
        lines(Date_Time,Sub_metering_2 ,col="red") 
        lines(Date_Time,Sub_metering_3 , type = "l",col="blue") 
        legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
                col=c("black","red", "blue") ,lty = c(1,1,1))
})

dev.off()
