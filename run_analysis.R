# This script is analysis the data from:
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
# The purpose of this script is out a tidy data follow 5 terms as below:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set.
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.
#
# Before source this script, please make sure your working directory exisit the raw data.
# And make suer the raw data folder name is UCI HAR Dataset.
# Next check the data.table package and reshape2 package whether install or not.
print("Start to run analysis...")
## Load libraries
library(data.table)
library(reshape2)

## Read all required raw data files
activity_labels<-fread("./UCI HAR Dataset/activity_labels.txt")
x_train<-as.data.table(read.table("./UCI HAR Dataset/train/X_train.txt"))
x_test<-as.data.table(read.table("./UCI HAR Dataset/test/X_test.txt"))
y_train<-fread("./UCI HAR Dataset/train/y_train.txt")
y_test<-fread("./UCI HAR Dataset/test/y_test.txt")
subject_train<-fread("./UCI HAR Dataset/train/subject_train.txt")
subject_test<-fread("./UCI HAR Dataset/test/subject_test.txt")
features<-fread("./UCI HAR Dataset/features.txt")

## 1. Column bind the subject and activity code to the variable.
##    Row bind the training and the test sets to one set.
##    Melt the combinding set to a long form.
x_trains<-cbind(subject_train,y_train,x_train)
setnames(x_trains,x_trains[,1:2],c("subject","y"))
x_tests<-cbind(subject_test,y_test,x_test)
setnames(x_tests,x_tests[,1:2],c("subject","y"))
xtt<-rbindlist(list(x_trains,x_tests))
xtt_melt<-melt(xtt,id.vars=c("subject","y"))
xtt_melt[,var:=as.character(variable)]

## 2. Extract the measurements on the mean and standard deviation for each measurement.
##    Change the names in feature set.
features[,signal:=gsub("^[a-zA-Z]*-|-[a-zA-Z]*$","",V2)]
features[,variable_nm:=gsub("-|\\(\\)-|\\(\\)$",".",V2)]
features[,variable_on:=gsub("-|\\(\\)-|\\(\\)$",".",V2)]# Keep original variable name
features[,time:=paste("V",V1,sep="")]
features_ms<-features[grep("(mean\\(\\))|(std\\(\\))",features$signal),]
xtt_melt<-xtt_melt[var==features_ms$time,]

## 3. Uses descriptive activity names to name the activities in the data set.
activity_labels[,activity:=as.character(activity_labels$V2)]
xtt_melt[,activity:=activity_labels[y]$activity]

## 4. Appropriately labels the data set with descriptive variable names.
features_ms[,variable_nm:=gsub("^t","Time.",variable_nm)]
features_ms[,variable_nm:=gsub("^f","Frequency.",variable_nm)]
features_ms[,variable_nm:=gsub("BodyBody|Body","Body.",variable_nm)]
features_ms[,variable_nm:=gsub("Gravity","Gravity.",variable_nm)]
features_ms[,variable_nm:=gsub("Acc|Acc\\.","Acceleration.",variable_nm)]
features_ms[,variable_nm:=gsub("Gyro|Gyro\\.","Gyroscope.",variable_nm)]
features_ms[,variable_nm:=gsub("Jerk|Jerk\\.","Jerk.",variable_nm)]
features_ms[,variable_nm:=gsub("Mag|Mag\\.","Magnitude.",variable_nm)]
xtt_melt[,variable_name:=features_ms[time==var]$variable_nm]


## 5. Extract require columns to a new set.
##    Cast the new set to a wide form, which with the average of each variable for each
##    activity and each subject.
##    Out put tidy data set to a text file.
xm<-xtt_melt[,.(subject,activity,variable_name,value)]
dxm<-dcast(xm,subject+activity~variable_name,value.var="value",mean)
write.table(dxm,file="./UCI HAR Dataset/result.txt",row.name=FALSE)

print("run_analysis is done, please see the output file below:")
print(paste(getwd(),"/UCI HAR Dataset/result.txt",sep=""))

## Note: Add original variable for summary from step 2.
xtt_melt[,var_shotname:=features_ms[time==var]$variable_on]
xmk<-xtt_melt[,.(subject,activity,var_shotname,value)]
dxmk<-dcast(xmk,subject+activity~var_shotname,value.var="value",mean)
