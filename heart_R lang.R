getwd()
setwd("R_projects")
getwd()
data <- read.csv("heart.csv")
head(data)
data_age = data[data$Age < 50 & data$HeartDisease==1, c(1,2,12)]

# range of the age group 
min(data$Age)
max(data$Age)
mean(data$Age)

library("ggplot2")
#gender wise count using bar plot
ggplot(data=data, aes(x = Sex)) +
  geom_bar(fill="blue",color="black")+ylab("Count") +ggtitle("Count of Individuals by Gender")+facet_grid(Sex~HeartDisease)

#mean cholesterol value wrt the restingECG
ggplot(data = data, aes(x=RestingECG, y = Cholesterol, fill=RestingECG)) +stat_summary(fun = mean,geom = "bar")

#frequency of population acc. to cholestrol levels
hist(data$Cholesterol,col="blue")

# Assuming 'data' is your data frame
library(ggplot2)

# bar plot showing the count for each level of ChestPainType
ggplot(data = data, aes(x = ChestPainType, fill = ChestPainType)) +
  geom_bar() +
  ylab("Count") +
  ggtitle("Count of Individuals by Chest Pain Type")

# Assuming 'data' is your data frame
library(ggplot2)

# Assuming 'data' is your data frame
library(ggplot2)

# Filter data for Male and Female
gender_data <- data[data$Sex %in% c("M", "F"), ]

# pie chart showing the percentage of Male and Female for each level of ChestPainType
ggplot(data = gender_data, aes(x = "", fill = ChestPainType)) +
  geom_bar(width = 1, stat = "count") +
  coord_polar(theta = "y") +
  ylab("") +
  ggtitle("Percentage of Individuals by Chest Pain Type (Pie Chart)")
