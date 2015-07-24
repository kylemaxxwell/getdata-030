# Project for Getting and Cleaning Data #
Version 1.0

----------
## Description ##
The result of running the R script called run_analysis.R was created with the data.table package and reshape2 package in Rstudio. Considering of the running and analysis speed between dplyr and data.table, this project mainly code by data.table script.

> Note that dplyr vs data.table please see for this article: [DATA.TABLE VS. DPLYR ](http://www.brodieg.com/?p=7)

The CodeBook.md that describes the variables, the data, and any transformations or work does follow by 5 terms:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Installing the software ##
You need to install [R](http://cran.rstudio.com/), [Rstudio](http://www.rstudio.com/ide/download/), open Rstudio and run the commands:

    install.packages("data.table")
    install.packages("reshape2")

## Download raw data and setting your working directory ##
Next, you need to set your working directory by using the setwd() command in R. And download the raw data from:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

Unzip the zip file and keep original folder name "UCI HAR Dataset" to the directory which you set above.

## Running R script: analysis.R##
Download file analysis.R to your working directory and using the source() command in R. Or add this file to RStudio and click button Source on above on the right hand side in RStudio.

After source, this should complile the script and produce some data object in the global environment and one tidy data result text file "result.txt" into UCI HAR Dataset folder in your working directory.

## Notes ##
> See [CodeBook.md](https://github.com/kylemaxxwell/getdata-030/blob/master/CodeBook.md) for more details of each data object and variables.

> See [run_analysis.R](https://github.com/kylemaxxwell/getdata-030/blob/master/run_analysis.R) for more analysis details.