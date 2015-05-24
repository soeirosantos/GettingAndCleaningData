# Code Book

## About the experiment and raw data

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

For each record in the raw data set it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Source: http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names

## Transformation

The R script provided (`run_analysis.R`) does the following transformation: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each 
measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with
the average of each variable for each activity and each subject.

The script is totally commented and each step is well described. Please, see the
source code for more details on transformation steps.

## Variables in the Tidy Data Set

Each variable is self described by its name. And the set of variables represent 
the mean and standard deviation measures for triaxial acceleration from the 
accelerometer (total acceleration) and the estimated body acceleration; and 
Triaxial Angular velocity from the gyroscope.

As result of the transformation, the following variables can be obtained:

1. Subject
2. Activity
3. TimeBodyAccelerometerMean_X
4. TimeBodyAccelerometerMean_Y
5. TimeBodyAccelerometerMean_Z
6. TimeBodyAccelerometerSTD_X
7. TimeBodyAccelerometerSTD_Y
8. TimeBodyAccelerometerSTD_Z
9. TimeGravityAccelerometerMean_X
10. TimeGravityAccelerometerMean_Y
11. TimeGravityAccelerometerMean_Z
12. TimeGravityAccelerometerSTD_X
13. TimeGravityAccelerometerSTD_Y
14. TimeGravityAccelerometerSTD_Z
15. TimeBodyAccelerometerJerkMean_X
16. TimeBodyAccelerometerJerkMean_Y
17. TimeBodyAccelerometerJerkMean_Z
18. TimeBodyAccelerometerJerkSTD_X
19. TimeBodyAccelerometerJerkSTD_Y
20. TimeBodyAccelerometerJerkSTD_Z
21. TimeBodyGyroscopeMean_X
22. TimeBodyGyroscopeMean_Y
23. TimeBodyGyroscopeMean_Z
24. TimeBodyGyroscopeSTD_X
25. TimeBodyGyroscopeSTD_Y
26. TimeBodyGyroscopeSTD_Z
27. TimeBodyGyroscopeJerkMean_X
28. TimeBodyGyroscopeJerkMean_Y
29. TimeBodyGyroscopeJerkMean_Z
30. TimeBodyGyroscopeJerkSTD_X
31. TimeBodyGyroscopeJerkSTD_Y
32. TimeBodyGyroscopeJerkSTD_Z
33. TimeBodyAccelerometerMagnitudeMean
34. TimeBodyAccelerometerMagnitudeSTD
35. TimeGravityAccelerometerMagnitudeMean
36. TimeGravityAccelerometerMagnitudeSTD
37. TimeBodyAccelerometerJerkMagnitudeMean
38. TimeBodyAccelerometerJerkMagnitudeSTD
39. TimeBodyGyroscopeMagnitudeMean
40. TimeBodyGyroscopeMagnitudeSTD
41. TimeBodyGyroscopeJerkMagnitudeMean
42. TimeBodyGyroscopeJerkMagnitudeSTD
43. FrequencyBodyAccelerometerMean_X
44. FrequencyBodyAccelerometerMean_Y
45. FrequencyBodyAccelerometerMean_Z
46. FrequencyBodyAccelerometerSTD_X
47. FrequencyBodyAccelerometerSTD_Y
48. FrequencyBodyAccelerometerSTD_Z
49. FrequencyBodyAccelerometerMeanFrequency_X
50. FrequencyBodyAccelerometerMeanFrequency_Y
51. FrequencyBodyAccelerometerMeanFrequency_Z
52. FrequencyBodyAccelerometerJerkMean_X
53. FrequencyBodyAccelerometerJerkMean_Y
54. FrequencyBodyAccelerometerJerkMean_Z
55. FrequencyBodyAccelerometerJerkSTD_X
56. FrequencyBodyAccelerometerJerkSTD_Y
57. FrequencyBodyAccelerometerJerkSTD_Z
58. FrequencyBodyAccelerometerJerkMeanFrequency_X
59. FrequencyBodyAccelerometerJerkMeanFrequency_Y
60. FrequencyBodyAccelerometerJerkMeanFrequency_Z
61. FrequencyBodyGyroscopeMean_X
62. FrequencyBodyGyroscopeMean_Y
63. FrequencyBodyGyroscopeMean_Z
64. FrequencyBodyGyroscopeSTD_X
65. FrequencyBodyGyroscopeSTD_Y
66. FrequencyBodyGyroscopeSTD_Z
67. FrequencyBodyGyroscopeMeanFrequency_X
68. FrequencyBodyGyroscopeMeanFrequency_Y
69. FrequencyBodyGyroscopeMeanFrequency_Z
70. FrequencyBodyAccelerometerMagnitudeMean
71. FrequencyBodyAccelerometerMagnitudeSTD
72. FrequencyBodyAccelerometerMagnitudeMeanFrequency
73. FrequencyBodyAccelerometerJerkMagnitudeMean
74. FrequencyBodyAccelerometerJerkMagnitudeSTD
75. FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency
76. FrequencyBodyGyroscopeMagnitudeMean
77. FrequencyBodyGyroscopeMagnitudeSTD
78. FrequencyBodyGyroscopeMagnitudeMeanFrequency
79. FrequencyBodyGyroscopeJerkMagnitudeMean
80. FrequencyBodyGyroscopeJerkMagnitudeSTD
81. FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency