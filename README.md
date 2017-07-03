# Getting-and-Cleaning-Data-Assignment
Assignment submission for the Johns Hopkins Coursera course: Getting and Cleaning Data

# Assignment Requirements

The purpose of this project was to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. I was be required to submit: 

1) a tidy data set as described below, 
2) a link to a Github repository with your script for performing the analysis, and 
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course
website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

I created one R script called run_analysis.R that does the following. 

1) Reads in the files needed for the analysis (only the 8 listed below were needed to complete this assignment):
    - subject_train
    - x_train
    - y_train
    - subject_test
    - x_test
    - y_test
    - features
    - activity_labels
2) Clean up the "features" table: removed any special characters e.g. brackets, full stops etc.
3) Using the cleaned data in the features table, rename the variables in the activity tables (both train and test).
4) Bring in the activity labels (from the activity_labels table) using merge and cbind to include the descriptions in the test and train data. 
5) Using the rbind function, combine the test and training data to make one large dataframe.
6) Tidy up the datframe from step 5, remove the unwanted columns and use the grep funtion to keep columns rlating to:
    - activity
    - subject
    - mean
    - std
7) Calculate the mean.
8) Export the final dataframe to a text (.txt) file.

The steps above are clearly marked in the run_analysis.R file that has been included in this repo: https://github.com/NanetteScott/Getting-and-Cleaning-Data-Assignment/blob/master/run_analysis.R


# 
