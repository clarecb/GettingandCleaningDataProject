---
title: "Course Project for Getting and Cleaning Data"
output: README
---

This is the repo to explain the R code for the course project for the Getting and Cleaning Data Coursera course. The R code takes multiple files, combines them, changes their variable names, and creates a final tidy data set.The R code (ProjectCode.R) does the following: 

1. Set working directory and load packages
2. Read in files
3. Adding column/variables names
4. Combining all test files into one
5. Combining all train files into one
6. Combining test and train files into one
7. Subsetting the data for only mean and std variables.
8. Set factor names to the values in the activity column.
9. Rename variables
10. Save final tidy data set with only mean and standard deviation, re-named variables, and factor activity labels.
11. Creates second tidy data set with average of each variable for each activity and subject
12. Saves files

More information about the variables can be found in the CodeBook.md file. The final Data set can be found in the FinalDataMeans.txt file.