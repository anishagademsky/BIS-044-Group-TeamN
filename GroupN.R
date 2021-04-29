install.packages("readxl")
library("readxl")
my_data <- read_excel("Trends2.xlsx")
library(ggplot2)
my_data1 <- my_data[which(my_data$`Academic Year`>"71-72"),]
my_data1 <- my_data[which(my_data$`Academic Year`<"10-11"),]

plot <- ggplot(data = my_data1)+
  geom_bar(aes(x = `Academic Year`, y= `One-Year % Change`),stat="identity",position = "dodge")
plot
plot + theme (text=element_text(size = 7)) + 
xlab("Academic Years from 2000 to 2010") + ylab("One Year % Change in Tuition")+
ggtitle("Change in Tuition vs Academic Year")





