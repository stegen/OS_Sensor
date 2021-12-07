# for doing stats on OS sensor data

# for calculating overall OS sensor accuracy (Atlas v. "Other")
accur.dat = read.csv(file = "Mean_Error.csv",stringsAsFactors = F)
str(accur.dat)

t.test(x = accur.dat$Mean_Error[grep(pattern = "Atlas",x = accur.dat$Sensor_Group)],y = accur.dat$Mean_Error[grep(pattern = "Other",x = accur.dat$Sensor_Group)])

# t = -2.051, df = 11.766, p-value = 0.06322
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  -12.7147837   0.3981171
#  sample estimates:
#  mean of x mean of y 
# 3.075000  9.233333 

# for calculating overall OS sensor prevision (Atlas v. "Other")
precis.dat = read.csv(file = "Mean_Deviation.csv",stringsAsFactors = F)
str(precis.dat)

t.test(x = precis.dat$Mean_Deviation[grep(pattern = "Atlas",x = precis.dat$Sensor_Group)],y = precis.dat$Mean_Deviation[grep(pattern = "Other",x = precis.dat$Sensor_Group)])

# t = -2.0023, df = 9.9353, p-value = 0.07329
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#   -13.253259   0.713259
#  sample estimates:
#  mean of x mean of y 
#  2.85      9.12 

