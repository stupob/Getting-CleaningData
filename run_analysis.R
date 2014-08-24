library(data.table)

# load test and training data (using an already downloaded and unzip file)
testData <- read.table("./data/test/X_test.txt",header=FALSE)
testData_act <- read.table("./data/test/y_test.txt",header=FALSE)
testData_sub <- read.table("./data/test/subject_test.txt",header=FALSE)
trainData <- read.table("./data/train/X_train.txt",header=FALSE)
trainData_act <- read.table("./data/train/y_train.txt",header=FALSE)
trainData_sub <- read.table("./data/train/subject_train.txt",header=FALSE)

# name the activities in the data
activities <- read.table("./data/activity_labels.txt",header=FALSE,colClasses="character")
testData_act$V1 <- factor(testData_act$V1,levels=activities$V1,labels=activities$V2)
trainData_act$V1 <- factor(trainData_act$V1,levels=activities$V1,labels=activities$V2)

# label data with activity names
features <- read.table("./data/features.txt",header=FALSE,colClasses="character")
colnames(testData)<-features$V2
colnames(trainData)<-features$V2
colnames(testData_act)<-c("Activity")
colnames(trainData_act)<-c("Activity")
colnames(testData_sub)<-c("Subject")
colnames(trainData_sub)<-c("Subject")

# merge test and training data
testData<-cbind(testData,testData_act)
testData<-cbind(testData,testData_sub)
trainData<-cbind(trainData,trainData_act)
trainData<-cbind(trainData,trainData_sub)
allData<-rbind(testData,trainData)

# extract the mean and standard deviation
allData_mean<-sapply(allData,mean,na.rm=TRUE)
allData_sd<-sapply(allData,sd,na.rm=TRUE)

# tidy data set with the average of each variable, each activity, and each subject
AD <- data.table(allData)
tidy<-AD[,lapply(.SD,mean),by="Activity,Subject"]
write.table(tidy, "tidy.txt",row.names = FALSE)

