#Clear Working Environment
rm(list=ls())
cat("\f")

#Loading necessary libraries
library(readr)
library(dplyr)

#Reading data, adjust classes and clear environment
loc <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
temp <- tempfile()
download.file(loc,temp)

####Loading and manipulating the signal vectors for the test data

con <- unz(temp, "UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
cur <- read.table(con, sep="")
total_acc_x_test <- as.list(lapply(
        seq_len(nrow(cur)), function(i) cur[i,]))

con <- unz(temp, "UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
total_acc_y_test <- read.table(con, sep="")

con <- unz(temp, "UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")
total_acc_z_test <- read.table(con, sep="")

con <- unz(temp, "UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
body_acc_x_test <- read.table(con, sep="")

con <- unz(temp, "UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
body_acc_y_test <- read.table(con, sep="")

con <- unz(temp, "UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
body_acc_z_test <- read.table(con, sep="")

con <- unz(temp, "UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
body_gyro_x_test <- read.table(con, sep="")

con <- unz(temp, "UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
body_gyro_y_test <- read.table(con, sep="")

con <- unz(temp, "UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
body_gyro_z_test <- read.table(con, sep="")

#Creating List of vectors out of Matrices
x <- matrix(1:10,ncol=2)
z  <- as.list(split(x, rep(1:nrow(x), each = ncol(x)))); z
y <- as.list(tapply(x,rep(1:nrow(x),each=ncol(x)),function(i)i)); w
w <- as.list(lapply(seq_len(nrow(x)), function(i) x[i,])); w 

##other old stuff
con <- unz(temp, "UCI HAR Dataset/test/X_test.txt")
test_df <- read_delim(con, 
                col_names=FALSE,
                delim=" ")

con <- unz(temp, "UCI HAR Dataset/test/y_test.txt")
test_df_activity <- read_delim(con,
                col_names=FALSE,
                delim=" ")
con <- unz(temp, "UCI HAR Dataset/train/y_train.txt")
train_df_activity <- read_delim(con,
                               col_names=FALSE,
                               delim=" ")
con <- unz(temp, "UCI HAR Dataset/activity_labels.txt")
activity_labels <- read_delim(con,
                                col_names=FALSE,
                                delim=" ")

con <- unz(temp, "UCI HAR Dataset/test/subject_test.txt")
test_df_subjects <- read.table(con, sep="")