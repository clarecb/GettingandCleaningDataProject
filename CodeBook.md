---
title: "Untitled"
output: html_document
---

The ProjectCode.R file loads the following files from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones:
1. features.txt
2. activity_labels.txt
3. test/subject_test.txt
4. test/y_test.txt
5. test/X_test.txt 
6. train/subject_train.txt
7. train/y_train.txt
8. train/X_train.txt

This data contains accelerometer and gyroscope readings from participants doing 6 different activities. 
The code combines the test and training date into one dataset. The code then subsets the dataset to keep only the variables relatated to mean and standard deviation as well as the subject identification number and type of activity. 

The activity types are as follows:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

The code creates a tidy data set that finds the average of the accelerometer and gyroscope readings for each of the subjects on each of the activities.
