source('Getting_and_Cleaning_data.R')
png(filename = "plot4.png", width = 480, height = 480)
with(needed_data, {
        par(mfrow= c(2,2))
        ##Top Left 
        plot(Date_Time,Global_active_power , type = "l",
             ylab = "Global Active Power (kilowatts)",xlab="",
             xaxt = "n") 
        r <- as.POSIXct(round(range(Date_Time), "days"))
        axis.POSIXct(1, at = seq(r[1], r[2], by = "day"), format = "%a")
        ##Top Right
        plot(Date_Time,Voltage , type = "l",
             ylab = "Voltage",xlab="",
             xaxt = "n") 
        axis.POSIXct(1, at = seq(r[1], r[2], by = "day"), format = "%a")
        ##Bottom left
        plot(Date_Time,Sub_metering_1 , type = "l",col="black", xlab = "",
             ylab = "Energy sub metering",
             xaxt = "n") 
        lines(Date_Time,Sub_metering_2 ,col="red",
              xaxt = "n") 
        lines(Date_Time,Sub_metering_3 , type = "l",col="blue",
              xaxt = "n") 
        axis.POSIXct(1, at = seq(r[1], r[2], by = "day"), format = "%a")
        legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
               col=c("black","red", "blue") ,lty = c(1,1,1),cex=0.5)
        ##Bottom right
        plot(Date_Time,Global_reactive_power , type = "l",
             xlab="",
             xaxt = "n") 
        axis.POSIXct(1, at = seq(r[1], r[2], by = "day"), format = "%a")
        
})
dev.off()
