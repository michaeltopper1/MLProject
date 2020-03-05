#Set directory to project working directory

##########Packages###########
library(utils)
library(tidyverse)
library(ISLR)
library(fastDummies)
library(class)


#########
data_use <- read.csv("data_use.csv") %>% 
  drop_na()

train<-as_tibble(data_use[which(data_use$type=="train"),] %>% 
  select(-c(type, YEAR,RELATE,birthplace))) %>% 
  dummy_cols(., remove_selected_columns = TRUE)

train.y<-train$divorce
train.x<-train %>% 
  select(-divorce) 

pred.Ytrain<-knn(train=train.x,test=train.x,cl=train.y, k=3)


summary(glm(divorce~.,data = train, family = binomial(link = "logit")))

pc.out<-prcomp(train.x,scale=TRUE)

graph<-tibble( "PC1"=pc.out$x[,1], 
               "PC2"=pc.out$x[,2], 
               "Group"=as.factor(train.y)
               )

ggplot(graph, aes(PC1,PC2,color=Group))+
  geom_point()
