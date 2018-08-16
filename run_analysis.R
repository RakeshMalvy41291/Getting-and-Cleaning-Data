## Step 1- Merge the train and test sets to create one data set

# Read X_train.txt, Y_train.txt & subject_train.txt and stored them in xTrain, yTrain, subjectTrain respectively
xTrain <- read.table("./Dataset/train/X_train.txt")
yTrain <- read.table("./Dataset/train/y_train.txt")
subjectTrain <- read.table("./Dataset/train/subject_train.txt")

# Read X_test.txt, Y_test.txt & subject_test.txt and stored them in xTest, yTest, subjectTest respectively
xTest <- read.table("./Dataset/test/X_test.txt")
yTest <- read.table("./Dataset/test/y_test.txt")
subjectTest <- read.table("./Dataset/test/subject_test.txt")

# Create a xData which will have all the rows from xTrain & xTest
xData <- rbind(xTrain, xTest)

# Create a yData which will have all the rows from yTrain & yTest
yData <- rbind(yTrain, yTest)

# Create a subjectData which will have all the rows from subjectTrain & subjectTest
subjectData <- rbind(subjectTrain, subjectTest)

## Step 2- Pull out only the measurements on the mean and standard deviation for each measurement

#Read features.txt
features <- read.table("./Dataset/features.txt")

# get only those columns with mean() or std() in their names
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

# subset the desired columns
xData <- xData[, mean_and_std_features]

# correct the column names
names(xData) <- features[mean_and_std_features, 2]

## Step 3- Use descriptive activity names to name the activities in the data set

#Read activity_labels.txt
activities <- read.table("./Dataset/activity_labels.txt")

# update values with correct activity names
yData[, 1] <- activities[y_data[, 1], 2]

# correct column name
names(yData) <- "activity"

## Step 4- Appropriately label the data set with descriptive variable names

# correct column name
names(subjectData) <- "subject"

# bind all the data in a single data set
allData <- cbind(xData, yData, subjectData)

## Step 5- Create a second, independent tidy data set with the average of each variable for each activity and each subject


library("plyr")
# 66 <- 68 columns but last two (activity & subject)
averagesData <- ddply(allData, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(averagesData, "./Dataset/tidy_data.txt", row.name=FALSE)
