source('Getting_and_Cleaning_data.R')
png(filename = "plot2.png", width = 480, height = 480)
with(needed_data, {
        plot(Date_Time,Global_active_power , type = "l",
             ylab = "Global Active Power (kilowatts)",xlab="",
             main = "Global Active Power",
             xaxt = "n") 
        r <- as.POSIXct(round(range(Date_Time), "days"))
        axis.POSIXct(1, at = seq(r[1], r[2], by = "day"), format = "%a")
        
})
dev.off()
