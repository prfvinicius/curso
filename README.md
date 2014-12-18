Getting and cleaning data Repo
=====

The script tidy the data collected from the Samsung Galaxy S smartphone.
You must unzip the files from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip in you R directory.

You must load the tidyr, plyr, dplyr and reshape2 packages.

The script has the steps below:

1. Create the "data" data set with all the information.
	1.1. The first step will read the files in your directory, **is important to save unzip files in your R directory**;
	1.2. Merge the x_train.txt, subject_train.txt, y_train.txt, x_test.txt, subject_test.txt and y_test.txt files, and build the "data" data set;
	1.3. Use the features.txt file to give name to the variables. Give names to the Subject and Activity variables;
	1.4. Replace the activity numbers by labels.

2. Extract only the mean and the standard deviation for each measurement.

3. Group the data by each activity and each subject using the group_by function of reshape2 package.

4. Melt the data using as ids Subject and Activity.

5. With the tidy data, set the average of each variable for each activity and each subject using the dcast function. The tidy data set is stored in the "dat5" data set.

6. Save the dat5 data file as dat5.txt file.




