The purpose of thid CodeBook file is to describe the variables and touches on the calculations
in my analysis.

** Because the measurements are normalized, they are unitless

The variables and calculations in the R file are as follows:

	x_test,y_test,x_train,y_train: The respective files given in the UCI Har dataset

	mergedTest,mergedTrain: column binding their respective x and y components

	TrainAndTest: the combined test and train data by row binding
	
	features: the read file from the text file
	
	featureNames: pulling only the names from features
	
	meansAndStd: a table of only the means and standard deviations of the measurements using grepl()
	
	ID: a vector of vinded IDs from the train and test data

	tidy: the complete data table of the subject ID, activity type, and the meansAndStd table

The variables in the data table, Tidy, are as follows:

	ID: The  subject/volunteer of the measurements with a range of 1:30

	Activity: One of the six activities the subjects performed :walking, standing, laying, sitting, walking
	upstairs, walking downstairs

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
