#Getting and Cleaning Data - Week 4 - peer graded project

#Assign libraries needed 
library(stringr)
library(dplyr)

##Step 1: Read in the relevant files (based on the Coursera Forum, only the 8 files below are needed for this assignment)

    #read in relevant training data for the assignment
    subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
    x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
    y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
    
    #read in relevant test data for the assignment
    subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
    x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
    y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
    
    #read in other information needed
    features <- read.table("UCI HAR Dataset/features.txt")
    activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")


#Step 2: Tidy up the features table
   
     #Remove the special characters and make lower case (not sure if this was right but made sense to have variable names as clean as possible and all lower case)
    
    features<-mutate(features,CleanVar=V2)
    special_char=c("\\.","-","\\(","\\)","\\,")
    
    #check for each character and overwrite the "clean variable" until all special characters have been removed
    
        for (i in 1:length(special_char)){
        
          features<-mutate(features,CleanVar=tolower(str_replace_all(CleanVar,special_char[i],"")))
        
        }

    
##Step 3: Apply the "clean variable" names to the train and test tables

    #Create Character Vector with the clean column names
    name_vec<-features$CleanVar
    
    #Apply column names
    colnames(x_test)<-name_vec
    colnames(x_train)<-name_vec
    

##Step 4: Bring in the activity labels
    
    #y_train activity labels
    colnames(subject_train)<-c("subject")
    
    y_train<- cbind(y_train,subject_train)
    y_train<- merge(y_train,activity_labels, by=("V1"))
    
    
    #join both train data sets
    combined_train<-cbind(y_train,x_train)
    
    #do the same for test data
    
    #y_test activity labels
    colnames(subject_test)<-c("subject")
    y_test<- cbind(y_test,subject_test)
    y_test<- merge(y_test,activity_labels, by=("V1"))


    #join both test data sets
    combined_test<-cbind(y_test,x_test)
    

## Step 5: join the test and train data
  
    final_combine<-rbind(combined_test,combined_train)


## Step 6: tidy up column names (and remove unwanted columns) and use use grep to select based on partial column name match
   
    names(final_combine)[1]<-"activity_id"
    names(final_combine)[3]<-"activity"
    final_combine<-final_combine[-1]
    
    col_select<-grep("activity|subject|mean|std",names(final_combine),value=TRUE)
    
    final_combine<-final_combine[col_select]


## Step 7: Use summarise_each function and chaining to get final avgs per variable in the final table from Step 6

    final_combine_avg<- (final_combine %>% group_by(subject,activity) %>% summarise_each(funs(mean)))


## Step 8: View and export the final table 
      
      View(final_combine_avg)
      write.table(final_combine_avg,file = "final_combine_avg.txt",row.names = FALSE)

      
