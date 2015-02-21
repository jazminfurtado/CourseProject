# CourseProject
Reposity for Coursera's Getting And Cleaning Data Course Project

The purpose of this ReadMe file is to understand the project and to describe how my script works. 

An experiment was done with 30 participants to measure human activity recognition using smartphones.
These participants had measurements (acceleration and velocity) taken along 3 axials whilst performing
6 different tasks (described in the code book).  These were recorded in multiple data files, as 30% of participants
contributed to test data while 70% contributed to training data.

Among these various files, the data sets used in the analysis are  x_test.txt, y_test.txt, x_train.txt, y_train.txt, features.txt, subject_train.txt, and subject_test.txt

After reading in the files, the R script merges the x and y test data by columns, the x and y train data by columns,
and then merges the test and train data together by rows.  The feature names are then added from the text file to replace 
the default column names.  The columns that do not show the mean and standard deviation of a measurement are then deleted, leaving 66 variables. 
The ID column and activity type columns are then added as the first two columns, creating 68 variables with 10,299 observations.
The activity names, previously numbers, are replaced with verb that the subject is performing for the measurement.  This data set is referenced as Tidy.
Another data set, Tidy2, was created averaging the columns by activity and subject, but is not included in this script.

The script is to be run in the working directory of the unzipped "UCI HAR Dataset" in order to work properly.
There are no packages that are required to be installed for the code to work properly.  After running the script, viewing Tidy 
via View(Tidy) or selecting it from your environments window in R should show the completed dataset.