library(ggplot2)

data$hour <- factor(data$hour)

melted_data <- reshape2::melt(data, id.vars = 'hour', variable.name = 'employee')

ggplot(melted_data, aes(x = hour, y = value, color = employee)) +
  geom_line() +
  geom_point() +
  labs(title = "Customers Served Over Time",
       x = "Hour",
       y = "Number of Customers",
       color = "Employee") +
  theme_minimal()
