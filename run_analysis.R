CreateCombinedData <- function () {
  # get data from files
  testdata <- read.table('data/test/X_test.txt',sep='')
  traindata <- read.table('data/train/X_train.txt',sep='')
  alldata <- rbind(testdata,traindata)
  
  # label columns using feature data
  features <- read.table('data/features.txt',sep='')
  features <- features[,2]
  colnames(alldata) <- features
  
  # remove columns which arent mean or sd
  alldata <- alldata[,grep("mean\\(\\)|std\\(\\)", features)]
  
  #combine with activity data
  testActivities <- read.table('data/test/y_test.txt')
  trainActivities <- read.table('data/train/y_train.txt')
  allActivities <- rbind(testActivities, trainActivities)
  colnames(allActivities) <- 'activity'
  alldata <- cbind(allActivities, alldata)
  
  #give actvity data meaningful names
  alldata$activity <- factor(alldata$activity, levels = 1:6, labels=c('Walking','Walking_Upstairs','Walking_Downstairs','Sitting','Standing','Laying'))
  
  #return dataset
  alldata
}


AggregateActivitiesAndSubjects <- function (alldata) {
  # get subjects data
  testSubjects <- read.table('data/test/subject_test.txt')
  trainSubjects <- read.table('data/train/subject_train.txt')
  allSubjects <- rbind(testSubjects, trainSubjects)
  colnames(allSubjects) <- 'subject'
  
  #combine with other data  
  aggdata <- cbind(allSubjects, alldata)
  
  #aggregate mean values by subject and activity
  aggdata <- aggregate(aggdata, by=list(aggdata$subject, aggdata$activity),FUN=mean)
  
  #remove group column for subject and the original column for activity
  aggdata <- aggdata[,c(2:3,5:69)]
  #relabel the group column for subject
  colnames(aggdata)[2] <- 'subject'
  colnames(aggdata)[1] <- 'activity'
  #return dataset
  aggdata
}


out1 <- CreateCombinedData()

out2 <- AggregateActivitiesAndSubjects(out1)

write.csv(out2,'aggregatedDataSet.csv', row.names=FALSE)
write.csv(out1,'fullDataSet.csv', row.names=FALSE)
out2

