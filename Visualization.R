library(tidyverse)

data <- read_csv("train.csv")

# Visualization of Target Variable
ggplot(data = train, mapping = aes(x = SalePrice)) + 
  geom_histogram()

# Target Variable is right skewed.