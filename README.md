# Cleaning data projekt
The script creates the independent tidy data set used in the course project for the course Getting and Cleaning Data

##Prerequisites
The scripts depends on the dplyr package. If it's not already installed install it with the commands
> install.packages("dplyr")
> library(dplyr)

Copy the file run_analysis.R to your R working directory. Use the command getwd() to find out where the working directory is
and setwd(dir) to set it. Load the file run_analysis.R
>source("run_analysis.R")

##Download data
The data should reside in the directory "your working directory/data" like this 
./data/UCI HAR Dataset
./data/UCI HAR Dataset/activity_labels.txt
./data/UCI HAR Dataset/features.txt
./data/UCI HAR Dataset/features_info.txt
./data/UCI HAR Dataset/README.txt
./data/UCI HAR Dataset/test
./data/UCI HAR Dataset/test/Inertial Signals
./data/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt
./data/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt
./data/UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt
./data/UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt
./data/UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt
./data/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt
./data/UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt
./data/UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt
./data/UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt
./data/UCI HAR Dataset/test/subject_test.txt
./data/UCI HAR Dataset/test/X_test.txt
./data/UCI HAR Dataset/test/y_test.txt
./data/UCI HAR Dataset/train
./data/UCI HAR Dataset/train/Inertial Signals
./data/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt
./data/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt
./data/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt
./data/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt
./data/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt
./data/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt
./data/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt
./data/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt
./data/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt
./data/UCI HAR Dataset/train/subject_train.txt
./data/UCI HAR Dataset/train/X_train.txt
./data/UCI HAR Dataset/train/y_train.txt

The easiest way to get the data is to run the command
> downloadData()
##Create the tidy dataset
Run the command 
> createTidyDataset()

