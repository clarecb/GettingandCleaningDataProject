##Set working directory and load packages
##setwd("~/GoogleDrive/R/UCI HAR Dataset")
##library(plyr)

##Read in files
features = read.table('./features.txt',header=FALSE)
actLabels = read.table('./activity_labels.txt',header=FALSE)
TrainLabels = read.table('./train/y_train.txt',header=FALSE)
TestLabels = read.table('./test/y_test.txt',header=FALSE)
subjTrain = read.table('./train/subject_train.txt',header=FALSE)
subjTest = read.table('./test/subject_test.txt',header=FALSE)
TrainData = read.table('./train/x_train.txt',header=FALSE)
TestData = read.table('./test/x_test.txt',header=FALSE)

##Looking at the files
str(features)
str(actLabels)
str(TrainLabels)
str(TestLabels)
str(subjTrain)
str(subjTest)
str(TrainData)
str(TestData)

##Adding column/variables names
names(TestLabels) = "Activity"
names(subjTest) = "Subject"
names(TestData) = features$V2
names(TrainLabels) = "Activity"
names(subjTrain) = "Subject"
names(TrainData) = features$V2

##Combining all test files into one
AllTest = cbind(TestLabels, subjTest, TestData)

##Combining all train files into one
AllTrain = cbind(TrainLabels, subjTrain, TrainData)

##Combining test and train files into one
AllData = rbind(AllTest, AllTrain)

##Subsetting the data for only mean and std variables. Note that I assumed "mean" and "std" did not include "meanFreq()" type activities.
MeanStdData = AllData[,(grepl("Subject|Activity|mean\\(\\)|std\\(\\)", names(AllData)))]

##Set factor names to the values in the activity column.
MeanStdData$Activity = factor(MeanStdData$Activity, levels = c(1, 2, 3, 4, 5, 6), labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

##Rename variables
names(MeanStdData) = gsub("^t", "Time", names(MeanStdData))
names(MeanStdData) = gsub("^f","Frequency", names(MeanStdData))
names(MeanStdData) = gsub("mean\\(\\)","Mean", names(MeanStdData))
names(MeanStdData) = gsub("std\\(\\)","StandardDeviation", names(MeanStdData))
names(MeanStdData) = gsub("Acc", "Accelerometer", names(MeanStdData))
names(MeanStdData) = gsub("Mag", "Magnitude", names(MeanStdData))
names(MeanStdData) = gsub("BodyBody", "Body", names(MeanStdData))

##Save final tidy data set with only mean and standard deviation, re-named variables, and factor activity labels.
FinalData = MeanStdData

##Creates second tidy data set with average of each variable for each activity and subject
FinalDataMeans = aggregate(. ~Subject + Activity, FinalDataSet, FUN = mean)

##Saves files
write.table(FinalData, file = "FinalData.txt",row.name=FALSE)
write.table(FinalDataMeans, file = "FinalDataMeans.txt",row.name=FALSE)



