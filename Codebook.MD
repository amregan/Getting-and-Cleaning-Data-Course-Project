# Codebook

This Codebook describes the data, variables, and transformations used to create the Tidy Dataset submit for the Getting and Cleaning Data Course Project.  

## SOURCE DATA 

### Source Data Location

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

For more information about this dataset contact: activityrecognition@smartlab.ws

### License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

### Source Data Overview

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### Source Data Sets Used

The source data zip file is loaded via the run_analysis.R code.  The following files are unzipped and processed:
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

##
## OUTPUT DATA

The following fields are contained in the ouput data set:

|Variable|Type|Minumum|Maximum|Description|
|--------|:----:|:-------:|:-------:|-----------|
|	subjectid	|	Numeric	|	1	|	30	|	Identifies the subject who performed the activity. Its range is from 1 to 30.	|
|	activity	|	Character	|	NA	|	NA	|	Identifies the activity being performed and measured.  	|
|	timeBodyAcc-mean-X	|	Numeric	|	-1	|	1	|	This mean comes from the accelerometer 3-axial raw signals tAcc-XYZ in the X direction. The time domain signal was captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 	|
|	timeBodyAcc-mean-Y	|	Numeric	|	-1	|	1	|	This mean comes from the gyroscope 3-axial raw signals tGyro-XYZ in the Y direction. The time domain signal was captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 	|
|	timeBodyAcc-mean-Z	|	Numeric	|	-1	|	1	|	This mean comes from the gyroscope 3-axial raw signals tGyro-XYZ in the z direction. The time domain signal was captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 	|
|	timeBodyAcc-stddev-X	|	Numeric	|	-1	|	1	|	This standard deviation comes from the accelerometer 3-axial raw signals tAcc-XYZ in the X direction. The time domain signal was captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 	|
|	timeBodyAcc-stddev-Y	|	Numeric	|	-1	|	1	|	This standard deviation comes from the gyroscope 3-axial raw signals tGyro-XYZ in the Y direction. The time domain signal was captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 	|
|	timeBodyAcc-stddev-Z	|	Numeric	|	-1	|	1	|	This standard deviation comes from the gyroscope 3-axial raw signals tGyro-XYZ in the z direction. The time domain signal was captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 	|
|	timeGravityAcc-mean-X	|	Numeric	|	-1	|	1	|	This mean comes from the accelerometer 3-axial raw signals tAcc-XYZ in the X direction. The time domain signal was captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 	|
|	timeGravityAcc-mean-Y	|	Numeric	|	-1	|	1	|	This mean comes from the gyroscope 3-axial raw signals tGyro-XYZ in the Y direction. The time domain signal was captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 	|
|	timeGravityAcc-mean-Z	|	Numeric	|	-1	|	1	|	This mean comes from the gyroscope 3-axial raw signals tGyro-XYZ in the z direction. The time domain signal was captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 	|
|	timeGravityAcc-stddev-X	|	Numeric	|	-1	|	1	|	This standard deviation comes from the accelerometer 3-axial raw signals tAcc-XYZ in the X direction. The time domain signal was captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 	|
|	timeGravityAcc-stddev-Y	|	Numeric	|	-1	|	1	|	This standard deviation comes from the gyroscope 3-axial raw signals tGyro-XYZ in the Y direction. The time domain signal was captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 	|
|	timeGravityAcc-stddev-Z	|	Numeric	|	-1	|	1	|	This standard deviation comes from the gyroscope 3-axial raw signals tGyro-XYZ in the z direction. The time domain signal was captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 	|
|	timeBodyAccJerk-mean-X	|	Numeric	|	-1	|	1	|	Mean of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals in the X direction.	|
|	timeBodyAccJerk-mean-Y	|	Numeric	|	-1	|	1	|	Mean of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals in the Y direction.	|
|	timeBodyAccJerk-mean-Z	|	Numeric	|	-1	|	1	|	Mean of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals in the Z direction.	|
|	timeBodyAccJerk-stddev-X	|	Numeric	|	-1	|	1	|	Standard deviation of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals in the X direction.	|
|	timeBodyAccJerk-stddev-Y	|	Numeric	|	-1	|	1	|	Standard deviation of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals in the Y direction.	|
|	timeBodyAccJerk-stddev-Z	|	Numeric	|	-1	|	1	|	Standard deviation of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals in the Z direction.	|
|	timeBodyGyro-mean-X	|	Numeric	|	-1	|	1	|	This mean comes from the gyroscope 3-axial raw signals tGyro-XYZ. The time domain signal was captured in the X direction at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 	|
|	timeBodyGyro-mean-Y	|	Numeric	|	-1	|	1	|	This mean comes from the gyroscope 3-axial raw signals tGyro-XYZ. The time domain signal was captured in the Y direction at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 	|
|	timeBodyGyro-mean-Z	|	Numeric	|	-1	|	1	|	This mean comes from the gyroscope 3-axial raw signals tGyro-XYZ. The time domain signal was captured in the Z direction at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 	|
|	timeBodyGyro-stddev-X	|	Numeric	|	-1	|	1	|	This standard deviation comes from the gyroscope 3-axial raw signals tGyro-XYZ. The time domain signal was captured in the X direction at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 	|
|	timeBodyGyro-stddev-Y	|	Numeric	|	-1	|	1	|	This standard deviation comes from the gyroscope 3-axial raw signals tGyro-XYZ. The time domain signal was captured in the Y direction at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 	|
|	timeBodyGyro-stddev-Z	|	Numeric	|	-1	|	1	|	This standard deviation comes from the gyroscope 3-axial raw signals tGyro-XYZ. The time domain signal was captured in the Z direction at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 	|
|	timeBodyGyroJerk-mean-X	|	Numeric	|	-1	|	1	|	Mean of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals in the X direction.	|
|	timeBodyGyroJerk-mean-Y	|	Numeric	|	-1	|	1	|	Mean of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals in the Y direction.	|
|	timeBodyGyroJerk-mean-Z	|	Numeric	|	-1	|	1	|	Mean of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals in the Z direction.	|
|	timeBodyGyroJerk-stddev-X	|	Numeric	|	-1	|	1	|	Standard deviation of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals in the X direction.	|
|	timeBodyGyroJerk-stddev-Y	|	Numeric	|	-1	|	1	|	Standard deviation of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals in the Y direction.	|
|	timeBodyGyroJerk-stddev-Z	|	Numeric	|	-1	|	1	|	Standard deviation of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals in the Z direction.	|
|	timeBodyAccMag-mean	|	Numeric	|	-1	|	1	|	Mean of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.	|
|	timeBodyAccMag-stddev	|	Numeric	|	-1	|	1	|	Standard deviation of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.	|
|	timeGravityAccMag-mean	|	Numeric	|	-1	|	1	|	Mean of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.	|
|	timeGravityAccMag-stddev	|	Numeric	|	-1	|	1	|	Standard deviation of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.	|
|	timeBodyAccJerkMag-mean	|	Numeric	|	-1	|	1	|	Mean of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.	|
|	timeBodyAccJerkMag-stddev	|	Numeric	|	-1	|	1	|	Standard deviation of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.	|
|	timeBodyGyroMag-mean	|	Numeric	|	-1	|	1	|	Mean of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.	|
|	timeBodyGyroMag-stddev	|	Numeric	|	-1	|	1	|	Standard deviation of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.	|
|	timeBodyGyroJerkMag-mean	|	Numeric	|	-1	|	1	|	Mean of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.	|
|	timeBodyGyroJerkMag-stddev	|	Numeric	|	-1	|	1	|	Standard deviation of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.	|
|	freqBodyAcc-mean-X	|	Numeric	|	-1	|	1	|	Mean of frequency domain signal in the X direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyAcc-mean-Y	|	Numeric	|	-1	|	1	|	Mean of frequency domain signal in the Y direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyAcc-mean-Z	|	Numeric	|	-1	|	1	|	Mean of frequency domain signal in the Z direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyAcc-stddev-X	|	Numeric	|	-1	|	1	|	Standard deviation of frequency domain signal in the X direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyAcc-stddev-Y	|	Numeric	|	-1	|	1	|	Standard deviation of frequency domain signal in the Y direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyAcc-stddev-Z	|	Numeric	|	-1	|	1	|	Standard deviation of frequency domain signal in the Z direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyAccJerk-mean-X	|	Numeric	|	-1	|	1	|	Mean of frequency domain signal in the X direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyAccJerk-mean-Y	|	Numeric	|	-1	|	1	|	Mean of frequency domain signal in the Y direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyAccJerk-mean-Z	|	Numeric	|	-1	|	1	|	Mean of frequency domain signal in the Z direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyAccJerk-stddev-X	|	Numeric	|	-1	|	1	|	Standard deviation of frequency domain signal in the X direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyAccJerk-stddev-Y	|	Numeric	|	-1	|	1	|	Standard deviation of frequency domain signal in the Y direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyAccJerk-stddev-Z	|	Numeric	|	-1	|	1	|	Standard deviation of frequency domain signal in the Z direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyGyro-mean-X	|	Numeric	|	-1	|	1	|	Mean of frequency domain signal in the X direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyGyro-mean-Y	|	Numeric	|	-1	|	1	|	Mean of frequency domain signal in the Y direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyGyro-mean-Z	|	Numeric	|	-1	|	1	|	Mean of frequency domain signal in the Z direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyGyro-stddev-X	|	Numeric	|	-1	|	1	|	Standard deviation of frequency domain signal in the X direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyGyro-stddev-Y	|	Numeric	|	-1	|	1	|	Standard deviation of frequency domain signal in the Y direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyGyro-stddev-Z	|	Numeric	|	-1	|	1	|	Standard deviation of frequency domain signal in the Z direction.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyAccMag-mean	|	Numeric	|	-1	|	1	|	Mean of requency domain signal.  	|
|	freqBodyAccMag-stddev	|	Numeric	|	-1	|	1	|	Mean of requency domain signal.  	|
|	freqBodyBodyAccJerkMag-mean	|	Numeric	|	-1	|	1	|	Mean of frequency domain signal.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyBodyAccJerkMag-stddev	|	Numeric	|	-1	|	1	|	Standard deviation of frequency domain signal.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyBodyGyroMag-mean	|	Numeric	|	-1	|	1	|	Mean of frequency domain signal.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyBodyGyroMag-stddev	|	Numeric	|	-1	|	1	|	Standard deviation of frequency domain signal.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyBodyGyroJerkMag-mean	|	Numeric	|	-1	|	1	|	Mean of frequency domain signal.  Fast Fourier Transform (FFT) was applied.	|
|	freqBodyBodyGyroJerkMag-stddev	|	Numeric	|	-1	|	1	|	Standard deviation of frequency domain signal.  Fast Fourier Transform (FFT) was applied.	|

##
## WORKING DATA:

The following fields are used in the run_analysis.R code, they appear in the order in which they are used:

|Variable|Type|Minumum|Maximum|Description|
|--------|:----:|:-------:|:-------:|-----------|
|tempfile       |tempfile()   |  NA     |  NA     |Used to download and unzip source data file from the web.           |
|features|data frame|NA|NA|Stores values from features.txt.  There is one row for each variable in the xtrain and xtest datasets. Each row is unique.  The second column contains the variable name and is used in colnames() function.  The matching is done by position and relies on the accuracy of the source data.|
|activitylabels|data frame|NA|NA|Stores values from activity_labels.txt.  There is one row for each activity in the xtrain and xtest datasets.  6 possible values.  The first column contains the activity id, the second column translates the id into a readable format.  Example: 1, WALKING.  The first column is matched to the activity id in the xtrain and xtest datasets, then the data in the second column is used in the output dataset.    
|subjecttrain|data frame|NA|NA|Stores values from subject_train.txt.  Each row contains a subject id.  There is one row in the subject training dataset for each row in the xtrain dataset.  It identifies the subject that produced the data for each training dataset row. 
|xtrain|data frame|NA|NA|Stores values from X_train.txt.  Each row contains the measurements from one recording.  There is one row for each time data is collected.  There are multiple rows for each subject for each activity.|
|ytrain|data frame|NA|NA|Stores values from Y_train.txt.  Each row contains an activity code - possible values 1 through 6.   There is one row in the Y train dataset for each row in the X train dataset.  It identifies the activity being performed when data was collected.|    
|alltrain|data frame|NA|NA|Vertically combines the columns from subjecttrain, ytrain and xtrain to create one dataset.  Used later to combine with the test data into a complete dataset for the experiment.|  
|subjecttest|data frame|NA|NA|Stores values from subject_test.txt.  Each row contains a subject id.  There is one row in the subject test dataset for each row in the xtest dataset.  It identifies the subject that produced the data for each test dataset row. 
|xtest|data frame|NA|NA|Stores values from X_test.txt.  Each row contains the measurements from one recording.  There is one row for each time data is collected.  There are multiple rows for each subject for each activity.|
|ytest|data frame|NA|NA|Stores values from Y_test.txt.  Each row contains an activity code - possible values 1 through 6.   There is one row in the Y test dataset for each row in the X test dataset.  It identifies the activity being performed when data was collected.|    
|alltest|data frame|NA|NA|Vertically combines the columns from subjecttest, ytest and xtest to create one dataset.  Used later to combine with the train data into a complete dataset for the experiment.|  
|allboth|data frame|NA|NA|Rows from alltrain and alltest horizontally combined into one dataframe.  Makes further processing esier with all data in a single dataframe|
|meanandstdonly|data frame|NA|NA|A subset of allboth, with only features of interest - those that measure mean or standard deviation.  The activity id data is replaced with the text label from the activitylabel dataframe.  Columns are renamed to make them more meaningful.|
|tidyDT|data table|NA|NA|The meanandstdonly dataframe is converted to a data table to make it easier to take the average of the measurements.  The average value of each measurement is calculated by subject id and by activity and stored in this data table.  This data table is written to the output file. |



