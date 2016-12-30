source('Getting_and_Cleaning_data.R')

png(filename = "plot1.png", width = 480, height = 480, bg="transparent")

hist(needed_data$Global_active_power,
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power", col= "red"
     )

 dev.off()
 