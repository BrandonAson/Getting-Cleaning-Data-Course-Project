---
output: word_document
---
____________________

Study Design


The run_analysis.R script creates an independent tidy data set containing the average of each variable for each activity and each subject from the original data collected from the accelerometers from the Samsung Galaxy S smartphone.  A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The following is a link to the data used for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

_____________________

Experimental Design


The R script run_analysis.R downloads the data from the link listed above, unzips the data set and creates the following folder in the local directory (./UCI HAR Dataset).

The run_analysis script then loads the test and training data sets as well as the features and activity labels.

The run_analysis script subsequently merges the test and training datasets, adds a descriptive name to each variable that comes from the features file, and selects only the variables containing mean or standard deviation values.  

The activity and subject id variables are then added as two new variables labeled as 'activity' and 'subject' respectively.  

A new data set is then created containing the mean of each variable for each activity and each subject.  

This is then output as a text file to the local directory with the file name tidyDataSet.txt.
_____________________


Code Book


1 subject - Identifies each individual (range 1-30). One of 30 volunteers within the age bracket of 19-48 years

2	activity - Lists the six measured activities: laying, sitting, standing, walking, walking downstairs & walking upstairs

3	tBodyAcc mean   X - mean body linear acceleration on the x-axis (time 'seconds')

4	tBodyAcc mean   Y - mean body linear acceleration on the y-axis (time 'seconds')

5	tBodyAcc mean   Z - mean body linear acceleration on the z-axis (time 'seconds')

6	tGravityAcc mean   X - mean gravity linear acceleration on the x-axis (time 'seconds')

7	tGravityAcc mean   Y - mean gravity linear acceleration on the y-axis (time 'seconds')

8	tGravityAcc mean   Z - mean gravity linear acceleration on the z-axis (time 'seconds')

9	tBodyAccJerk mean   X - mean body linear acceleration jerk signal on the x-axis (time 'seconds')

10	tBodyAccJerk mean   Y - mean body linear acceleration jerk signal on the y-axis (time 'seconds')

11	tBodyAccJerk mean   Z - - mean body linear acceleration jerk signal on the z-axis (time 'seconds')

12	tBodyGyro mean   X - mean gravity gyroscope signal the x-axis (radians/ second)

13	tBodyGyro mean   Y - mean gravity gyroscope signal signal on the y-axis (radians/ second)

14	tBodyGyro mean   Z - mean gravity gyroscope signal signal on the z-axis (radians/ second)

15	tBodyGyroJerk mean   X - mean gravity gyroscope jerk signal the x-axis (radians/ second)

16	tBodyGyroJerk mean   Y - mean gravity gyroscope jerk signal the y-axis (radians/ second)

17	tBodyGyroJerk mean   Z - mean gravity gyroscope jerk signal the z-axis (radians/ second)

18	tBodyAccMag mean  - magnitude of the mean body linear acceleration (time 'seconds')

19	tGravityAccMag mean - magnitude of the mean gravity linear acceleration (time 'seconds')

20	tBodyAccJerkMag mean - magnitude of the mean body linear acceleration jerk signal (time 'seconds')

21	tBodyGyroMag mean - magnitude of the mean gravity gyroscope signal (radians/ second)

22	tBodyGyroJerkMag mean - magnitude of the mean gravity gyroscope jerk signal (radians/ second)

23	fBodyAcc mean   X - frequency of the mean body linear acceleration on the x-axis (time 'seconds')

24	fBodyAcc mean   Y - frequency of the mean body linear acceleration on the y-axis (time 'seconds')

25	fBodyAcc mean   Z - frequency of the mean body linear acceleration on the z-axis (time 'seconds')

26	fBodyAcc meanFreq   X - average of the frequency of the mean body linear acceleration on the x-axis (time 'seconds')

27	fBodyAcc meanFreq   Y - average of the frequency of the mean body linear acceleration on the y-axis (time 'seconds')

28	fBodyAcc meanFreq   Z - average of the frequency of the mean body linear acceleration on the z-axis (time 'seconds')

29	fBodyAccJerk mean   X - frequency of the mean gravity gyroscope jerk signal the x-axis (time 'seconds')

30	fBodyAccJerk mean   Y - frequency of the mean gravity gyroscope jerk signal the y-axis (time 'seconds')

31	fBodyAccJerk mean   Z - frequency of the mean gravity gyroscope jerk signal the z-axis (time 'seconds')

32	fBodyAccJerk meanFreq   X - average of the frequency of the mean gravity gyroscope jerk signal the x-axis (time 'seconds')

33	fBodyAccJerk meanFreq   Y - average of the frequency of the mean gravity gyroscope jerk signal the y-axis (time 'seconds')

34	fBodyAccJerk meanFreq   Z - average of the frequency of the mean gravity gyroscope jerk signal the z-axis (time 'seconds')

35	fBodyGyro mean   X - frequency of the mean gravity gyroscope signal the x-axis (radians/ second)

36	fBodyGyro mean   Y - frequency of the mean gravity gyroscope signal the y-axis (radians/ second)

37	fBodyGyro mean   Z - frequency of the mean gravity gyroscope signal the z-axis (radians/ second)

38	fBodyGyro meanFreq   X - average of the frequency of the mean gravity gyroscope signal the x-axis (radians/ second)

39	fBodyGyro meanFreq   Y - average of the frequency of the mean gravity gyroscope signal the y-axis (radians/ second)

40	fBodyGyro meanFreq   Z - average of the frequency of the mean gravity gyroscope signal the z-axis (radians/ second)

41	fBodyAccMag mean  - average of the magnitude of the mean body linear acceleration (time 'seconds')

42	fBodyAccMag meanFreq - average of the magnitude of the mean frequency of the mean body linear acceleration signal (time 'seconds')

43	fBodyBodyAccJerkMag mean - average of the magnitude of the mean body linear acceleration jerk signal (time 'seconds')

44	fBodyBodyAccJerkMag meanFreq - average of the magnitude of the mean frequency of the body linear acceleration jerk signal (time 'seconds')

45	fBodyBodyGyroMag mean - average of the magnitude of the mean gravity gyroscope signal (radians/ second)

46	fBodyBodyGyroMag meanFreq - average of the magnitude of the mean frequency of the gravity gyroscope signal (radians/ second)

47	fBodyBodyGyroJerkMag mean - average of the magnitude of the mean gravity gyroscope jerk signal (radians/ second)

48	fBodyBodyGyroJerkMag meanFreq - average of the magnitude of the mean frequency of the gyroscope jerk signal (radians/ second)

49	tBodyAcc std   X - standard deviation of the body linear acceleration on the x-axis

50	tBodyAcc std   Y - standard deviation of the body linear acceleration on the y-axis

51	tBodyAcc std   Z - standard deviation of the body linear acceleration on the z-axis

52	tGravityAcc std   X - standard deviation of the gravity linear acceleration on the x-axis

53	tGravityAcc std   Y - standard deviation of the gravity linear acceleration on the y-axis

54	tGravityAcc std   Z - standard deviation of the gravity linear acceleration on the z-axis

55	tBodyAccJerk std   X - standard deviation of the body linear acceleration jerk signal on the x-axis

56	tBodyAccJerk std   Y - standard deviation of the body linear acceleration jerk signal on the y-axis

57	tBodyAccJerk std   Z - standard deviation of the body linear acceleration jerk signal on the z-axis

58	tBodyGyro std   X - standard deviation of the gravity gyroscope signal the x-axis

59	tBodyGyro std   Y - standard deviation of the gravity gyroscope signal the y-axis

60	tBodyGyro std   Z - standard deviation of the gravity gyroscope signal the z-axis

61	tBodyGyroJerk std   X - standard deviation of the gravity gyroscope jerk signal the x-axis

62	tBodyGyroJerk std   Y - standard deviation of the gravity gyroscope jerk signal the y-axis

63	tBodyGyroJerk std   Z - standard deviation of the gravity gyroscope jerk signal the z-axis

64	tBodyAccMag std  - standard deviation of the magnitude of the body linear acceleration

65	tGravityAccMag std - standard deviation of the magnitude of the gravity linear acceleration

66	tBodyAccJerkMag std - standard deviation of the magnitude of the body linear acceleration jerk signal

67	tBodyGyroMag std - standard deviation of the magnitude of the gyroscope signal 

68	tBodyGyroJerkMag std - standard deviation of the magnitude of the gyroscope jerk signal

69	fBodyAcc std   X - standard deviation of the frequency of the body linear acceleration on the x-axis 

70	fBodyAcc std   Y - standard deviation of the frequency of the body linear acceleration on the y-axis

71	fBodyAcc std   Z - standard deviation of the frequency of the body linear acceleration on the z-axis

72	fBodyAccJerk std   X - standard deviation of the frequency of the body linear acceleration jerk signal on the x-axis

73	fBodyAccJerk std   Y - standard deviation of the frequency of the body linear acceleration jerk signal on the y-axis

74	fBodyAccJerk std   Z - standard deviation of the frequency of the body linear acceleration jerk signal on the z-axis

75	fBodyGyro std   X - standard deviation of the frequency of the gravity gyroscope signal the x-axis

76	fBodyGyro std   Y - standard deviation of the frequency of the gravity gyroscope signal the y-axis

77	fBodyGyro std   Z - standard deviation of the frequency of the gravity gyroscope signal the z-axis

78	fBodyAccMag std  - standard deviation of the magnitude of the frequency of the body linear acceleration

79	fBodyBodyAccJerkMag std - standard deviation of the magnitude of the frequency of the body linear acceleration jerk signal

80	fBodyBodyGyroMag std - standard deviation of the magnitude of the gyroscope signal 

81	fBodyBodyGyroJerkMag std - standard deviation of the magnitude of the gyroscope jerk signal

_____________________


The following is a description of the features selection from the unproccessed data set:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


