# Retrieve X data
X_test <- read.table('UCI HAR Dataset/test/X_test.txt')
X_train <- read.table('UCI HAR Dataset/train/X_train.txt')

# Merge X train data with test data
X_final <- rbind(X_test, X_train)

# Retrieve features
features <- read.table('UCI HAR Dataset/features.txt')[,2]

# Set labels to X data from features 
names(X_final) <- features

# Prepare Mean and Std filter
mean_std_features <- grepl("-mean|-std", features)

# Filter data
X_final <- X_final[, mean_std_features]

# Retrieve Y data
Y_test <- read.table('UCI HAR Dataset/test/y_test.txt')
Y_train <- read.table('UCI HAR Dataset/train/y_train.txt')

# Merge Y test and train data 
Y_final <- rbind(Y_test, Y_train)

# Retrieve activity label
activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt')[,2]

# Find descriptive label from identifier to each activity
Y_final[,1] <- activity_labels[Y_final[,1]]

# Set column name
names(Y_final) <- c('Activity')

# Add Activity information to data set
XY_final <- cbind(Y_final, X_final)

# Get the subject data
SUBJ_test <- read.table('UCI HAR Dataset/test/subject_test.txt')
SUBJ_train <- read.table('UCI HAR Dataset/train/subject_train.txt')

# Merge subject data
SUBJ_final <- rbind(SUBJ_test, SUBJ_train)

# Set colum name to subject
names(SUBJ_final) <- c('Subject')

# Add subject information to data set
XYSUBJ_final <- cbind(SUBJ_final, XY_final)

# Provide better labels to data set
names(XYSUBJ_final)<-gsub("Freq", "Frequency", names(XYSUBJ_final))
names(XYSUBJ_final)<-gsub("Acc", "Accelerometer", names(XYSUBJ_final))
names(XYSUBJ_final)<-gsub("Gyro", "Gyroscope", names(XYSUBJ_final))
names(XYSUBJ_final)<-gsub("BodyBody", "Body", names(XYSUBJ_final))
names(XYSUBJ_final)<-gsub("Mag", "Magnitude", names(XYSUBJ_final))
names(XYSUBJ_final)<-gsub("mean", "Mean", names(XYSUBJ_final))
names(XYSUBJ_final)<-gsub("std", "STD", names(XYSUBJ_final))
names(XYSUBJ_final)<-gsub("gravity", "Gravity", names(XYSUBJ_final))
names(XYSUBJ_final)<-gsub("[-|()]", "", names(XYSUBJ_final))
names(XYSUBJ_final)<-gsub("^t", "Time", names(XYSUBJ_final))
names(XYSUBJ_final)<-gsub("^f", "Frequency", names(XYSUBJ_final))
names(XYSUBJ_final)<-gsub("X$", "_X", names(XYSUBJ_final))
names(XYSUBJ_final)<-gsub("Y$", "_Y", names(XYSUBJ_final))
names(XYSUBJ_final)<-gsub("Z$", "_Z", names(XYSUBJ_final))

# Convert subject and activity ccolumns as factors
XYSUBJ_final$Subject <- as.factor(XYSUBJ_final$Subject)
XYSUBJ_final$Activity <- as.factor(XYSUBJ_final$Activity)

# Creates a data set with the average of each variable 
# for each activity and each subject
tidy_data <- aggregate(. ~Subject + Activity, XYSUBJ_final, mean)
tidy_data <- tidy_data[order(tidy_data$Subject,tidy_data$Activity),]

# Write data set to file
write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)