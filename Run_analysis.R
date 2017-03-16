#downloading the data
if(!file.exists("~/data")){dir.create("~/data")}
Lnk <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(Lnk,destfile = "~/data/data.zip")
unzip("~/data/data.zip",exdir ="~/data/" )
## the read_and_modify function will load the necessary files and add the "subject" and "activity" columns. 
# Instead of writing a code for each one of the "train" and "test" dataset (and just in order to save space), we will simply call the function twice
read_and_modify <- function(folder){
        if(folder=="train"){path <-"~/data/UCI HAR Dataset/train/"}
        else if(folder=="test"){path <- "~/data/UCI HAR Dataset/test/"}
        #loading the data file
        X_data <- read.table(paste(path,"/X_",folder,".txt",sep = ""))
        #loading the features file
        features <- read.table(paste(path,"../features.txt",sep = ""))
        #loading the activity file (these ae numbers from 1 to 6 that needs to be replaced with their meanings)
        activity <-read.table(paste(path,"y_",folder,".txt",sep = "")) 
        #loading the subject file
        subject <-read.table(paste(path,"subject_",folder,".txt",sep = ""))
        # naming the columns of the loaded dataset
        colnames(X_data) <- features[,2]
        # adding two new columns at the end of the data frame 
        X_data["subject"] <- subject
        X_data["activity"]<- activity
        #moving the last two columns to the begining, and keeping the rest of columns
        X_data <- data.frame(X_data[,c("subject","activity")],X_data[,1:561])
        #loading the activity_labels file
        activity_label <- read.csv(paste(path,"../activity_labels.txt",sep = ""),header = FALSE,col.names = "label",stringsAsFactors = FALSE)
        # All we need is the lables without numbers, labels that we're gonna use to change the activity colummn from numbers to what they literaly refer to
        action <- tolower(sub("[1-6] ","",activity_label$label))
        #looping over the activity column to replace numbers with full names activity
        X_data$activity <- factor(X_data$activity,levels = 1:6,labels = action)
        #the data is loaded and modified. Return it.
        X_data
}
merging_test_train <- function()
{
        tidy_test <- read_and_modify("test")
        tidy_train <- read_and_modify("train")
        #joining the two data frames in one data frame
        tidy_data <- rbind(tidy_train,tidy_test)
        #All we need are columns that refer to the mean and standard deviation(stored in a variable called final tidy data)
        slcelmt <- grep("subject|activity|.*mean.*|.*std.*", names(tidy_data))
        final_tidy_data <- tidy_data[,slcelmt]
        #Renaming the variables names using the "name_trans" function
        colnames(final_tidy_data) <-name_trans(colnames(final_tidy_data))
        #returning the final tidy data
        final_tidy_data
}
#the following function modifies the names of the variables of the dataset
name_trans <- function(x)
{
        x <- gsub("[.]","",x)#to remove the dots from the name
        x <- gsub("[Bb]ody","B",x)#each time the word body is found, replace with B
        x <- sub("[Mm]ean","M",x)#replace mean with M
        x <- sub("[Jj]erk","J",x)#.......jerk......J
        x <- sub("[Mm]ag","Mg",x)#.......Mag......Mg
        x <- sub("[Aa]cc","A",x)#.......Acc.......A
        x <- sub("[Ff]req","F",x)#......Feq.......F
        x <- sub("[Gg]ravity","G",x)#....Gravity...G
        x <- sub("[Gg]yro","Gr",x)#......Gyro......Gr
        x <- sub("std","S",x)#..........std.......S
        x
}
mergeData <- merging_test_train()
library(reshape2)
Melt_Merged_data <- melt(mergeData,id.vars = c("subject","activity"))
result <- dcast(tr1,subject+activity~variable,mean)
#put the result in a new file called tidy_data
write.table(result,"~/data/tidy_data.txt")
#to check
head(read.table("~/data/tidy_data.txt"))
