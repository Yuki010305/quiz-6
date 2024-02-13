install.packages("reshape2")
library("reshape2")
install.packages("ggplot2")
library("ggplot2")
install.packages("car")
library("car")
install.packages("MASS")
library("MASS") 
install.packages("cat")
library(cat)


set.seed(123) 
hours <- 9:17
employee_1 <- rnorm(length(hours), mean=8, sd=2) 
employee_2 <- employee_1 + rnorm(length(hours), mean=0, sd=1)
employee_1[1] <- 0
employee_2[1] <- 0

data <- data.frame(hour=hours, employee_1=round(employee_1), employee_2=round(employee_2))

print(data)

cor.test(data$employee_1, data$employee_2)

t.test(data$employee_1, data$employee_2, paired = TRUE)

normality_test_employee_1 <- shapiro.test(data$employee_1)
normality_test_employee_2 <- shapiro.test(data$employee_2)
print(normality_test_employee_1)
print(normality_test_employee_2)


morning_hours <- data$hour < 12
afternoon_hours <- data$hour >= 12

morning_hours <- data$hour < 12
afternoon_hours <- data$hour >= 12

t_test_morning_afternoon_employee_1 <- t.test(data$employee_1[morning_hours], data$employee_1[afternoon_hours])
t_test_morning_afternoon_employee_2 <- t.test(data$employee_2[morning_hours], data$employee_2[afternoon_hours])
print(t_test_morning_afternoon_employee_1)
print(t_test_morning_afternoon_employee_2)

outliers_employee_1 <- boxplot.stats(data$employee_1)$out
outliers_employee_2 <- boxplot.stats(data$employee_2)$out
print(outliers_employee_1)
print(outliers_employee_2)

lm_fit <- lm(employee_2 ~ employee_1, data = data)
summary(lm_fit)
