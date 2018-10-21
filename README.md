# Getting and Cleaning Data Course Project

This is my submissions for the Final project in the Getting and Cleaning Data Course on CourseEra.

The script that I wrote is saved in run_analysis.R and it does the following:

1. Downloads the zip file of data from accelerometers from the Samsung Galaxy S smartphone and un-zips it
2. Loads the activity and features information data into tables
3. Loads the datasets for the training and test data from the accelerometers, keeping only columns of mean and standard deviations measures
4. Loads the subject and activity data tables, and combines them with the training and test data
5. Merges the training and test data tables
6. Turns the subject and activity columns in the data table into factors
7. Cleans up column names in the data table
8. Creates a new data-set, called tidydataset, that contains the average of each variable for each activity and each subject
9. Writes this new dataset to a text file, called tidydataset.txt, which is also included in this repository
