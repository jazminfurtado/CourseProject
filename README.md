# CourseProject
Reposity for Coursera's Getting And Cleaning Data Course Project

The purpose of this ReadMe file is to (1) describe how the script works and (2) describe the variables.
(1) After reading in the files, the R script merges the x and y test data by columns, the x and y train data by columns,
and then merges the test and train data together by rows.  The feature names are then added from the text file to replace 
the default column names.  The columns that do not show the mean and standard deviation are then deleted, leaving 66 variables. 
The ID column and activity type columns are then added as the first two columns, creating 68 variables with 10,299 observations.
The activity names, previously numbers, are replaced with verb that the subject is performing for the measurement.
Another data set, Tidy2, was created averaging the columns by activity and subject, but is not included in this script.

(2)The variables in the data table, Tidy, are as follows:

ID: The  subject/volunteer of the measurements with a range of 1:30

Activity: One of the six activities the subjects performed

features

	prefix 't':denotes time, as there are time domain signals

	'BodyAcc': the measured acceleration signal filtered to body acceleration signal

	'GravityAcc': the measured acceleration signal filtered to gravity acceleration

	'Jerk':jerk signals obtained by either the acceleration or angular velocity

	'BodyGyro':signal originating from the gyroscope

	'Mag': the magnitude of the specific signal calculated using the Euclidean norm

	prefix 'f':denotes frequency, as the FFT was applied to some of the signals

	'X','Y','Z': denotes one of the 3 axial signals that was measured

	'mean()': Mean value

	'std()': Standard deviation
	