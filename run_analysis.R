# The file contains the functions needed to create the tidy data set that is used
# in the project for the Coursera course "Getting and cleaning data".

# Downloads the zip file with the data and unzips it in the directory "working directory/data"
# The directory data is created if it not exists.
downloadData <- function() {
    # Check if data directory exists. Create it if it's not.
    if (!file.exists("data")) {
        dir.create("data")
    }

    # Download the file
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl, destfile = "./data/dataset.zip", method = "curl")
    dateDownloaded <- date()

    # unzip the file in the data directory 
    unzip("./data/dataset.zip", exdir="./data")
}

# Read observations, subject and activity from files into one data frame. The
# parameter name is either "test" to read test data or "train" to read the training data
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

# The function creates the tidy data set from the test and training data sets
createTidyDataset <- function() {
    # read the test data, subject and activity
    testdata <- getData("test")

    #read the training data, subject and activity
    traindata <- getData("train")

    ## combine the data into one data frame
    data <- rbind(traindata, testdata)

    # set column names from the file features.txt + add the names for activity and subject
    colnames <- read.table("./data/UCI HAR Dataset/features.txt")
    colnames(data) <- colnames[,2]
    colnames(data)[562] <- "activityid"
    colnames(data)[563] <- "subjectid"

    # only keep columns with std() or mean() in the name and activity and subject
    cols <- append(grep("(mean|std)\\(\\)",colnames(data)), 562:563)
    data <- data[cols]

    # add column with the activty names 
    activitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
    colnames(activitylabels) <-(c("activityid", "activity"))
    data <- merge(data, activitylabels, by.x="activityid", by.y="activityid", all.x)
    
    #remove the column activityid
    data <- data[, !(names(data) %in% "activityid")]
    
    # cleanup column names
    colnames(data) <- make.names(names(data), unique=TRUE)
    colnames(data) <- gsub("\\.", "", names(data))

    # create final dataset with the average of each variable for each activity and each subject.
    finaldata <- group_by(data, activity, subjectid)
    finaldata <- summarise_each(finaldata, funs(mean))
    
    # save dataset to file
    write.table(finaldata, "./data/finaldata.txt", row.name=FALSE)    
}







