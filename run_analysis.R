## The purpose of this script is to combine and reformat individual data files into a tidy data set 
##   - data was obtained from Center for Machine Learning and Intelligent Systems
##   - it represents data collected from accelerometers from the Samsung Galaxy S smartphone
##   - a group of 30 volunteers performed six activities while wearing the smart phone
##   -   (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
## The individual data files contain the data pulled from the smart phones of each volunteer
##   - training data and test data are stored in seperate files
##   - column headers and subject ids are also stored in seperate files
##   - more about the data sources can be found in ReadMe and Codebook
## All files are combined into one dataset
##   - the dataset is reformatted to make it tidy - more in ReadMe and Codebook

# Set up - install packages, download zip file, read files common to test and train

    #install 
    if (!require("data.table")) {
        install.packages("data.table")
    }
    require("data.table")

    #download datafile and unzip
    tempfile <- tempfile()
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile=tempfile, mode="wb")  # wb will uncompress the file
    unzip(tempfile)
    file.remove(tempfile) # cleanup
    
    #read these two files that are common to both train and test
    features <- read.table("UCI HAR Dataset/features.txt")
    activitylabels <- read.table("UCI HAR Dataset/activity_labels.txt")

# 1. Merge the training and the test sets to create one data set
    
    # first read each training dataset, add column headers and combine all columns into one data frame
    subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
    colnames(subjecttrain) <- "subjectid"
    xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
    colnames(xtrain) <- features [,2]
    ytrain <- read.table("UCI HAR Dataset/train/Y_train.txt")
    colnames(ytrain) <- "activity"
    alltrain <- cbind (subjecttrain, ytrain, xtrain)

    # do the same for the test datasets
    subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")
    colnames(subjecttest) <- "subjectid"
    xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
    colnames(xtest) <- features [,2]
    ytest <- read.table("UCI HAR Dataset/test/Y_test.txt")
    colnames(ytest) <- "activity"
    alltest <- cbind (subjecttest, ytest, xtest)
    
    #vertically combine data from both test and training into one dataframe
    allboth <- rbind(alltrain, alltest)

# 2. Extract only the measurements on the mean and standard deviation for each measurement

    meanandstdonly <- allboth[,grepl("mean\\(|std\\(|activity|subject",names(allboth))]

# 3. Change activity id to activity name to be more descriptive

    meanandstdonly$activity <- activitylabels$V2[match(meanandstdonly$activity, activitylabels$V1)]
    
# 4. Change variable names to be more descriptive.    
    
    names(meanandstdonly) <- sub("^t","time",names(meanandstdonly),)
    names(meanandstdonly) <- sub("^f","freq",names(meanandstdonly),)
    names(meanandstdonly) <- sub("\\(\\)","",names(meanandstdonly),)
    names(meanandstdonly) <- sub("std","stddev",names(meanandstdonly),)
    
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

    # convert to data table
    setDT(meanandstdonly) 
    # collapse data to show average of each feature for each unique subjectid/activity combination
    tidyDT <- meanandstdonly[, lapply(.SD, mean), by=.(subjectid, activity)]

# Wrap Up - write.table() using row.name=FALSE so it can be uploaded to Coursera
    
    write.table(tidyDT, file="avgactivityrecognitiondata.txt", row.name=FALSE, append=FALSE) # .txt using row.name=FALSE

