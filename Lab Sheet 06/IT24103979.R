setwd("C:\\Users\\Admin\\Desktop\\IT24103979")
getwd()

#Exercise

#Part 1
#i.distribution of X is Binomial Distribution
#X ~ Bin(n=50, p=0.85)

#ii.probability that at least 47 students passed the test
p_at_least_47 <- 1 - pbinom(46, 50, 0.85, lower.tail = TRUE)
print(p_at_least_47)

#Part 2
#i. Let X - number of calls per hour 

#ii. X ~ Poisson(lembda = 12)

#iii.probability that exactly 15 calls are received in an hour 
p_exactly_15 <- dpois(15, 12)
print(p_exactly_15)
