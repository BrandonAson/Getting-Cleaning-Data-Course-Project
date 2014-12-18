run_analysis <- function()

{
  ############### LOAD PACKAGES ################

  library(data.table)
  library(plyr)
  library(dplyr)

  #################### DOWNLOAD & UNZIP THE FILES ################
  
  #download file if the file is not in the working directory
  if (!file.exists("./UCI HAR Dataset"))
  {
    fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
    download.file(fileUrl, "UCI HAR Dataset.zip", mode = "wb")
    unzip("UCI HAR Dataset.zip")
    
    dateDownload <- date()
    dateDownload
    
  }
  
  ########### LOAD DATASETS ###############
  
  ### TEST SETS ###
  testX <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE, colClasses = "numeric", sep = "")
  testY <- read.table("./UCI HAR Dataset/test/Y_test.txt", header = FALSE, sep = "")
  subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "")
  
  ### TRAINING SETS ###
  trainX <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE, colClasses = "numeric", sep = "")
  trainY <- read.table("./UCI HAR Dataset/train/Y_train.txt", header = FALSE, sep = "")
  subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "")
  
  ### FEATURES & ACTIVITY LABELS ###
  features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE, sep = "")
  activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = "")

  #make the list of features more readable
  features[,2] <- gsub("[^a-zA-Z0-9]"," ", features[,2])
  

  ############### MERGE TRAINING & TEST SETS / EXTRACT ONLY MEAN & ST DEV COLUMNS ###############
  
  #combine testX & trainX (the two datasets)
  combinedX <- rbind(testX, trainX)
  
  #add descriptive name to each variable (add features as the header)
  colnames(combinedX) <- features[,2] 
  
  ## select only columns with mean values ##
  meanX <- combinedX[, grep("mean", colnames(combinedX))]
  
  ## select only the columns with standard deviations ##
  stDevX  <- combinedX[, grep("std", colnames(combinedX))]
  
  ## merge ##
  selectX <- cbind(meanX, stDevX)
  
  #combine testY & trainY (the activity IDs)
  combinedY <- rbind(testY, trainY)
  
  #combine testSubject & trainSubject (the subject IDs) 
  combinedSubject <- rbind(subjectTest, subjectTrain)
  
  #add activity (combinedY) column to data (combinedX) & rename new column variable 'activity'
  combinedDataSet <- cbind(combinedY$V1, selectX)
  colnames(combinedDataSet)[1] <- "activity"
  
  #add subject ID column to data (combinedSet) & rename new column variable 'subject'
  combinedDataSet <- cbind(combinedSubject$V1, combinedDataSet)
  colnames(combinedDataSet)[1] <- "subject"

  #use the descriptive activity name in place of the activity number
  #1st, label column in activityLabels, then remove the duplicate column
  colnames(activityLabels)[1] <- "activity" 
  combinedDataSet <- join(activityLabels, combinedDataSet, by="activity")
  colnames(combinedDataSet)[2] <- "activity"
  combinedDataSet <- combinedDataSet[,-1]
  
 
  ############# CREATE TIDY DATA SET W/ AVG OF EACH SUBJECT FOR EACH ACTIVITY ###########

  # convert to a data table
  combinedDataSet <- data.table(combinedDataSet)

  # new data set with the average of each variable for each activity and each subject
  tidyDataSet <- combinedDataSet %>% group_by(subject, activity) %>% summarise_each(funs(mean))
  
  
  View(tidyDataSet)
  
  write.table(tidyDataSet, file = "./tidyDataSet.txt", row.name = FALSE)
  
}