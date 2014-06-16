## Codebook for Getting and Cleaning Data Project

The run_analysis.R script created for this project performs the cleaning of the data from the original data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following operations are performed in the script:

* Merging of the training and test sets to create a single data set: X_data, S_data and Y_data

* Reads the features and selects only the ones that express a measurement of the mean or standard deviation.

* Reads the labels for the activities and applies descriptive names: walking, walkingupstairs, walkingdownstairs, sitting, standing and laying

* Labels the data set with descriptive names. All characters are converted to lower case and _, () and - are removed. The activities names are: 

"tBodyAccmeanX"            "tBodyAccmeanY"            "tBodyAccmeanZ"           
"tBodyAccstdX"             "tBodyAccstdY"             "tBodyAccstdZ"             "tGravityAccmeanX"         "tGravityAccmeanY"        
"tGravityAccmeanZ"         "tGravityAccstdX"          "tGravityAccstdY"          "tGravityAccstdZ"          "tBodyAccJerkmeanX"       
"tBodyAccJerkmeanY"        "tBodyAccJerkmeanZ"        "tBodyAccJerkstdX"         "tBodyAccJerkstdY"         "tBodyAccJerkstdZ"        
"tBodyGyromeanX"           "tBodyGyromeanY"           "tBodyGyromeanZ"           "tBodyGyrostdX"            "tBodyGyrostdY"           
"tBodyGyrostdZ"            "tBodyGyroJerkmeanX"       "tBodyGyroJerkmeanY"       "tBodyGyroJerkmeanZ"       "tBodyGyroJerkstdX"       
"tBodyGyroJerkstdY"        "tBodyGyroJerkstdZ"        "tBodyAccMagmean"          "tBodyAccMagstd"           "tGravityAccMagmean"      
"tGravityAccMagstd"        "tBodyAccJerkMagmean"      "tBodyAccJerkMagstd"       "tBodyGyroMagmean"         "tBodyGyroMagstd"         
"tBodyGyroJerkMagmean"     "tBodyGyroJerkMagstd"      "fBodyAccmeanX"            "fBodyAccmeanY"            "fBodyAccmeanZ"           
"fBodyAccstdX"             "fBodyAccstdY"             "fBodyAccstdZ"             "fBodyAccJerkmeanX"        "fBodyAccJerkmeanY"       
"fBodyAccJerkmeanZ"        "fBodyAccJerkstdX"         "fBodyAccJerkstdY"         "fBodyAccJerkstdZ"         "fBodyGyromeanX"          
"fBodyGyromeanY"           "fBodyGyromeanZ"           "fBodyGyrostdX"            "fBodyGyrostdY"            "fBodyGyrostdZ"           
"fBodyAccMagmean"          "fBodyAccMagstd"           "fBodyBodyAccJerkMagmean"  "fBodyBodyAccJerkMagstd"   "fBodyBodyGyroMagmean"    
"fBodyBodyGyroMagstd"      "fBodyBodyGyroJerkMagmean" "fBodyBodyGyroJerkMagstd"

* The last step is to produce another tidy data set which shows the average of each measurement for each activity and each subject.
