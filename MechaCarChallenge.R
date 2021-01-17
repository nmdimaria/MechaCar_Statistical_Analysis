library(dplyr)

#Deliverable 1
MechaCar_mpg <- read_csv("MechaCar_mpg.csv")
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))

#Deliverable 2
Suspension_coils <- read_csv("Suspension_Coil.csv")
Suspension_coils$PSI
total_summary <- Suspension_coils %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI), SD=sd(PSI))
lot_summary <- Suspension_coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI), SD=sd(PSI))

#Deliverable 3
t.test(Suspension_coils$PSI, mu=1500)
t.test(subset(Suspension_coils, Manufacturing_Lot=="Lot1", select=PSI), mu=1500)
t.test(subset(Suspension_coils, Manufacturing_Lot=="Lot2", select=PSI), mu=1500)
t.test(subset(Suspension_coils, Manufacturing_Lot=="Lot3", select=PSI), mu=1500)
