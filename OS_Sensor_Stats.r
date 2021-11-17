# for doing stats on OS sensor data

accur.dat = read.csv(file = "Mean_Error.csv",stringsAsFactors = F)
str(accur.dat)

t.test(x = accur.dat$Mean_Error[grep(pattern = "Atlas",x = accur.dat$Sensor_Group)],y = accur.dat$Mean_Error[grep(pattern = "Other",x = accur.dat$Sensor_Group)])
