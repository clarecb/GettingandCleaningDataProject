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

The following variables are the variables found in the final data set.Gyroscope readings are in unites os radians/second, and accelerometer units are in standard gravite units g.

1. "Subject"                                                  
2. "Activity"                                                 
3. "TimeBodyAccelerometer-Mean-X"                             
4. "TimeBodyAccelerometer-Mean-Y"                             
5. "TimeBodyAccelerometer-Mean-Z"                             
6. "TimeBodyAccelerometer-StandardDeviation-X"                
7. "TimeBodyAccelerometer-StandardDeviation-Y"                
8. "TimeBodyAccelerometer-StandardDeviation-Z"                
9. "TimeGravityAccelerometer-Mean-X"                          
10. "TimeGravityAccelerometer-Mean-Y"                          
11. "TimeGravityAccelerometer-Mean-Z"                          
12. "TimeGravityAccelerometer-StandardDeviation-X"             
13. "TimeGravityAccelerometer-StandardDeviation-Y"             
14. "TimeGravityAccelerometer-StandardDeviation-Z"             
15. "TimeBodyAccelerometerJerk-Mean-X"                         
16. "TimeBodyAccelerometerJerk-Mean-Y"                         
17. "TimeBodyAccelerometerJerk-Mean-Z"                         
18. "TimeBodyAccelerometerJerk-StandardDeviation-X"            
19. "TimeBodyAccelerometerJerk-StandardDeviation-Y"            
20. "TimeBodyAccelerometerJerk-StandardDeviation-Z"            
21. "TimeBodyGyro-Mean-X"                                      
22. "TimeBodyGyro-Mean-Y"                                      
23. "TimeBodyGyro-Mean-Z"                                      
24. "TimeBodyGyro-StandardDeviation-X"                         
25. "TimeBodyGyro-StandardDeviation-Y"                         
26. "TimeBodyGyro-StandardDeviation-Z"                         
27. "TimeBodyGyroJerk-Mean-X"                                  
28. "TimeBodyGyroJerk-Mean-Y"                                  
29. "TimeBodyGyroJerk-Mean-Z"                                  
30. "TimeBodyGyroJerk-StandardDeviation-X"                     
31. "TimeBodyGyroJerk-StandardDeviation-Y"                     
32. "TimeBodyGyroJerk-StandardDeviation-Z"                     
33. "TimeBodyAccelerometerMagnitude-Mean"                      
34. "TimeBodyAccelerometerMagnitude-StandardDeviation"         
35. "TimeGravityAccelerometerMagnitude-Mean"                   
36. "TimeGravityAccelerometerMagnitude-StandardDeviation"      
37. "TimeBodyAccelerometerJerkMagnitude-Mean"                  
38. "TimeBodyAccelerometerJerkMagnitude-StandardDeviation"     
39. "TimeBodyGyroMagnitude-Mean"                               
40. "TimeBodyGyroMagnitude-StandardDeviation"                  
41. "TimeBodyGyroJerkMagnitude-Mean"                           
42. "TimeBodyGyroJerkMagnitude-StandardDeviation"              
43. "FrequencyBodyAccelerometer-Mean-X"                        
44. "FrequencyBodyAccelerometer-Mean-Y"                        
45. "FrequencyBodyAccelerometer-Mean-Z"                        
46. "FrequencyBodyAccelerometer-StandardDeviation-X"           
47. "FrequencyBodyAccelerometer-StandardDeviation-Y"           
48. "FrequencyBodyAccelerometer-StandardDeviation-Z"           
49. "FrequencyBodyAccelerometerJerk-Mean-X"                    
50. "FrequencyBodyAccelerometerJerk-Mean-Y"                    
51. "FrequencyBodyAccelerometerJerk-Mean-Z"                    
52. "FrequencyBodyAccelerometerJerk-StandardDeviation-X"       
53. "FrequencyBodyAccelerometerJerk-StandardDeviation-Y"       
54. "FrequencyBodyAccelerometerJerk-StandardDeviation-Z"       
55. "FrequencyBodyGyro-Mean-X"                                 
56. "FrequencyBodyGyro-Mean-Y"                                 
57. "FrequencyBodyGyro-Mean-Z"                                 
58. "FrequencyBodyGyro-StandardDeviation-X"                    
59. "FrequencyBodyGyro-StandardDeviation-Y"                    
60. "FrequencyBodyGyro-StandardDeviation-Z"                    
61. "FrequencyBodyAccelerometerMagnitude-Mean"                 
62. "FrequencyBodyAccelerometerMagnitude-StandardDeviation"    
63. "FrequencyBodyAccelerometerJerkMagnitude-Mean"             
64. "FrequencyBodyAccelerometerJerkMagnitude-StandardDeviation"
65. "FrequencyBodyGyroMagnitude-Mean"                          
66. "FrequencyBodyGyroMagnitude-StandardDeviation"             
67. "FrequencyBodyGyroJerkMagnitude-Mean"                      
68. "FrequencyBodyGyroJerkMagnitude-StandardDeviation
