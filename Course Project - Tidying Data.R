#download the files from the internet

if(!file.exists("./CourseProjectRaw.zip")) {
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl, destfile = "./CourseProjectRaw.zip")
    #unzips file and extracts it in same directory level.
    unzip("./Project_2_RawData.zip")
    
}

#create data frames out of the downloaded files, now on hard drive
sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep=" ", header=FALSE)
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE, colClasses = "numeric")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)

sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep=" ", header=FALSE)
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE, colClasses = "numeric")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)

feature <- read.table("./UCI HAR Dataset/features.txt", header=FALSE)
library(dplyr)

#Merge each train & test together


#Put the columns of these two files into vectors, to be added to x_train file.

boo <- as.factor(sub_train$V1)
bar <- as.factor(y_train$V1)

#merge together training data & add "type" variable (testing or training) (all be training)
draft1 <- mutate(x_train, subject_id = boo)
train1 <- mutate(draft1, activity = bar)
train2 <- mutate(train1, type = "training")
#train dataframe has all trainig data in one frame

#Now merge together the 3 testing tables
foo <- as.factor(sub_test$V1)
far <- as.factor(y_test$V1)

#merge together testing data & add "type" variable (testing or training) (all be test)
draft1Test <- mutate(x_test, subject_id = foo)
test1 <- mutate(draft1Test, activity = far)
test2 <- mutate(test1, type = "test")
#test dataframe has all testing data in one frame

#)  Merge train & test data frames
combo <- rbind(train2, test2)


#Apply headers to data, using features.text 
    
#--create vector out of names
titles <- as.character(feature$V2)
titles <- c(titles, "subject_id", "activity", "type")

#--names(with vector)
names(combo) <- titles

#4 Keep only columns dealing with mean or standard deviation
#find index numbers first, search for keyword partial match

meanIndex <- which(grepl("mean", titles))
sdIndex <- which(grepl("std", titles))
index <- c(meanIndex, sdIndex, 562, 563, 564)
#columns we want to keep
sortIndex <- sort(index)

#Extracting them
dataSet <- combo[,sortIndex]



# Turn Activity # into Descriptive Factor variables
copydata <- dataSet
#convert to characters, for now
copydata$activity <- as.character(copydata$activity)

#Convert the 1-6 "code" to a decriptive variable, loop hrough each row, converting
num <- nrow(dataSet)
for(x in 1:num) {
    
    if(copydata[x,81] == "1")      
        {copydata[x,81] <- "walking"
    }
    else if(copydata[x,81] == "2")      
        {copydata[x,81] <- "walking_upstairs"
    }
    else if(copydata[x,81] == "3")      
    {copydata[x,81] <- "walking_downstairs"}
    
    else if(copydata[x,81] == "4")      
    {copydata[x,81] <- "sitting"}
    
    else if(copydata[x,81] == "5")      
    {copydata[x,81] <- "standing"}
    
    else if(copydata[x,81] == "6")      
    {copydata[x,81] <- "laying"}
}

#convert column back to factor variable, convert "type" too.
copydata$activity <- as.factor(copydata$activity)
copydata$type <- as.factor(copydata$type)

#reorder columns to get subject_id, activity, and type in first 3 columns

mydata <- copydata[c(81, 80, 82, 1:79)]

#copy mydata so we don't lose it
mydata2 <- mydata

#vector of names that are more descriptive of variables
niceNames <- c("activity",
               "subject_id",
               "type",
               "timeBodyAccelerometer_mean_X",
               "timeBodyAccelerometer_mean_Y",
               "timeBodyAccelerometer_mean_Z",
               "timeBodyAccelerometer_std_X",
               "timeBodyAccelerometer_std_Y",
               "timeBodyAccelerometer_std_Z",
               "timeGravityAccelerometer_mean_X",
               "timeGravityAccelerometer_mean_Y",
               "timeGravityAccelerometer_mean_Z",
               "timeGravityAccelerometer_std_X",
               "timeGravityAccelerometer_std_Y",
               "timeGravityAccelerometer_std_Z",
               "timeBodyAccelerometer_Jerk_mean_X",
               "timeBodyAccelerometer_Jerk_mean_Y",
               "timeBodyAccelerometer_Jerk_mean_Z",
               "timeBodyAccelerometer_Jerk_std_X",
               "timeBodyAccelerometer_Jerk_std_Y",
               "timeBodyAccelerometer_Jerk_std_Z",
               "timeBodyGyroscope_mean_X",
               "timeBodyGyroscope_mean_Y",
               "timeBodyGyroscope_mean_Z",
               "timeBodyGyroscope_std_X",
               "timeBodyGyroscope_std_Y",
               "timeBodyGyroscope_std_Z",
               "timeBodyGyroscopeJerk_mean_X",
               "timeBodyGyroscopeJerk_mean_Y",
               "timeBodyGyroscopeJerk_mean_Z",
               "timeBodyGyroscopeJerk_std_X",
               "timeBodyGyroscopeJerk_std_Y",
               "timeBodyGyroscopeJerk_std_Z",
               "timeBodyAccelerometer_Magnitude_mean",
               "timeBodyAccelerometer_Magnitude_std",
               "timeGravityAccelerometer_Magnitude_mean",
               "timeGravityAccelerometer_Magnitude_std",
               "timeBodyAccelerometer_JerkMagnitude_mean",
               "timeBodyAccelerometer_JerkMagnitude_std",
               "timeBodyGyroscopeMagnitude_mean",
               "timeBodyGyroscopeMagnitude_std",
               "timeBodyGyroscopeJerkMagnitude_mean",
               "timeBodyGyroscopeJerkMagnitude_std",
               "frequencyBodyAccelerometer_mean_X",
               "frequencyBodyAccelerometer_mean_Y",
               "frequencyBodyAccelerometer_mean_Z",
               "frequencyBodyAccelerometer_std_X",
               "frequencyBodyAccelerometer_std_Y",
               "frequencyBodyAccelerometer_std_Z",
               "frequencyBodyAccelerometer_meanFreq_X",
               "frequencyBodyAccelerometer_meanFreq_Y",
               "frequencyBodyAccelerometer_meanFreq_Z",
               "frequencyBodyAccelerometer_Jerk_mean_X",
               "frequencyBodyAccelerometer_Jerk_mean_Y",
               "frequencyBodyAccelerometer_Jerk_mean_Z",
               "frequencyBodyAccelerometer_Jerk_std_X",
               "frequencyBodyAccelerometer_Jerk_std_Y",
               "frequencyBodyAccelerometer_Jerk_std_Z",
               "frequencyBodyAccelerometer_Jerk_meanFreq_X",
               "frequencyBodyAccelerometer_Jerk_meanFreq_Y",
               "frequencyBodyAccelerometer_Jerk_meanFreq_Z",
               "frequencyBodyGyroscope_mean_X",
               "frequencyBodyGyroscope_mean_Y",
               "frequencyBodyGyroscope_mean_Z",
               "frequencyBodyGyroscope_std_X",
               "frequencyBodyGyroscope_std_Y",
               "frequencyBodyGyroscope_std_Z",
               "frequencyBodyGyroscope_meanFreq_X",
               "frequencyBodyGyroscope_meanFreq_Y",
               "frequencyBodyGyroscope_meanFreq_Z",
               "frequencyBodyAccelerometer_Magnitude_mean",
               "frequencyBodyAccelerometer_Magnitude_std",
               "frequencyBodyAccelerometer_Magnitude_meanFreq",
               "frequencyBodyAccelerometer_JerkMagnitude_mean",
               "frequencyBodyAccelerometer_JerkMagnitude_std",
               "frequencyBodyAccelerometer_JerkMagnitude_meanFreq",
               "frequencyBodyGyroscopeMagnitude_mean",
               "frequencyBodyGyroscopeMagnitude_std",
               "frequencyBodyGyroscopeMagnitude_meanFreq",
               "frequencyBodyGyroscopeJerkMagnitude_mean",
               "frequencyBodyGyroscopeJerkMagnitude_std",
               "frequencyBodyGyroscopeJerkMagnitude_meanFreq")


#rename columns in mydata
names(mydata2) <- niceNames



#Want a new data set, that finds the average of each measurement variabe,
#grouped by activity and subject.

#start with our flat tidy data set, mydata

startData <- mydata2

#group by activity, then subject_id --> two levels

activity_subject <- group_by(startData, activity, subject_id)

#summarize each measurement variable, by calculating the mean, for each group of activity & student_id

result <- summarise_each(activity_subject, funs(mean), -type)

#in order to sort it, we will convert it back to an ordinary data frame object
result2 <- data.frame(result)

#student_id column is a factor, but with odd levels that won't let us sort numerically.
#by converting to character --> number --> factor again, the levels will be numeric, allow us to sort
result2$subject_id <- as.numeric(as.character(result2$subject_id))
result2$subject_id <- as.factor(result2$subject_id)


#we will now sort by activity, if tie, by student_id
answer <- arrange(result2, activity, subject_id)


#create a text file containing our grouped & summarized data table
write.table(answer, "./answerCourseProject.txt", row.name = FALSE) 


