# Cleaning data projekt
The script creates the tidy data set used in the course project for the course Getting and Cleaning Data

##Prerequisites
The scripts depends on the dplyr package. If it's not already installed install it with the commands
```
> install.packages("dplyr")
> library(dplyr)
```
Copy the file run_analysis.R to your R working directory. Use the command getwd() to find out where the working directory is
and setwd(dir) to set it. 

Load the file run_analysis.R
```
> source("run_analysis.R")
```

##Download data
The easiest way to get the data is to run the command
```
> downloadData()
```

You could download the data yourself from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The zip file should be extracted so that the files resides in the directory "your working directory/data/UCI HAR Dataset"

##Create the tidy dataset
Run the command 
```
> createTidyDataset()
```
