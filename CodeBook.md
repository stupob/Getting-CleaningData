### Introduction

The model followed by this CodBook is the one given in the Forum contribution by staff:
https://class.coursera.org/getdata-016/forum/thread?thread_id=76

This file describes the data, the variables, and the work that has been performed to clean up the data provided in:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz (2012): "Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine", International Workshop of Ambient Assisted Living (IWAAL 2012), Vitoria-Gasteiz, Spain, December. 

### Data Set Description

Data about 30 human subjects between 19 and 48 years old, who underwent a series of tests wearing a Samsung Galaxy SII. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). 

Using the embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz have been measured. 

The experiments have been video-recorded to label the data manually. The dataset has been randomly partitioned into training data set the test data set with 70% and 30% of the observations respectively. 

#### Each record provides the following information:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- The activity label. 
- An identifier of the subject.

#### The dataset contains the following files:
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

### Variables and variable names

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz and were filtered by a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using a low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Variable details
# Subject
The ID of the test subject.
# Test
The specific test peformed.
# Set
Which set the measurement came from : train or test.

time.BodyAcceleration.mean.X | Mean time for acceleration of body for X direction.
time.BodyAcceleration.mean.Y | Mean time for acceleration of body for Y direction.
time.BodyAcceleration.mean.Z | Mean time for acceleration of body for Z direction.
time.BodyAcceleration.std.X | Standard deviation of time for acceleration of body for X direction.
time.BodyAcceleration.std.Y | Standard deviation of time for acceleration of body for Y direction.
time.BodyAcceleration.std.Z | Standard deviation of time for acceleration of body for Z direction.
time.GravityAcceleration.mean.X | Mean time of acceleration of gravity for X direction.
time.GravityAcceleration.mean.Y | Mean time of acceleration of gravity for Y direction.
time.GravityAcceleration.mean.Z | Mean time of acceleration of gravity for Z direction.
time.GravityAcceleration.std.X | Standard deviation of time of acceleration of gravity for X direction.
time.GravityAcceleration.std.Y | Standard deviation of time of acceleration of gravity for Y direction.
time.GravityAcceleration.std.Z | Standard deviation of time of acceleration of gravity for Z direction.
time.BodyAccelerationJerk.mean.X | Mean time of body acceleration jerk for X direction. 
time.BodyAccelerationJerk.mean.Y | Mean time of body acceleration jerk for Y direction
time.BodyAccelerationJerk.mean.Z | Mean time of body acceleration jerk for Z direction
time.BodyAccelerationJerk.std.X | Standard deviation of time of body acceleration jerk for X direction. 
time.BodyAccelerationJerk.std.Y | Standard deviation of time of body acceleration jerk for Y direction. 
time.BodyAccelerationJerk.std.Z | Standard deviation of time of body acceleration jerk for Z direction. 
time.BodyGyro.mean.X | Mean body gyroscope measurement for X direction.
time.BodyGyro.mean.Y | Mean body gyroscope measurement for Y direction.
time.BodyGyro.mean.Z | Mean body gyroscope measurement for Z direction.
time.BodyGyro.std.X | Standard deviation of body gyroscope measurement for X direction.
time.BodyGyro.std.Y | Standard deviation of body gyroscope measurement for Y direction.
time.BodyGyro.std.Z | Standard deviation of body gyroscope measurement for Z direction.
time.BodyGyroJerk.mean.X | Mean jerk signal of body for X direction.
time.BodyGyroJerk.mean.Y | Mean jerk signal of body for Y direction.
time.BodyGyroJerk.mean.Z | Mean jerk signal of body for Z direction.
time.BodyGyroJerk.std.X | Standard deviation of jerk signal of body for X direction.
time.BodyGyroJerk.std.Y | Standard deviation of jerk signal of body for Y direction.
time.BodyGyroJerk.std.Z | Standard deviation of jerk signal of body for Z direction.
time.BodyAccelerationMagnitude.mean | Mean magnitude of body acceleration.
time.BodyAccelerationMagnitude.std | Standard deviation of magnitude of body acceleration.
time.GravityAccelerationMagnitude.mean | Mean gravity acceleration magnitude.
time.GravityAccelerationMagnitude.std | Standard deviation of gravity acceleration magnitude.
time.BodyAccelerationJerkMagnitude.mean | Mean magnitude of body acceleration jerk.
time.BodyAccelerationJerkMagnitude.std | Standard deviation of magnitude of body acceleration jerk.
time.BodyGyroMagnitude.mean | Mean magnitude of body gyroscope measurement.
time.BodyGyroMagnitude.std | Standard deviation of magnitude of body gyroscope measurement.
time.BodyGyroJerkMagnitude.mean | Mean magnitude of body body gyroscope jerk measurement.
time.BodyGyroJerkMagnitude.std | Standard deviation of magnitude of body body gyroscope jerk measurement.
freq.BodyAcceleration.mean.X | Mean frequency of body acceleration for X direction. 
freq.BodyAcceleration.mean.Y | Mean frequency of body acceleration for Y direction. 
freq.BodyAcceleration.mean.Z | Mean frequency of body acceleration for Z direction. 
freq.BodyAcceleration.std.X | Standard deviation of frequency of body acceleration for X direction. 
freq.BodyAcceleration.std.Y | Standard deviation of frequency of body acceleration for Y direction. 
freq.BodyAcceleration.std.Z | Standard deviation of frequency of body acceleration for Z direction. 
freq.BodyAccelerationJerk.mean.X | Mean frequency of body accerlation jerk for X direction.
freq.BodyAccelerationJerk.mean.Y | Mean frequency of body accerlation jerk for Y direction.
freq.BodyAccelerationJerk.mean.Z | Mean frequency of body accerlation jerk for Z direction.
freq.BodyAccelerationJerk.std.X | Standard deviation frequency of body accerlation jerk for X direction.
freq.BodyAccelerationJerk.std.Y | Standard deviation frequency of body accerlation jerk for Y direction.
freq.BodyAccelerationJerk.std.Z | Standard deviation frequency of body accerlation jerk for Z direction.
freq.BodyGyro.mean.X | Mean frequency of body gyroscope measurement for X direction.
freq.BodyGyro.mean.Y | Mean frequency of body gyroscope measurement for Y direction.
freq.BodyGyro.mean.Z | Mean frequency of body gyroscope measurement for Z direction.
freq.BodyGyro.std.X | Standard deviation frequency of body gyroscope measurement for X direction.
freq.BodyGyro.std.Y | Standard deviation frequency of body gyroscope measurement for Y direction.
freq.BodyGyro.std.Z | Standard deviation frequency of body gyroscope measurement for Z direction.
freq.BodyAccelerationMagnitude.mean | Mean frequency of body acceleration magnitude.
freq.BodyAccelerationMagnitude.std | Standard deviation of frequency of body acceleration magnitude.
freq.BodyBodyAccelerationJerkMagnitude.mean | Mean frequency of body acceleration jerk magnitude.
freq.BodyBodyAccelerationJerkMagnitude.std | Standard deviation of frequency of body acceleration jerk magnitude.
freq.BodyBodyGyroMagnitude.mean | Mean frequency of magnitude of body gyroscope measurement.
freq.BodyBodyGyroMagnitude.std | Standard deviation of frequency of magnitude of body gyroscope measurement.
freq.BodyBodyGyroJerkMagnitude.mean | Mean frequency of magnitude of body gyroscope jerk measurement.
freq.BodyBodyGyroJerkMagnitude.std | Standard deviation of frequency of magnitude of body gyroscope jerk measurement.

## Activity names

"WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"

### Data cleaning

#### Load test and training sets and the activities

The dataset has been downloaded (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), unziped, and stored in the subdirectory `data`.

`read.table` is used to load the data to R environment for the data, the activities and the subject of both test and training datasets.

#### Descriptive activity names to name the activities in the data set

The class labels of the activity names are loaded from the `activity_labels.txt` file and the numbers in the `testData_act` and `trainData_act` data frames are replaced by the names.

#### Labeling the data with activity names

Each data frame of the data set is labeled - using the `features.txt` - with the information about the variables used on the feature vector. 

The `Activity` and `Subject` columns are also named before merging them with the test and train dataset.

#### Merging test and training sets (including the activities)

The `Activity` and `Subject` columns are appended to the test and train data frames, and then are both merged in the file AllData.

#### The mean and standard deviation are calculated for each measurement

(Note: the "non numeric" warning returned for the `Activity` column is not important for the calculations).

#### Creation of a new tidy data set providing the average value of each variable for each activity and each subject.

The output is stored in a fiel called tidy.txt
