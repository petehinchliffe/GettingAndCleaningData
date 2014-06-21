CodeBook
======================

Data Set 1
-----------
*variable out1 (saved in fullDataSet.csv)*
**Codebook**
Data consists of 67 variables, as follows:
1.	activity - The activity as a factor with the following values: 1 WALKING,2 WALKING_UPSTAIRS,3 WALKING_DOWNSTAIRS,4 SITTING,5 STANDING,6 LAYING
2-67 The following columns as described in features_info.txt
	tBodyAcc-mean()-X 
	tBodyAcc-mean()-Y
	tBodyAcc-mean()-Z
	tBodyAcc-std()-X
	tBodyAcc-std()-Y
	tBodyAcc-std()-Z
	tGravityAcc-mean()-X
	tGravityAcc-mean()-Y
	tGravityAcc-mean()-Z
	tGravityAcc-std()-X
	tGravityAcc-std()-Y
	tGravityAcc-std()-Z
	tBodyAccJerk-mean()-X
	tBodyAccJerk-mean()-Y
	tBodyAccJerk-mean()-Z
	tBodyAccJerk-std()-X
	tBodyAccJerk-std()-Y
	tBodyAccJerk-std()-Z
	tBodyGyro-mean()-X
	tBodyGyro-mean()-Y
	tBodyGyro-mean()-Z
	tBodyGyro-std()-X
	tBodyGyro-std()-Y
	tBodyGyro-std()-Z
	tBodyGyroJerk-mean()-X
	tBodyGyroJerk-mean()-Y
	tBodyGyroJerk-mean()-Z
	tBodyGyroJerk-std()-X
	tBodyGyroJerk-std()-Y
	tBodyGyroJerk-std()-Z
	tBodyAccMag-mean()
	tBodyAccMag-std()
	tGravityAccMag-mean()
	tGravityAccMag-std()
	tBodyAccJerkMag-mean()
	tBodyAccJerkMag-std()
	tBodyGyroMag-mean()
	tBodyGyroMag-std()
	tBodyGyroJerkMag-mean()
	tBodyGyroJerkMag-std()
	fBodyAcc-mean()-X
	fBodyAcc-mean()-Y
	fBodyAcc-mean()-Z
	fBodyAcc-std()-X
	fBodyAcc-std()-Y
	fBodyAcc-std()-Z
	fBodyAccJerk-mean()-X
	fBodyAccJerk-mean()-Y
	fBodyAccJerk-mean()-Z
	fBodyAccJerk-std()-X
	fBodyAccJerk-std()-Y
	fBodyAccJerk-std()-Z
	fBodyGyro-mean()-X
	fBodyGyro-mean()-Y
	fBodyGyro-mean()-Z
	fBodyGyro-std()-X
	fBodyGyro-std()-Y
	fBodyGyro-std()-Z
	fBodyAccMag-mean()
	fBodyAccMag-std()
	fBodyBodyAccJerkMag-mean()
	fBodyBodyAccJerkMag-std()
	fBodyBodyGyroMag-mean()
	fBodyBodyGyroMag-std()
	fBodyBodyGyroJerkMag-mean()
	fBodyBodyGyroJerkMag-std()

**Steps to produce data set 1**
- The data from the x_test and x_train files are read from files and combined into a single set.  
- The columns in this dataset are then labelled using the data from the features.txt file.  
- Columns whose labels do no include the string mean() or sd() are removed, leaving 66 columns.  
- The activity numbers for each row are read from the file y_train.txt, labelled with descriptions, and combined with the dataset.   


Data Set 2
------------
*variable out2 (saved in aggregatedDataSet.csv)*
**Codebook for data set 2**
Data constists of 68 columns:
activity - the activity ()
subject - the subject to whom these measurements apply
Columns 3-68 : The mean value for each subject and activity of the following columns as described in features_info.txt
	tBodyAcc-mean()-X 
	tBodyAcc-mean()-Y
	tBodyAcc-mean()-Z
	tBodyAcc-std()-X
	tBodyAcc-std()-Y
	tBodyAcc-std()-Z
	tGravityAcc-mean()-X
	tGravityAcc-mean()-Y
	tGravityAcc-mean()-Z
	tGravityAcc-std()-X
	tGravityAcc-std()-Y
	tGravityAcc-std()-Z
	tBodyAccJerk-mean()-X
	tBodyAccJerk-mean()-Y
	tBodyAccJerk-mean()-Z
	tBodyAccJerk-std()-X
	tBodyAccJerk-std()-Y
	tBodyAccJerk-std()-Z
	tBodyGyro-mean()-X
	tBodyGyro-mean()-Y
	tBodyGyro-mean()-Z
	tBodyGyro-std()-X
	tBodyGyro-std()-Y
	tBodyGyro-std()-Z
	tBodyGyroJerk-mean()-X
	tBodyGyroJerk-mean()-Y
	tBodyGyroJerk-mean()-Z
	tBodyGyroJerk-std()-X
	tBodyGyroJerk-std()-Y
	tBodyGyroJerk-std()-Z
	tBodyAccMag-mean()
	tBodyAccMag-std()
	tGravityAccMag-mean()
	tGravityAccMag-std()
	tBodyAccJerkMag-mean()
	tBodyAccJerkMag-std()
	tBodyGyroMag-mean()
	tBodyGyroMag-std()
	tBodyGyroJerkMag-mean()
	tBodyGyroJerkMag-std()
	fBodyAcc-mean()-X
	fBodyAcc-mean()-Y
	fBodyAcc-mean()-Z
	fBodyAcc-std()-X
	fBodyAcc-std()-Y
	fBodyAcc-std()-Z
	fBodyAccJerk-mean()-X
	fBodyAccJerk-mean()-Y
	fBodyAccJerk-mean()-Z
	fBodyAccJerk-std()-X
	fBodyAccJerk-std()-Y
	fBodyAccJerk-std()-Z
	fBodyGyro-mean()-X
	fBodyGyro-mean()-Y
	fBodyGyro-mean()-Z
	fBodyGyro-std()-X
	fBodyGyro-std()-Y
	fBodyGyro-std()-Z
	fBodyAccMag-mean()
	fBodyAccMag-std()
	fBodyBodyAccJerkMag-mean()
	fBodyBodyAccJerkMag-std()
	fBodyBodyGyroMag-mean()
	fBodyBodyGyroMag-std()
	fBodyBodyGyroJerkMag-mean()
	fBodyBodyGyroJerkMag-std()

**Steps to produce data set 2**
- Combine the data from the subject_test and subject_train files.  
- Create a new dataset combining the subject column with the data in out1 
- Aggregate the data by activity and subject, using the mean() function to return the average of the aggregated values in the dataseet.  
