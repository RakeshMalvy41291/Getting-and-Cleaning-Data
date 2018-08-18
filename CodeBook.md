A)tidy_data.txt

tidy_data.txt contains 180 rows (observations) and 81 columns (variables). The columns are variables with mean values and standard deviation (std) values

1) subject column is numbered from 1 to 30 and each value is repeated 6 times.

2) activity column has 6 different values as listed below-
Walking
Waling_Upstair
Waling_downstairs
Sitting
Standing
Laying

3) THere are totla 66 measurement variable as follows-
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


B) Variables

1) xTrain, yTrain, xTest, yTest, subjectTrain and subjectTest contain the data from the downloaded files.

2) xData, yData and subjectData merge the previous datasets to further analysis.

3) features contains the correct names for the x_data dataset, which are applied to the column names stored in mean_and_std_features, a numeric vector used to extract the desired data.

4) A similar approach is taken with activity names through the activities variable.

5) allDdata merges xData, yData and subjectData in a big dataset.

6) Finally, tidy_data contains the relevant averages which will be later stored in a .txt file. ddply() from the plyr package is used to apply colMeans() and ease the development.
