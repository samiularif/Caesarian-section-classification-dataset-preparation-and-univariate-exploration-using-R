#install xlsx packages
install.packages(xlsx)
library("xlsx")

#importing .xlsx file 
mydata<-read.xlsx("H:/Dataset_midterm.xlsx", sheetIndex = 1)

#To see imported Data set
mydata

#To see column names
names(mydata)

#Annotating data sets
mydata$Blood<-factor(mydata$Blood,levels=c("low","normal","high"),labels=c(0,1,2))


#To remove outliers
mydata<-mydata[-c(58,71),]

#To see summary of the structure of data set
str(mydata)

#To count numbers of null values
colSums(is.na(mydata))

#To remove null values from data set
mydata<-na.omit(mydata)

#To show descriptive statistics
summary(mydata)

#importing dplyr packages
install.packages("dplyr")
library(dplyr)

#To see standard deviation (SD) of all attributes
mydata %>% summarise_if(is.numeric,sd)

#To select random rows using dplyr
sample_n(mydata,3)

#To see standard variance row wise
library(matrixStats)
library(dplyr)
mydatax <-rowSds(as.matrix(mydata[,c(2,3,4)]))
mydatax

# Compute specific summary statistics for each variable and histogram

summary(mydata$Age)
sd(mydata$Age)
hist(mydata$Age, breaks = 20)

summary(mydata$weight.kg.)
sd(mydata$weight.kg.)
hist(mydata$weight.kg., breaks = 20)

summary(mydata$Delivery_number)
sd(mydata$Delivery_number)
hist(mydata$Delivery_number, breaks = 20)

summary(mydata$Delivery_time)
sd(mydata$Delivery_time)
hist(mydata$Delivery_time, breaks = 20)

blood_numeric<-as.numeric(mydata$Blood)
min(blood_numeric)
max(blood_numeric)
median(blood_numeric)
mean(blood_numeric)
sd(blood_numeric)
hist(blood_numeric, breaks = 20)

summary(mydata$Heart)
sd(mydata$Heart)
hist(mydata$Heart, breaks = 20)

summary(mydata$Caesarian)
sd(mydata$Caesarian)
hist(mydata$Caesarian, breaks = 20)



