setwd("C:\\Users\\it24103979\\Desktop\\IT24103979")
getwd()

data <- read.table("Exercise - LaptopsWeights.txt",header = TRUE)
data

fix(data)
attach(data)

laptop_bag_weights <- data$Weight.kg

#1
popmn<-mean(laptop_bag_weights)
popsd<-sd(laptop_bag_weights) * sqrt((length(laptop_bag_weights) - 1) / length(laptop_bag_weights)) 

popmn
popsd


cat(popmn)
cat(popsd)
#2

set.seed(123)
samples<-c()
n<-c()

for (i in 1:25){
  s<- sample(laptop_bag_weights, size = 6, replace = TRUE)
  samples <- cbind(samples,s)
  n <- c(n, paste('S'))
}
samples

#3
mean(samples)
sd_of_samples<-sd(samples)
sd_of_samples
