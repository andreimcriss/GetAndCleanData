#Getting and cleaning data Coursera Project

#Part 1: Mergeing

#merging X data
data1 <- read.table("train/X_train.txt")
data2 <- read.table("test/X_test.txt")
X_data <- rbind(data1,data2) 

#merging subject data
data1 <- read.table("train/subject_train.txt")
data2 <- read.table("test/subject_test.txt")
S_data <- rbind(data1,data2)

#merging Y data
data1 <- read.table("train/Y_train.txt")
data2 <- read.table("test/Y_test.txt")
Y_data <- rbind(data1,data2)

#Part 2: Extract mean and std_dev
features <- read.table("features.txt")
good_features <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X_data <- X_data[, good_features]
names(X_data) <- features[good_features, 2]
names(X_data) <- gsub("\\(|\\)", "", names(X_data)) #eliminates ()
names(X_data) <- gsub("-", "", names(X_data)) #eliminates "-"
names(X) <- tolower(names(X)) #changes case to low

#Part3: Activity Names
activities <- read.table("activity_labels.txt")
activities[, 2] = gsub("_", "", activities[, 2])
activities[, 2] = tolower(as.character(activities[,2]))
Y_data[,1] = activities[Y_data[,1], 2]
names(Y_data) <- "activityname"

#Part4: labels the data set

names(S_data) <- "subject"
all_binded <- cbind(S_data, Y_data, X_data)
write.table(all_binded, "tidy_dataset.txt")

#Part5: 2nd tidy data set

subjects_vector <- unique(S_data)[,1]
subjects_number <- length(subjects_vector)
activities_number <- length(activities[,1])
column_number <- dim(all_binded)[2]
row_number <-subjects_number*activities_number
result <- all_binded[1:row_number, ]
row_index = 1
for (current_subject in 1: subjects_number) {
        for (current_act in 1: activities_number) {
                result[row_index, 1] = subjects_vector[current_subject]
                result[row_index, 2] = activities[current_act, 2]
                temp <- all_binded[all_binded$subject== current_subject & all_binded$activityname==activities[current_act, 2], ]
                result[row_index, 3:column_number] <- colMeans(temp[, 3:column_number])
                row_index = row_index+1
        }
}
write.table(result, "tidy_dataset2.txt")

