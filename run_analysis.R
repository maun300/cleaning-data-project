# prereq install.packages("dplyr"), 

downloadData <- function() {
    if (!file.exists("data")) {
        dir.create("data")
    }

    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl, destfile = "./data/dataset.zip", method = "curl")
    dateDownloaded <- date()

    unzip("./data/dataset.zip", exdir="./data")
}

getData <- function(name) {
    # read observations into dataframe
    filename <- paste0("./data/UCI HAR Dataset/", name, "/X_", name, ".txt")
    data <- read.table(filename)
    
    # read activity id
    filename <- paste0("./data/UCI HAR Dataset/", name, "/y_", name, ".txt")
    activityid <- read.table(filename)
    
    # read subject id
    filename <- paste0("./data/UCI HAR Dataset/", name, "/subject_", name, ".txt")
    subjectid <- read.table(filename)
    
    #add activity id and subject id to the observations
    data <- cbind(data, activityid)
    cbind(data, subjectid)
}

# fix test data
testdata <- getData("test")
#testdata <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
#testlabels <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
#testsubjects <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
#testdata <- cbind(testdata, testlabels)
#testdata <- cbind(testdata, testsubjects)
#testlabels <- NULL
#testsubjects <- NULL

#fix train data
traindata <- getData("train")
#traindata <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
#trainlabels <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
#trainsubjects <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
#traindata <- cbind(traindata, trainlabels)
#traindata <- cbind(traindata, trainsubjects)
#trainlabels <- NULL
#trainsubjects <- NULL

data <- rbind(traindata, testdata)
traindata <- NULL
testdata <- NULL

# set column names from the file features.txt + add the names for activity and subject
colnames <- read.table("./data/UCI HAR Dataset/features.txt")
colnames(data) <- colnames[,2]
colnames(data)[562] <- "activityid"
colnames(data)[563] <- "subjectid"

# only keep columns with std() or mean() in the name and activity and subject
cols <- append(grep("(mean|std)\\(\\)",colnames(data)), 562:563)
data <- data[cols]
colnames <- NULL

# add column with the activty names 
activitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
colnames(activitylabels) <-(c("activityid", "activity"))
data <- merge(data, activitylabels, by.x="activityid", by.y="activityid", all.x)

#remove the column activityid
data <- data[, !(names(data) %in% "activityid")]

# cleanup column names
colnames(data) <- make.names(names(data), unique=TRUE)
colnames(data) <- gsub("\\.", "", names(data))

# create final dataset with the with the average of each variable for each activity and each subject.
finaldata <- group_by(data, activity, subjectid)
finaldata <- summarise_each(finaldata, funs(mean))

# save dataset to file
write.table(finaldata, "./data/finaldata.txt", row.name=FALSE)