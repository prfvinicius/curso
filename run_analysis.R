library(tidyr)
library(plyr)
library(dplyr)

# Step 1 - Merges the training and the test sets to create one data set

## This step will create the data frames
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
x_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
x_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
features<-read.table("UCI HAR Dataset/features.txt")
activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt")

## This step will merge the x_train.txt, subject_train.txt, y_train.txt, x_test.txt, subject_test.txt and y_test.txt file
testdata<-cbind(x_test, subject_test, y_test)
traindata<-cbind(x_train, subject_train, y_train)
data<-rbind(traindata, testdata)

## This step will set the variable names for the "data" data frame using the features.txt file
for (i in 1:561){
        colnames(data)[i]<-paste(features[i,2])
}
colnames(data)[562]<-paste("Subject")
colnames(data)[563]<-paste("Activity")
names(data)<-make.names(names(data), unique=TRUE)       

## This step will replace the activity labes in the "data" data frame

data$Activity[data$Activity==1]<-"WALKING"
data$Activity[data$Activity==2]<-"WALKING_UPSTAIRS"
data$Activity[data$Activity==3]<-"WALKING_DOWNSTAIRS"
data$Activity[data$Activity==4]<-"SITTING"
data$Activity[data$Activity==5]<-"STANDING"
data$Activity[data$Activity==6]<-"LAYING"

data<-tbl_df(data)

# Step 2 - Extracts only the mean and the standard deviation for each measurement

temp1<-select(data, contains("mean"))
temp2<-select(data, contains("std"))
temp3<-select(data, Subject)
temp4<-select(data, Activity)
data<-cbind(temp1, temp2, temp3, temp4)
rm(temp1)
rm(temp2)
rm(temp3)
rm(temp4)

# Step 3 - Uses descriptive activity names to name the activities in the data set
## Already done in step 1

# Step 4 - Appropriately labels the data set with descriptive variable names
## Already done in step 1

# Step 5 - From the data set in step 4, creates a second, independent tidy data set with
# the average of each variable for each activity and each subject

## the name of the new data set is data5
library(reshape2)
data5<-data
data5<-group_by(data5,Activity, Subject)
dat5<-melt(data5, id=c("Subject","Activity"))
dat5$value<-as.numeric(dat5$value)
dat5<-dcast(dat5,Subject + Activity~variable,mean)

write.table(dat5, "dat5.txt", row.name=FALSE)
        


