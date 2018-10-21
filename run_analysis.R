##Load Packages
library(tidyr)
library(dplyr)

## Download file and unzip
zipfile <- "dataW4.zip"

if (!file.exists(zipfile)){
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                  zipfile, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
    unzip(zipfile) 
}

## Read activity label and feature data
activity <- read.table("UCI HAR Dataset/activity_labels.txt")
activity[,2] <- as.character(activity[,2])

allfeatures <- read.table("UCI HAR Dataset/features.txt")
allfeatures[,2] <- as.character(allfeatures[,2])

## pick out only relevant features (mean and standard deviation)
features <- grep(".*mean.*|.*std.*",allfeatures[,2])
features.names <- allfeatures[features,2]

##read train and test data, combine subject, label,
## and set data into train and test data tables

trainsubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainset <- read.table("UCI HAR Dataset/train/X_train.txt")[features]
trainlabel <- read.table("UCI HAR Dataset/train/y_train.txt")

train <- cbind(trainsubject,trainlabel,trainset)

testsubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
testset <- read.table("UCI HAR Dataset/test/X_test.txt")[features]
testlabel <- read.table("UCI HAR Dataset/test/y_test.txt")

test <- cbind(testsubject,testlabel,testset)

rm(trainsubject,trainset,trainlabel,testsubject,testset,testlabel)

## combine test and train data into one table

combinedData <- rbind(train,test)
colnames(combinedData) <- c("subject","activity",features.names)

## Make subject and activity factors

combinedData$subject <- as.factor(combinedData$subject)
combinedData$activity <- factor(combinedData$activity,levels = activity[,1],
                                labels = activity[,2])

## Clean up column names, removing special characters and abbreviations

colname <- colnames(combinedData)

colname <- gsub("[//(//)-]","",colname)
colname <- gsub("^f","Frequency",colname)
colname <- gsub("^t","Time",colname)
colname <- gsub("Acc","Accelerometer",colname)
colname <- gsub("Gyro","Gyroscope",colname)
colname <- gsub("Mag","Magnitude",colname)
colname <- gsub("mean","Mean",colname)
colname <- gsub("std","StdDev",colname)
colname <- gsub("BodyBody","Body",colname)

colnames(combinedData) <- colname


## Part 5: From the data set in step 4, creates a second, 
## independent tidy data set with the average of each variable 
## for each activity and each subject.

tidydataset <- combinedData %>%
    group_by(subject,activity) %>%
    summarize_all(funs(mean))

## Create text file for independent tidy data set

write.table(tidydataset,"tidydataset.txt",row.names=FALSE)

