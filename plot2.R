source('Getting_and_Cleaning_data.R')

png(filename = "plot2.png", width = 480, height = 480, bg="transparent")

with(needed_data, {
        plot(Date_Time,Global_active_power , type = "l",
             ylab = "Global Active Power (kilowatts)",xlab=""
             ) 
})

dev.off()
