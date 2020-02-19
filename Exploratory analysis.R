library(tidyverse)
library(ggplot2)

df = read.csv('/Users/michaeltopper/Desktop/Machine Learning/Project/nyc-inspections/DOHMH_New_York_City_Restaurant_Inspection_Results.csv')
df = as_tibble(df)


#creating the histogram for the distribution of scores in the data
ggplot(data = df) +
  geom_histogram(mapping = aes(x = SCORE), fill = 'blue', binwidth = 10) +
  xlab('Health Score (smaller is better)') +
  ylab('Count') +
  facet_wrap(~CRITICAL.FLAG) +
  theme_light()
#exploratory analysis to try and get some useful numbers:
table(df$BORO, df$CUISINE.DESCRIPTION)

#trying to extract the chained restaurants (or more than one location)
