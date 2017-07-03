---
title: "Getting and Cleaning Data Codebook"
author: "Nanette Scott"
date: "July 2017"
output:
  html_document:
    keep_md: yes
---



## Project Description

Getting and cleaning data assignment

Please read together with the README.md file:
https://github.com/NanetteScott/Getting-and-Cleaning-Data-Assignment/blob/master/README.md

 

###Collection of the raw data

The data was downloaded from the following
locations.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


The files were unzipped into the working directory
before being read into R.

 

1) download the data from the source listed above

2) Unzip into the working directory

3) Read into R using read.table (the raw files are
in .txt format)

 

###Cleaning of the data

1) Clean up the "features" table: removed
any special characters e.g. brackets, full stops etc. Used a for loop to step
through each variable in a vector to apply the clean-up.

2) Using the cleaned data in the features table,
rename the variables in the activity tables (both train and test).

3) Bring in the activity labels (from the
activity_labels table) using merge and cbind to include the descriptions in the
test and train data. 

4) Using the rbind function, combine the test and
training data to make one large dataframe.

5) Tidy up the dataframe from step 5, remove the
unwanted columns and use the grep function to keep columns relating to:

    -
activity

    - subject

    - mean

    - std

6) Calculate the mean for each relevant variable.

7) Output to a final tidy text file (final_combine_avg.txt)

 

 

##Description of the variables in the final_combine_avg.txt
