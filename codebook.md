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
Please read together with the README.md file: https://github.com/NanetteScott/Getting-and-Cleaning-Data-Assignment/blob/master/README.md

###Collection of the raw data
The data was downloaded from the following locations.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
The files were unzipped into the working directory before being read into R.

1) download the data from the source listed above
2) Unzip into the working directory
3) Read into R using read.table (the raw files are in .txt format)

###Cleaning of the data
1) Clean up the "features" table: removed any special characters e.g. brackets, full stops etc. Used a for loop to setp through each variable in a vector to apply the clean-up.
2) Using the cleaned data in the features table, rename the variables in the activity tables (both train and test).
3) Bring in the activity labels (from the activity_labels table) using merge and cbind to include the descriptions in the test and train data. 
4) Using the rbind function, combine the test and training data to make one large dataframe.
5) Tidy up the datframe from step 5, remove the unwanted columns and use the grep function to keep columns relating to:
    - activity
    - subject
    - mean
    - std


##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of the dataset
 - Summary of the data
 - Variables present in the dataset

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.

Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

##Sources
Sources you used if any, otherise leave out.

##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)
