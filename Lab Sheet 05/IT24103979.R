setwd("C:\\Users\\it24103979\\Desktop\\IT24103979")
getwd()

Delivery_Times <- read.table("Exercise - Lab 05.txt",header = TRUE,sep = ",")

names(Delivery_Times) <- c("X1")
fix(Delivery_Times)
attach(Delivery_Times)


hist(Delivery_Times$X1, breaks = seq(20, 70, length = 10), right = FALSE, 
     main = "Histogram for Delivery Times", xlab = "Delivery Time")


breaks <- seq(20, 70, length = 10)
histogram <- hist(Delivery_Times$X1, breaks = breaks, right = FALSE, plot = FALSE)
cum.freq <- cumsum(histogram$counts)
plot(breaks, c(0, cum.freq), type = 'l', main = "Ogive for Delivery Times", 
     xlab = "Delivery Time", ylab = "Cumulative Frequency")
