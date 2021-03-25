# import libraries
library(dplyr)
library(tidyverse)

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

# t test on suspension coils
plt <- ggplot(Suspension_Coil, aes(PSI)) #import
plt + geom_density() #visualize distribution

sample_table1 <- Suspension_Coil %>% sample_n(50) #randomly sample 50
t.test(sample_table1$PSI,mu=mean(Suspension_Coil$PSI)) #test

sample_table2 <- Suspension_Coil %>% sample_n(100) #randomly sample 100
t.test(sample_table2$PSI,mu=mean(Suspension_Coil$PSI)) #test

t.test(Suspension_Coil$PSI, mu=mean(Suspension_Coil$PSI)) #do not sample and test

# Lot 1
lot1 = subset(Suspension_Coil, Manufacturing_Lot == "Lot1")
mean(lot1[['PSI']]) #display mean
t.test(lot1[['PSI']], mu=mean(Suspension_Coil$PSI)) #t test

# Lot 2
lot2 = subset(Suspension_Coil, Manufacturing_Lot == "Lot2")
mean(lot2[['PSI']]) #display mean
t.test(lot2[['PSI']], mu=mean(Suspension_Coil$PSI)) #t test

# Lot 3
lot3 = subset(Suspension_Coil, Manufacturing_Lot == "Lot3")
mean(lot3[['PSI']]) #display mean
t.test(lot3[['PSI']], mu=mean(Suspension_Coil$PSI)) #t test
