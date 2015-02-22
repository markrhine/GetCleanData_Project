#ReadMe

# GetCleanData_Project
Project for Coursera Course, Creating a Tidy Data Set


##List of Files in this Repository:

	-readMe.md
	-codebook.md -- describes variables in final data set, answerCourseProject.txt
	-run_anaysis.R -- script that performs the analysis

##Purpose of this Repository:
1) To use R script, run_analysis.R, to clean up the raw data set provided by UC Irvine Machine Learning Repository. Make it a tidy data set. 

2) To create a new data table that summarizes and groups the raw data set by subject and activity, for only mean and standard deviation measurement variables.
New data table is created into "answercourseProject.txt"



##Introduction to Raw Data set

The zip file containing the raw data files can be found at:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

There are 6 raw data files used in analysis:


- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

*copied from readMe file associated with zip file


More info an be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

--------------------------------------------------------------------------------

The raw data comes from an experiment in which 30 human subjects performed 1 of 6 activities. These included walking, walking upstairs, walking downstairs, sitting, standing, and laying down. 

The purpose was to use machine learning to train software to be able to decipher which of the 6 activities a person is performing, based on what it learned from past results. So 70% of the records were training the software, by telling the software the activity, along with the 561 measurements. The other 30% were actual measurements that were testing the software.

Each record is a specific moment in time. Each record had 561 measurements, pertaining to 4 main categories. These included acceleration (g), angular velocity (radians/second), jerk (g/second), and magnitude (g). They were measured in 3 dimensions, X, Y, Z. Tools used were an accelerometer and a gyroscope, both included in a Samsung smart phone worn by each subject.

***I only Looked a the mean and standard deviation of each of these 4 main signals. The other measurement variables were discarded in the analysis.**

##Variable Names in Final Data Table, answerCourseProject.txt:

The following are the names of the 82 variables that is included in the final data set. They are numbered as they appear in the final data set.

1   activity

2   subject_id

3	timeBodyAccelerometer_mean_X

4	timeBodyAccelerometer_mean_Y

5	timeBodyAccelerometer_mean_Z

6	timeBodyAccelerometer_std_X

7	timeBodyAccelerometer_std_Y

8	timeBodyAccelerometer_std_Z

9	timeGravityAccelerometer_mean_X

10	timeGravityAccelerometer_mean_Y

11	timeGravityAccelerometer_mean_Z

12	timeGravityAccelerometer_std_X

13	timeGravityAccelerometer_std_Y

14	timeGravityAccelerometer_std_Z

15	timeBodyAccelerometer_Jerk_mean_X

16	timeBodyAccelerometer_Jerk_mean_Y

17	timeBodyAccelerometer_Jerk_mean_Z

18	timeBodyAccelerometer_Jerk_std_X

19	timeBodyAccelerometer_Jerk_std_Y

20	timeBodyAccelerometer_Jerk_std_Z

21	timeBodyGyroscope_mean_X

22	timeBodyGyroscope_mean_Y

23	timeBodyGyroscope_mean_Z

24	timeBodyGyroscope_std_X

25	timeBodyGyroscope_std_Y

26	timeBodyGyroscope_std_Z

27	timeBodyGyroscopeJerk_mean_X

28	timeBodyGyroscopeJerk_mean_Y

29	timeBodyGyroscopeJerk_mean_Z

30	timeBodyGyroscopeJerk_std_X

31	timeBodyGyroscopeJerk_std_Y

32	timeBodyGyroscopeJerk_std_Z

33	timeBodyAccelerometer_Magnitude_mean

34	timeBodyAccelerometer_Magnitude_std

35	timeGravityAccelerometer_Magnitude_mean

36	timeGravityAccelerometer_Magnitude_std

37	timeBodyAccelerometer_JerkMagnitude_mean

38	timeBodyAccelerometer_JerkMagnitude_std

39	timeBodyGyroscopeMagnitude_mean

40	timeBodyGyroscopeMagnitude_std

41	timeBodyGyroscopeJerkMagnitude_mean

42	timeBodyGyroscopeJerkMagnitude_std

43	frequencyBodyAccelerometer_mean_X

44	frequencyBodyAccelerometer_mean_Y

45	frequencyBodyAccelerometer_mean_Z

46	frequencyBodyAccelerometer_std_X

47	frequencyBodyAccelerometer_std_Y

48	frequencyBodyAccelerometer_std_Z

49	frequencyBodyAccelerometer_meanFreq_X

50	frequencyBodyAccelerometer_meanFreq_Y

51	frequencyBodyAccelerometer_meanFreq_Z

52	frequencyBodyAccelerometer_Jerk_mean_X

53	frequencyBodyAccelerometer_Jerk_mean_Y

54	frequencyBodyAccelerometer_Jerk_mean_Z

55	frequencyBodyAccelerometer_Jerk_std_X

56	frequencyBodyAccelerometer_Jerk_std_Y

57	frequencyBodyAccelerometer_Jerk_std_Z

58	frequencyBodyAccelerometer_Jerk_meanFreq_X

59	frequencyBodyAccelerometer_Jerk_meanFreq_Y

60	frequencyBodyAccelerometer_Jerk_meanFreq_Z

61	frequencyBodyGyroscope_mean_X

62	frequencyBodyGyroscope_mean_Y

63	frequencyBodyGyroscope_mean_Z

64	frequencyBodyGyroscope_std_X

65	frequencyBodyGyroscope_std_Y

66	frequencyBodyGyroscope_std_Z

67	frequencyBodyGyroscope_meanFreq_X

68	frequencyBodyGyroscope_meanFreq_Y

69	frequencyBodyGyroscope_meanFreq_Z

70	frequencyBodyAccelerometer_Magnitude_mean

71	frequencyBodyAccelerometer_Magnitude_std

72	frequencyBodyAccelerometer_Magnitude_meanFreq

73	frequencyBodyAccelerometer_JerkMagnitude_mean

74	frequencyBodyAccelerometer_JerkMagnitude_std

75	frequencyBodyAccelerometer_JerkMagnitude_meanFreq

76	frequencyBodyGyroscopeMagnitude_mean

77	frequencyBodyGyroscopeMagnitude_std

78	frequencyBodyGyroscopeMagnitude_meanFreq

79	frequencyBodyGyroscopeJerkMagnitude_mean

80	frequencyBodyGyroscopeJerkMagnitude_std

81	frequencyBodyGyroscopeJerkMagnitude_meanFreq
 

###***Please reference the Codebook for more information on what the terms used in the variable names mean, and their ***units of measure**.*

##Loading the data

The R script, run_analysis.R will download the zip file and unzip it for you in your current working directory. Also, it will load in all of the data sets into R.

The output will be a single data table, called "answerCourseProject.txt", that will be grouped and summarized by activity and also by subject. For each group, there is the calculated mean for all the other 79 measurement variables.



##Cleaning & Summarizing Analysis --Run_analysis.R

**Does the following steps:**

1)  Downloads the raw data into your current working directory if it hasn't been done already.

2)  Creates 6 R data frame objects out of the 6 raw data tables. Creates a data object, "feature" containing variable names. Read in from features.txt file

3)  Merges the 3 training data frames into 1 data frame object called "train2"

4)  Merges the 3 testing data frames into 1 data frame object called "test2"

5)  Combines both "train2" and "test2" data frames into 1 data frame, called "combo". So now there is just 1 data table for an entire observation, which is a component of tidy data.

6)  Gives the combo data frame new headers, names of actual variables. Saved in "feature" data object. Before this step, columns had default names that were non-descriptive. Still the names are not good for final data set. 

7)  Used grep function to extract only columns that contained "mean" or "std" (standard deviation). It returned column index #'s meeting criteria.

8)  Subsets the data with column index #'s.

9)  Converted "activity" variable into a factor categorical data, so it can be summarized later.

10)  Used a for loop to to go through entire activity column, converting activity # into a more descriptive term. Either "walking", "walking_upstairs", "walking_downstairs", "sitting" "standing", "laying". Just so it is more easily understood to users.

11)  Reorder columns to get "activity", "subject", and  "type" variables to front. They are important, so being upfront is helpful.

12)  Renamed all the measurement columns, 79 in all, to more descriptive names. It is more helpful when users can understand what columns they are dealing with. The names were hard copied in from Excel, so still reproducible in code. **This is our clean data set, ready for analysis.**

13)   Next, we use dplyr library to group data frame by activity and then by subject. We calculate the mean of each measurement for each group. There are 180 groups. 6 activities times 30 subjects equals 180. There are 79 measurement variables averaged.

14)  Sorted the summarized data frame, by activity (alphabetically), ad by subject_id (numerically).

15)  Created a text file containing our sorted and summarized data frame. File is called answerCourseProject.txt


 







License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
