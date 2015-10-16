---
title: "Untitled"
output: html_document
---

The ProjectCode.R file loads the following files from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones:
features.txt
activity_labels.txt
test/subject_test.txt
test/y_test.txt
test/X_test.txt
train/subject_train.txt
train/y_train.txt
train/X_train.txt

This data contains accelerometer and gyroscope readings from participants doing 6 different activities. 
The code combines the test and training date into one dataset. The code then subsets the dataset to keep only the variables relatated to mean and standard deviation as well as the subject identification number and type of activity. 

The activity types are as follows:
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

The code creates a tidy data set that finds the average of the accelerometer and gyroscope readings for each of the subjects on each of the activities.
