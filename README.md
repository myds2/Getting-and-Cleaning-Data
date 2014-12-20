How the Script Works
=========================
The R script in this folder, "run_analysis.R", works in the following way: 

1. download the data from the link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

2. unzip the data file and put it in your work directory.

3. run the R script. 

4. The results include two tidy datasets: "dat_full" and "dat_tidy". "dat_full" includes measurements of mean and standard deviation of each feature for each subject. "dat_tidy" includes average of each feature variable in "dat_full" on each activity for each subject. 

This is what the R script does: 
The R script first reads in the test and train datasets and combines them. It also merges the subject and activity data with the features data. 
It then extracts the measurements on the mean and standard deviation for the features variables. 
It gives descriptive names to the activities (i.e., walking, standing, etc.) and also labels the feature variables with descriptive names (i.e., tBodyAcc.mean.X, tBodyAcc.mean.Y, etc). 
It finally calculates the average of each extracted feature variable on each activity for each subject. 
