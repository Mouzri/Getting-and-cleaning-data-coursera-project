# Getting-and-cleaning-data-coursera-project
This repo represents one solution for the *getting and cleaning data coursera project*. The task is to modify a set of unordered data to **tidy** one. To do so, an R script named `Run_analysis.R` was generated. The script does the following tasks:
* Creates a directory named "Data", downloads the data from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), and unzips the zip file.
* Reads the necessary files which include:
  - The X_test and X_train data.
  - The feaures.txt file.
  - The y_test.txt/y_train.txt files which contain the different activities.
  - The subject_test.txt/subject_test.txt files.
 * Modifies the structure of the data by:
   - Labeling the columns.
   - Adding the "subject" and "activity" columns.
   - Renaming the activities in each row of the activity column.
   - Merging all in one dataframe.
 * Selects the variables of interest(i.e subject, activity, mean and standard deviation) from the previous formed dataframe.
 * Labels the data set with descriptive variable names(see the Codebook.md file).
 * Finally,creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The finale data is stored in `tidy_data.txt` file.
