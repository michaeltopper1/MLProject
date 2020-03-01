#Set directory to project working directory

data_use <- read.csv("data_use.csv")

train<-data_use[which(data_use$type=="train"),]
