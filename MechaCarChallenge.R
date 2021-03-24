# import libraries
library(dplyr)

# import and read csv
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

# multiple linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance	+ AWD, data=MechaCar_mpg) #generate multiple lm
summary(lm(mpg ~ vehicle_length	+ vehicle_weight + spoiler_angle + ground_clearance	+ AWD, data=MechaCar_mpg)) #generate summary

# import and read csv
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)

# summary table
total_summary <- summarize(Suspension_Coil, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')