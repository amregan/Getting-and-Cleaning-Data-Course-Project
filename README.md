# Getting-and-Cleaning-Data-Course-Project

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

## Preview Data

The first thing I did was to read through the metadata files (see Cookbook for details.)  Then I opened the data files to get an idea of how they fit together, how I would merge them and what I would do to make them tidy.

I noticed that the data itself seemed tidy:
- I executed dim() on each dataset - the number of rows in the subject, X and Y files was the same for both the train and test data sets
- I executed anyNA() on the datasets and all returned FALSE
- I executed max() and min() to ensure that all measurements were within the prescribed limits of -1 and 1
- I executed range() the subject id data frame and all subject ids were within the presribed values 1 to 30
- I executed range() on the activity ids and all activity ids were within the prescribed values of 1 to 6

However the feature names were not very tidy:
- the abbreviation t and f would be more clear as time and freq
- many of the feature names looked like functions - mean ()
- the features named std are not clearly standard deviation

## Develop Code

Per course instructions, I created a script named run_analysis.R to do the following:

- First installed the data.table package if necessary

1. Merges the training and the test sets to create one data set.  
- Column headers are added to make the data more readable.  
- Activity labels were stored for later use.   
- It is important not to change the order of the data in the datasets, otherwise the wrong subject and/or activity could be associated with the measures.

2. Extracts only the measurements on the mean and standard deviation for each measurement.  
- Based on the fact that these measurements all have "mean" or "std" in the feature name.  
- Took care to also extract subject id and activity id.

3. Uses descriptive activity names to name the activities in the data set. 
- Matched the activity id number in the data frame with the corresponding word in the data frame previously saved.  

4. Appropriately labels the data set with descriptive variable names. 
- Used sub() function to replace t with time, f with freq
- Removed the characters ()
- Changed std to standard deviation.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- converted the data frame to a data table to make taking the mean easier
- used lapply to take the mean of each measure grouped by subject id and activity
- used write.table() to write the new tidy dataset


## Running the Script

There is no need to download any files before running the script.  The script will download the zip file from the web. 

1. Put run_analysis.R in a folder, then set the folder as your working directory using the setwd() function in RStudio.
2. Run run_analysis.R
3. Note that a sub-directory called "UCI HAR Dataset" has been created by the script and the data files have been loaded in the sub-directory.
4. Verify that a file named avgactivityrecognitiondata.txt has been loaded by the script into the working directory.  This file can be used for further analysis of the data.
