Getting and Cleaning Data Course Project
========================================
### Reference
 
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz (2012): "Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine", International Workshop of Ambient Assisted Living (IWAAL 2012), Vitoria-Gasteiz, Spain, December 

## Getting & Cleaning Data Project

Data about human subjects who underwent a series of tests wearing a Samsung Galaxy SII.

This program converts the data into a tidy dataset, 'tidy.txt' which provides the mean and standard deviation of each measurement for all subjects and tests.

Steps to follow:

1. create a working directory

1. download the data at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. unzip it in a subfolder called 'data'.

3. copy the file `run_analysis.R` to the working directpry and run it.

4. the output file is called tidy.txt. It provides the average value of each variable for each activity and each subject. As there are 6 activities in total and 30 subjects in total, wthe file contains 180 rows with all combinations for each of the 66 features. 

