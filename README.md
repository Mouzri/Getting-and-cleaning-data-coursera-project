# Getting-and-cleaning-data-coursera-project
This repo represent one solution for the *getting and cleaning data* coursera project. The task is to modify a set of unordered data to **tidy** one. To do so, an R script named `Run_analysis.R` was generated. The script do the following tasks:
* Creates a directory named "Data", downloads the data from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), and unzips the zip file.
* Reads the necessary files which include:
  - The X_test and Y_test data.
  - The feaures.txt file.
  - The y_test.txt/y_train.txt files which contain the different activities.
  - The subject_test.txt/subject_test.txt files.
 * Modifies the structure of the data by:
   - Labeling the columns.
   - Adding the "subject" and "activity" columns.
   - Renaming the activities in each row in the activity column.
   - Merging the "all" in one dataframe.
 * Selects the variables of interest(i.e subject, activity, mean and standard deviation) from the previous dataframe.
 * Labels the data set with descriptive variable names(see the Codebook.md file).
