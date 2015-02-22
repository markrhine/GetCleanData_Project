#Codebook

##Data Dictionary

Col#    Column Name

1   activity

	There are 6 possible actiities. 

	- walking
	- walking_upstairs
	- walking_downstairs
	- sitting
	- standing
	- laying


2	subject_id

	There are 30 human subjects. ID's range from 1-30


##Columns 3-81 Are Measurements: Please Reference 

**Each of the variables were AVERAGED, AFTER being grouped by activity and subject id.**

**All measurements, except magnitude, were taken in 3 Dimension space. X-Y-Z dimensions. The dimension (X, Y, or Z) is added to the variable name.**

------------------------------------------------------

mean = mean (average)

OR

std = standard deviation

OR

meanFreq = mean frequency

--------------------------------------------------------

'time' prefix = time domain signals

OR

'frequency' prefix = frequency domain signals

---------------------------------------------------------

'body' = measurement relating to the body of the human subject 

OR

'gravity' = measurement relating to gravity acceleration

*Note: Total Acceleration = body acceleration + gravity acceleration

---------------------------------------------------------- 

'Accelerometer' = a tool used to measure acceleration. Units: standard gravity units, g

OR

'Gyroscope' = a tool used to measure angular velocity. Units: radians per second

----------------------------------------------------------

'Jerk' = rate of change of acceleration. Units: g's per second.

----------------------------------------------------------

'Magnitude' = rate of acceleration without any regard to direction (X, Y, or Z). Units: standard gravity units, g. 

-----------------------------------------------------------


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
