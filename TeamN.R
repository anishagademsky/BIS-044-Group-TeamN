install.packages("readxl")
library("readxl")
my_data <- read_excel("Trends2.xlsx")
library(ggplot2)
my_data1 <- my_data[which(my_data$`Academic Year`>"71-72"),]
my_data1 <- my_data[which(my_data$`Academic Year`<"10-11"),]

my_data1 <- my_data
plot <- ggplot(data = my_data1)+
  geom_point(aes(x = `Academic Year`, y= `One-Year % Change`))
 
plot + theme (text=element_text(size = 7))




