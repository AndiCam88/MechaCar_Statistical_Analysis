##Deliverable 1##

#load dplyr library
library(dplyr)

#read MechaCar_mpg csv file as dataframe
MechaCar_Table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_Table)

#summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_Table))


##Deliverable 2##

#read Suspension_Coil csv file as dataframe
Suspension_Coil_Table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#write total_summary dataframe for PSI column
total_summary <- susp_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#create lot_summary dataframe
lot_summary <- Suspension_Coil_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Deliverable 3

#write t.test for PSI across all lots
t.test(Suspension_Coil_Table$PSI, mu=1500)

#write 3 t.test for PSI for each lot
#Lot 1
t.test(subset(Suspension_Coil_Table, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
#lot 2
t.test(subset(Suspension_Coil_Table, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
#lot 3
t.test(subset(Suspension_Coil_Table, Manufacturing_Lot=="Lot3")$PSI, mu=1500)