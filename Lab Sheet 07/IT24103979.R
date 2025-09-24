setwd('C:\\Users\\Admin\\Desktop\\IT24103979')
getwd()

prob1 <- punif(25, min=0, max=40) - punif(10, min=0, max=40)
prob1

prob2 <- pexp(2, rate=1/3)
prob2

prob3i <- 1 - pnorm(130, mean=100, sd=15)
prob3i

iq_95 <- qnorm(0.95, mean=100, sd=15)
iq_95
