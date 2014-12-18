CodeBook for the tidy dataset
=============================

Data source
-----------
This dataset is represent data collected from the accelerometers from the Samsung Galaxy S smartphone. The original file can be downloaded from here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Feature Selection 
-----------------
At the README file you could find the steps that have been done in the script. You also can get the name of the tidy data set stored in your directory after run the script.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

In short, for this derived dataset, these signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated for this data set from these signals are: 

* mean(): Mean value
* std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

Other estimates have been removed for the purpose of this excercise.


The information for each variable of the tidy data set is described below:


|                     Variable              |                                             Description                                        |      Class  |
|       ------------------------------------|                          --------------------------------------------------                    |     --------|
|       Subject                             |      An id number identifying each person                                                      |     Integer |
|       Activity                            |      The activity the person was doing at the moment the data was collected                    |     Characte|
|       tBodyAcc.mean...X                   |      The mean for each person and each activity for the tBodyAcc X-axis variable               |     numeric |
|       tBodyAcc.mean...Y                   |      The mean for each person and each activity for the tBodyAcc Y-axis variable               |     numeric |
|       tBodyAcc.mean...Z                   |      The mean for each person and each activity for the tBodyAcc Z-axis variable               |     numeric |
|       tGravityAcc.mean...X                |      The mean for each person and each activity for the tGravityAcc X-axis variable            |     numeric |
|       tGravityAcc.mean...Y                |      The mean for each person and each activity for the tGravityAcc Y-axis variable            |     numeric |
|       tGravityAcc.mean...Z                |      The mean for each person and each activity for the tGravityAcc Z-axis variable            |     numeric |
|       tBodyAccJerk.mean...X               |      The mean for each person and each activity for the tBodyAccJerk X-axis variable           |     numeric |
|       tBodyAccJerk.mean...Y               |      The mean for each person and each activity for the tBodyAccJerk Y-axis variable           |     numeric |
|       tBodyAccJerk.mean...Z               |      The mean for each person and each activity for the tBodyAccJerk Z-axis variable           |     numeric |
|       tBodyGyro.mean...X                  |      The mean for each person and each activity for the tBodyGyro X-axis variable              |     numeric |
|       tBodyGyro.mean...Y                  |      The mean for each person and each activity for the tBodyGyro Y-axis variable              |     numeric |
|       tBodyGyro.mean...Z                  |      The mean for each person and each activity for the tBodyGyro Z-axis variable              |     numeric |
|       tBodyGyroJerk.mean...X              |      The mean for each person and each activity for the tBodyGyroJerk X-axis variable          |     numeric |
|       tBodyGyroJerk.mean...Y              |      The mean for each person and each activity for the tBodyGyroJerk Y-axis variable          |     numeric |
|       tBodyGyroJerk.mean...Z              |      The mean for each person and each activity for the tBodyGyroJerk Z-axis variable          |     numeric |
|       tBodyAccMag.mean..                  |      The mean for each person and each activity for the tBodyAccMag variable                   |     numeric |
|       tGravityAccMag.mean..               |      The mean for each person and each activity for the tGravityAccMag variable                |     numeric |
|       tBodyAccJerkMag.mean..              |      The mean for each person and each activity for the tBodyAccJerkMag variable               |     numeric |
|       tBodyGyroMag.mean..                 |      The mean for each person and each activity for the tBodyGyroMag variable                  |     numeric |
|       tBodyGyroJerkMag.mean..             |      The mean for each person and each activity for the tBodyGyroJerkMag variable              |     numeric |
|       fBodyAcc.mean...X                   |      The mean for each person and each activity for the fBodyAcc X-axis variable               |     numeric |
|       fBodyAcc.mean...Y                   |      The mean for each person and each activity for the fBodyAcc Y-axis variable               |     numeric |
|       fBodyAcc.mean...Z                   |      The mean for each person and each activity for the fBodyAcc Z-axis variable               |     numeric |
|       fBodyAcc.meanFreq...X               |      The mean for each person and each activity for the fBodyAcc.meanFreq X-axis variable      |     numeric |
|       fBodyAcc.meanFreq...Y               |      The mean for each person and each activity for the fBodyAcc.meanFreq Y-axis variable      |     numeric |
|       fBodyAcc.meanFreq...Z               |      The mean for each person and each activity for the fBodyAcc.meanFreq Z-axis variable      |     numeric |
|       fBodyAccJerk.mean...X               |      The mean for each person and each activity for the fBodyAccJerk.mean X-axis variable      |     numeric |
|       fBodyAccJerk.mean...Y               |      The mean for each person and each activity for the fBodyAccJerk.mean Y-axis variable      |     numeric |
|       fBodyAccJerk.mean...Z               |      The mean for each person and each activity for the fBodyAccJerk.mean Z-axis variable      |     numeric |
|       fBodyAccJerk.meanFreq...X           |      The mean for each person and each activity for the fBodyAccJerk.meanFreq X-axis variable  |     numeric |
|       fBodyAccJerk.meanFreq...Y           |      The mean for each person and each activity for the fBodyAccJerk.meanFreq Y-axis variable  |     numeric |
|       fBodyAccJerk.meanFreq...Z           |      The mean for each person and each activity for the fBodyAccJerk.meanFreq Z-axis variable  |     numeric |
|       fBodyGyro.mean...X                  |      The mean for each person and each activity for the fBodyGyro.mean X-axis variable         |     numeric |
|       fBodyGyro.mean...Y                  |      The mean for each person and each activity for the fBodyGyro.mean Y-axis variable         |     numeric |
|       fBodyGyro.mean...Z                  |      The mean for each person and each activity for the fBodyGyro.mean Z-axis variable         |     numeric |
|       fBodyGyro.meanFreq...X              |      The mean for each person and each activity for the fBodyGyro.meanFreq X-axis variable     |     numeric |
|       fBodyGyro.meanFreq...Y              |      The mean for each person and each activity for the fBodyGyro.meanFreq Y-axis variable     |     numeric |
|       fBodyGyro.meanFreq...Z              |      The mean for each person and each activity for the fBodyGyro.meanFreq Z-axis variable     |     numeric |
|       fBodyAccMag.mean..                  |      The mean for each person and each activity for the fBodyAccMag.mean variable              |     numeric |
|       fBodyAccMag.meanFreq..              |      The mean for each person and each activity for the fBodyAccMag.meanFreq variable          |     numeric |
|       fBodyBodyAccJerkMag.mean..          |      The mean for each person and each activity for the fBodyBodyAccJerkMag.mean variable      |     numeric |
|       fBodyBodyAccJerkMag.meanFreq..      |      The mean for each person and each activity for the fBodyBodyAccJerkMag.meanFreq variable  |     numeric |
|       fBodyBodyGyroMag.mean..             |      The mean for each person and each activity for the fBodyBodyGyroMag.mean variable         |     numeric |
|       fBodyBodyGyroMag.meanFreq..         |      The mean for each person and each activity for the fBodyBodyGyroMag.meanFreq variable     |     numeric |
|       fBodyBodyGyroJerkMag.mean..         |      The mean for each person and each activity for the fBodyBodyGyroJerkMag.mean variable     |     numeric |
|       fBodyBodyGyroJerkMag.meanFreq..     |      The mean for each person and each activity for the fBodyBodyGyroJerkMag.meanFreq variable |     numeric |
|       angle.tBodyAccMean.gravity.         |      The mean for each person and each activity for the angle.tBodyAccMean.gravity variable    |     numeric |
|       angle.tBodyAccJerkMean..gravityMean.|      The mean for each person and each activity for the angle.tBodyAccJerkMean..gravityMean var|     numeric |
|       angle.tBodyGyroMean.gravityMean.    |      The mean for each person and each activity for the angle.tBodyGyroMean.gravityMean variabl|     numeric |
|       angle.tBodyGyroJerkMean.gravityMean.|      The mean for each person and each activity for the angle.tBodyGyroJerkMean.gravityMean var|     numeric |
|       angle.X.gravityMean.                |      The mean for each person and each activity for the angle.X.gravityMean variable           |     numeric |
|       angle.Y.gravityMean.                |      The mean for each person and each activity for the angle.Y.gravityMean variable           |     numeric |
|       angle.Z.gravityMean.                |      The mean for each person and each activity for the angle.Z.gravityMean variable           |     numeric |
|       tBodyAcc.std...X                    |      The mean for each person and each activity for the tBodyAcc.std X-axis variable           |     numeric |
|       tBodyAcc.std...Y                    |      The mean for each person and each activity for the tBodyAcc.std Y-axis variable           |     numeric |
|       tBodyAcc.std...Z                    |      The mean for each person and each activity for the tBodyAcc.std Z-axis variable           |     numeric |
|       tGravityAcc.std...X                 |      The mean for each person and each activity for the tGravityAcc.std X-axis variable        |     numeric |
|       tGravityAcc.std...Y                 |      The mean for each person and each activity for the tGravityAcc.std Y-axis variable        |     numeric |
|       tGravityAcc.std...Z                 |      The mean for each person and each activity for the tGravityAcc.std Z-axis variable        |     numeric |
|       tBodyAccJerk.std...X                |      The mean for each person and each activity for the tBodyAccJerk.std X-axis variable       |     numeric |
|       tBodyAccJerk.std...Y                |      The mean for each person and each activity for the tBodyAccJerk.std Y-axis variable       |     numeric |
|       tBodyAccJerk.std...Z                |      The mean for each person and each activity for the tBodyAccJerk.std Z-axis variable       |     numeric |
|       tBodyGyro.std...X                   |      The mean for each person and each activity for the tBodyGyro.std X-axis variable          |     numeric |
|       tBodyGyro.std...Y                   |      The mean for each person and each activity for the tBodyGyro.std Y-axis variable          |     numeric |
|       tBodyGyro.std...Z                   |      The mean for each person and each activity for the tBodyGyro.std Z-axis variable          |     numeric |
|       tBodyGyroJerk.std...X               |      The mean for each person and each activity for the tBodyGyroJerk.std X-axis variable      |     numeric |
|       tBodyGyroJerk.std...Y               |      The mean for each person and each activity for the tBodyGyroJerk.std Y-axis variable      |     numeric |
|       tBodyGyroJerk.std...Z               |      The mean for each person and each activity for the tBodyGyroJerk.std Z-axis variable      |     numeric |
|       tBodyAccMag.std..                   |      The mean for each person and each activity for the tBodyAccMag.std variable               |     numeric |
|       tGravityAccMag.std..                |      The mean for each person and each activity for the tGravityAccMag.std variable            |     numeric |
|       tBodyAccJerkMag.std..               |      The mean for each person and each activity for the tBodyAccJerkMag.std variable           |     numeric |
|       tBodyGyroMag.std..                  |      The mean for each person and each activity for the tBodyGyroMag.std variable              |     numeric |
|       tBodyGyroJerkMag.std..              |      The mean for each person and each activity for the tBodyGyroJerkMag.std variable          |     numeric |
|       fBodyAcc.std...X                    |      The mean for each person and each activity for the fBodyAcc.std X-axis variable           |     numeric |
|       fBodyAcc.std...Y                    |      The mean for each person and each activity for the fBodyAcc.std Y-axis variable           |     numeric |
|       fBodyAcc.std...Z                    |      The mean for each person and each activity for the fBodyAcc.std Z-axis variable           |     numeric |
|       fBodyAccJerk.std...X                |      The mean for each person and each activity for the fBodyAccJerk.std X-axis variable       |     numeric |
|       fBodyAccJerk.std...Y                |      The mean for each person and each activity for the fBodyAccJerk.std Y-axis variable       |     numeric |
|       fBodyAccJerk.std...Z                |      The mean for each person and each activity for the fBodyAccJerk.std Z-axis variable       |     numeric |
|       fBodyGyro.std...X                   |      The mean for each person and each activity for the fBodyGyro.std X-axis variable          |     numeric |
|       fBodyGyro.std...Y                   |      The mean for each person and each activity for the fBodyGyro.std Y-axis variable          |     numeric |
|       fBodyGyro.std...Z                   |      The mean for each person and each activity for the fBodyGyro.std Z-axis variable          |     numeric |
|       fBodyAccMag.std..                   |      The mean for each person and each activity for the fBodyAccMag.std variable               |     numeric |
|       fBodyBodyAccJerkMag.std..           |      The mean for each person and each activity for the fBodyBodyAccJerkMag.std variable       |     numeric |
|       fBodyBodyGyroMag.std..              |      The mean for each person and each activity for the fBodyBodyGyroMag.std variable          |     numeric |
|       fBodyBodyGyroJerkMag.std..          |      The mean for each person and each activity for the fBodyBodyGyroJerkMag.std variable      |     numeric |



