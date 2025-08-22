setwd("C:\\Users\\IT24103979\\Desktop\\IT24103979")
getwd()

branch_data <- read.table("Exercise.txt", header = TRUE, sep = " ")
fix(branch_data)
attach(branch_data)

head(branch_data)
str(branch_data)

boxplot(branch_data$Sales_X1, main = "Boxplot for Sales", ylab = "Sales")

summary(branch_data$Advertising_X2)

IQR(branch_data$Advertising_X2)

find_otliers <- function(x) {
  q1 <- quantile(x,0.25)
  q3 <- quantile(x,0.75)
  iqr <- q3 -q1
  lower_bound <- q1 - 1.5*iqr
  upper_bound <- q3 + 1.5*iqr
  outliers <-x[x<lower_bound | x>upper_bound]
  return(outliers)
}

outliers_years <- find_otliers(branch_data$Years_X3)
print(outliers_years)
SS