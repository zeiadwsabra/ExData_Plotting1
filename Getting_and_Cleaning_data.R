library(data.table)
data_set = data.frame(fread(input = "household_power_consumption.txt", sep = ";"))

data_set$Date = as.Date(data_set$Date, "%d/%m/%Y")

needed_data = subset(data_set, (data_set$Date >= "2007-02-01") &  (data_set$Date <= "2007-02-02"))

Date_Time = strptime(paste(needed_data$Date, needed_data$Time), format = "%Y-%m-%d %T")

needed_data$Date_Time = Date_Time
needed_data$Global_active_power = as.numeric(needed_data$Global_active_power)
needed_data$Global_reactive_power = as.numeric(needed_data$Global_reactive_power)
needed_data$Voltage = as.numeric(needed_data$Voltage)
needed_data$Global_intensity = as.numeric(needed_data$Global_intensity)
needed_data$Sub_metering_1 = as.numeric(needed_data$Sub_metering_1)
needed_data$Sub_metering_2 = as.numeric(needed_data$Sub_metering_2)
needed_data$Sub_metering_3 = as.numeric(needed_data$Sub_metering_3)

rm(data_set)
rm(Date_Time)





