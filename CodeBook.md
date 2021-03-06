# Code Book: Getting and Cleaning Data Course Project #
Version 1.0

----------

## Description ##

The goal is to prepare tidy data that can be used for later analysis. The R script called run_analysis.R that dose the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.



## Raw data set structure ##
### Require data set files ###

1. 'features.txt': List of all features.
2. 'activity_labels.txt': Links the class labels with their activity name.
3. 'train/X_train.txt': Training set.
4. 'train/y_train.txt': Training labels.
5. 'test/X_test.txt': Test set.
6. 'test/y_test.txt': Test labels.
7. 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
8. 'test/subject_test.txt': Its range is from 1 to 24.

## Tidy data structure ##

<table>
	<thead>
		<tr>
			<th>Variable</th>
			<th>Subject</th>
			<th colspan=2>Activity</th>
			<th>[1] features.txt</th>
		</tr>
	</thead>
	<tbody>
		<tr> 
			<td rowspan=2><b>Observations</b></td>
			<td>[7] subject_train.txt</td>
			<td rowspan=2>[2] activity_labels.txt</td>
			<td>[4] y_train.txt</td>
			<td>[3] X_train.txt</td>
		</tr>
		<tr>
			<td>[8] subject_test.txt</td>
			<td>[6] y_test.txt</td>
			<td>[5] X_test.txt</td>
		</tr>
	</tbody>
</table>

## Tidy data result.txt details for variables##

#### Dimensions of the result data set (rows, columns) ####
> dim(dxm)

    [1] 180  68

#### Structure of the result data set ####
> str(dxm,comp.str="")

	'data.frame':	180 Observations of 68 variables:

	 ## Variables ##                                 : Class        Observation examples
	----------------------------------------------------------------------------------------------------
	 subject                                         : int  1 1 1 1 1 1 2 2 2 2 ...
	 activity                                        : chr  "LAYING" "SITTING" "STANDING" "WALKING" ...
	 Frequency.Body.Acceleration.Jerk.Magnitude.mean.: num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
	 Frequency.Body.Acceleration.Jerk.Magnitude.std. : num  -0.922 -0.982 -0.993 -0.103 -0.104 ...
	 Frequency.Body.Acceleration.Jerk.mean.X         : num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...
	 Frequency.Body.Acceleration.Jerk.mean.Y         : num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...
	 Frequency.Body.Acceleration.Jerk.mean.Z         : num  -0.948 -0.986 -0.991 -0.469 -0.288 ...
	 Frequency.Body.Acceleration.Jerk.std.X          : num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...
	 Frequency.Body.Acceleration.Jerk.std.Y          : num  -0.932 -0.983 -0.987 0.107 -0.135 ...
	 Frequency.Body.Acceleration.Jerk.std.Z          : num  -0.961 -0.988 -0.992 -0.535 -0.402 ...
	 Frequency.Body.Acceleration.Magnitude.mean.     : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
	 Frequency.Body.Acceleration.Magnitude.std.      : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...
	 Frequency.Body.Acceleration.mean.X              : num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...
	 Frequency.Body.Acceleration.mean.Y              : num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...
	 Frequency.Body.Acceleration.mean.Z              : num  -0.883 -0.959 -0.985 -0.332 -0.226 ...
	 Frequency.Body.Acceleration.std.X               : num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...
	 Frequency.Body.Acceleration.std.Y               : num  -0.834 -0.917 -0.972 0.056 -0.113 ...
	 Frequency.Body.Acceleration.std.Z               : num  -0.813 -0.934 -0.978 -0.28 -0.298 ...
	 Frequency.Body.Gyroscope.Jerk.Magnitude.mean.   : num  -0.942 -0.99 -0.995 -0.319 -0.282 ...
	 Frequency.Body.Gyroscope.Jerk.Magnitude.std.    : num  -0.933 -0.987 -0.995 -0.382 -0.392 ...
	 Frequency.Body.Gyroscope.Magnitude.mean.        : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...
	 Frequency.Body.Gyroscope.Magnitude.std.         : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...
	 Frequency.Body.Gyroscope.mean.X                 : num  -0.85 -0.976 -0.986 -0.339 -0.352 ...
	 Frequency.Body.Gyroscope.mean.Y                 : num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...
	 Frequency.Body.Gyroscope.mean.Z                 : num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...
	 Frequency.Body.Gyroscope.std.X                  : num  -0.882 -0.978 -0.987 -0.517 -0.495 ...
	 Frequency.Body.Gyroscope.std.Y                  : num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...
	 Frequency.Body.Gyroscope.std.Z                  : num  -0.917 -0.944 -0.982 -0.437 -0.238 ...
	 Time.Body.Acceleration.Jerk.Magnitude.mean.     : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...
	 Time.Body.Acceleration.Jerk.Magnitude.std.      : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...
	 Time.Body.Acceleration.Jerk.mean.X              : num  0.0811 0.0775 0.0754 0.074 0.0542 ...
	 Time.Body.Acceleration.Jerk.mean.Y              : num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...
	 Time.Body.Acceleration.Jerk.mean.Z              : num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...
	 Time.Body.Acceleration.Jerk.std.X               : num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...
	 Time.Body.Acceleration.Jerk.std.Y               : num  -0.924 -0.981 -0.986 0.067 -0.102 ...
	 Time.Body.Acceleration.Jerk.std.Z               : num  -0.955 -0.988 -0.992 -0.503 -0.346 ...
	 Time.Body.Acceleration.Magnitude.mean.          : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
	 Time.Body.Acceleration.Magnitude.std.           : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
	 Time.Body.Acceleration.mean.X                   : num  0.222 0.261 0.279 0.277 0.289 ...
	 Time.Body.Acceleration.mean.Y                   : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...
	 Time.Body.Acceleration.mean.Z                   : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...
	 Time.Body.Acceleration.std.X                    : num  -0.928 -0.977 -0.996 -0.284 0.03 ...
	 Time.Body.Acceleration.std.Y                    : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...
	 Time.Body.Acceleration.std.Z                    : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...
	 Time.Body.Gyroscope.Jerk.Magnitude.mean.        : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...
	 Time.Body.Gyroscope.Jerk.Magnitude.std.         : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...
	 Time.Body.Gyroscope.Jerk.mean.X                 : num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...
	 Time.Body.Gyroscope.Jerk.mean.Y                 : num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...
	 Time.Body.Gyroscope.Jerk.mean.Z                 : num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...
	 Time.Body.Gyroscope.Jerk.std.X                  : num  -0.919 -0.992 -0.993 -0.207 -0.487 ...
	 Time.Body.Gyroscope.Jerk.std.Y                  : num  -0.968 -0.99 -0.995 -0.304 -0.239 ...
	 Time.Body.Gyroscope.Jerk.std.Z                  : num  -0.958 -0.988 -0.992 -0.404 -0.269 ...
	 Time.Body.Gyroscope.Magnitude.mean.             : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...
	 Time.Body.Gyroscope.Magnitude.std.              : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...
	 Time.Body.Gyroscope.mean.X                      : num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...
	 Time.Body.Gyroscope.mean.Y                      : num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...
	 Time.Body.Gyroscope.mean.Z                      : num  0.1487 0.0629 0.0748 0.0849 0.0901 ...
	 Time.Body.Gyroscope.std.X                       : num  -0.874 -0.977 -0.987 -0.474 -0.458 ...
	 Time.Body.Gyroscope.std.Y                       : num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...
	 Time.Body.Gyroscope.std.Z                       : num  -0.908 -0.941 -0.981 -0.344 -0.125 ...
	 Time.Gravity.Acceleration.Magnitude.mean.       : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
	 Time.Gravity.Acceleration.Magnitude.std.        : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
	 Time.Gravity.Acceleration.mean.X                : num  -0.249 0.832 0.943 0.935 0.932 ...
	 Time.Gravity.Acceleration.mean.Y                : num  0.706 0.204 -0.273 -0.282 -0.267 ...
	 Time.Gravity.Acceleration.mean.Z                : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...
	 Time.Gravity.Acceleration.std.X                 : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...
	 Time.Gravity.Acceleration.std.Y                 : num  -0.908 -0.936 -0.981 -0.971 -0.937 ...
	 Time.Gravity.Acceleration.std.Z                 : num  -0.852 -0.949 -0.976 -0.948 -0.896 ...

#### Summary of the result data set ####
> summary(dxmk,digits = 15)

	"   subject"	"  activity"				"fBodyAcc.mean.X"		"fBodyAcc.mean.Y"		"fBodyAcc.mean.Z"		"fBodyAcc.std.X"		"fBodyAcc.std.Y"		"fBodyAcc.std.Z"		"fBodyAccJerk.mean.X"	"fBodyAccJerk.mean.Y"	"fBodyAccJerk.mean.Z"	"fBodyAccJerk.std.X"	"fBodyAccJerk.std.Y"	"fBodyAccJerk.std.Z"	"fBodyAccMag.mean"		"fBodyAccMag.std"		"fBodyAccJerkMag.mean"	"fBodyAccJerkMag.std"	"fBodyGyroJerkMag.mean"	"fBodyGyroJerkMag.std"	"fBodyGyroMag.mean"		"fBodyGyroMag.std"		"fBodyGyro.mean.X"		"fBodyGyro.mean.Y"		"fBodyGyro.mean.Z"		"fBodyGyro.std.X"		"fBodyGyro.std.Y"		"fBodyGyro.std.Z"		"tBodyAcc.mean.X"		"tBodyAcc.mean.Y"		"tBodyAcc.mean.Z"		"tBodyAcc.std.X"		"tBodyAcc.std.Y"		"tBodyAcc.std.Z"		"tBodyAccJerk.mean.X"	"tBodyAccJerk.mean.Y"	"tBodyAccJerk.mean.Z"	"tBodyAccJerk.std.X"	"tBodyAccJerk.std.Y"	"tBodyAccJerk.std.Z"	"tBodyAccJerkMag.mean."	"tBodyAccJerkMag.std."	"tBodyAccMag.mean."		"tBodyAccMag.std."		"tBodyGyro.mean.X"		"tBodyGyro.mean.Y"		"tBodyGyro.mean.Z"		"tBodyGyro.std.X"		"tBodyGyro.std.Y"		"tBodyGyro.std.Z"		"tBodyGyroJerk.mean.X"	"tBodyGyroJerk.mean.Y"	"tBodyGyroJerk.mean.Z"	"tBodyGyroJerk.std.X"	"tBodyGyroJerk.std.Y"	"tBodyGyroJerk.std.Z"	"tBodyGyroJerkMag.mean.""tBodyGyroJerkMag.std."	"tBodyGyroMag.mean."	"tBodyGyroMag.std."		"tGravityAcc.mean.X"	"tGravityAcc.mean.Y"	"tGravityAcc.mean.Z"	"tGravityAcc.std.X"		"tGravityAcc.std.Y"		"tGravityAcc.std.Z"		"tGravityAccMag.mean."	"tGravityAccMag.std."
	"Min.   : 1.0  "	"Length:180        "	"Min.   :-0.9952499  "	"Min.   :-0.9890343  "	"Min.   :-0.9894739  "	"Min.   :-0.9966046  "	"Min.   :-0.9906804  "	"Min.   :-0.9872248  "	"Min.   :-0.9946308  "	"Min.   :-0.9893988  "	"Min.   :-0.9920184  "	"Min.   :-0.9950738  "	"Min.   :-0.9904681  "	"Min.   :-0.9931078  "	"Min.   :-0.9868006  "	"Min.   :-0.9876485  "	"Min.   :-0.9939983  "	"Min.   :-0.9943667  "	"Min.   :-0.9976174  "	"Min.   :-0.9975852  "	"Min.   :-0.9865352  "	"Min.   :-0.9814688  "	"Min.   :-0.9931226  "	"Min.   :-0.9940255  "	"Min.   :-0.9859578  "	"Min.   :-0.9946522  "	"Min.   :-0.9943531  "	"Min.   :-0.9867253  "	"Min.   :0.22159824  "	"Min.   :-0.04051395  "	"Min.   :-0.15251390  "	"Min.   :-0.9960686  "	"Min.   :-0.9902409  "	"Min.   :-0.9876587  "	"Min.   :0.04268810  "	"Min.   :-0.03868721  "	"Min.   :-0.06745839  "	"Min.   :-0.9946045  "	"Min.   :-0.9895136  "	"Min.   :-0.9932883  "	"Min.   :-0.9928147  "	"Min.   :-0.9946469  "	"Min.   :-0.9864932  "	"Min.   :-0.9864645  "	"Min.   :-0.20577543  "	"Min.   :-0.20420536  "	"Min.   :-0.07245460  "	"Min.   :-0.9942766  "	"Min.   :-0.9942105  "	"Min.   :-0.9855384  "	"Min.   :-0.15721254  "	"Min.   :-0.07680899  "	"Min.   :-0.09249985  "	"Min.   :-0.9965425  "	"Min.   :-0.9970816  "	"Min.   :-0.9953808  "	"Min.   :-0.9973225  "	"Min.   :-0.9976661  "	"Min.   :-0.9807408  "	"Min.   :-0.9813727  "	"Min.   :-0.6800432  "	"Min.   :-0.4798948  "	"Min.   :-0.4950887  "	"Min.   :-0.9967642  "	"Min.   :-0.9942476  "	"Min.   :-0.9909572  "	"Min.   :-0.9864932  "	"Min.   :-0.9864645  "
	"1st Qu.: 8.0  "	"Class :character  "	"1st Qu.:-0.9786885  "	"1st Qu.:-0.9536143  "	"1st Qu.:-0.9619469  "	"1st Qu.:-0.9819917  "	"1st Qu.:-0.9404151  "	"1st Qu.:-0.9459401  "	"1st Qu.:-0.9828381  "	"1st Qu.:-0.9725373  "	"1st Qu.:-0.9796174  "	"1st Qu.:-0.9847182  "	"1st Qu.:-0.9736988  "	"1st Qu.:-0.9837475  "	"1st Qu.:-0.9559584  "	"1st Qu.:-0.9451633  "	"1st Qu.:-0.9769719  "	"1st Qu.:-0.9751967  "	"1st Qu.:-0.9813016  "	"1st Qu.:-0.9801552  "	"1st Qu.:-0.9616115  "	"1st Qu.:-0.9487799  "	"1st Qu.:-0.9697364  "	"1st Qu.:-0.9699617  "	"1st Qu.:-0.9624244  "	"1st Qu.:-0.9750148  "	"1st Qu.:-0.9601717  "	"1st Qu.:-0.9642550  "	"1st Qu.:0.27121328  "	"1st Qu.:-0.02002198  "	"1st Qu.:-0.11207445  "	"1st Qu.:-0.9798680  "	"1st Qu.:-0.9420508  "	"1st Qu.:-0.9498075  "	"1st Qu.:0.07395687  "	"1st Qu.: 0.00046640  "	"1st Qu.:-0.01060106  "	"1st Qu.:-0.9831834  "	"1st Qu.:-0.9723987  "	"1st Qu.:-0.9826614  "	"1st Qu.:-0.9807406  "	"1st Qu.:-0.9765475  "	"1st Qu.:-0.9572810  "	"1st Qu.:-0.9430046  "	"1st Qu.:-0.04711588  "	"1st Qu.:-0.08954963  "	"1st Qu.: 0.07474953  "	"1st Qu.:-0.9734658  "	"1st Qu.:-0.9629329  "	"1st Qu.:-0.9609495  "	"1st Qu.:-0.10322298  "	"1st Qu.:-0.04551618  "	"1st Qu.:-0.06172450  "	"1st Qu.:-0.9799815  "	"1st Qu.:-0.9832135  "	"1st Qu.:-0.9847851  "	"1st Qu.:-0.9851546  "	"1st Qu.:-0.9804540  "	"1st Qu.:-0.9461307  "	"1st Qu.:-0.9476332  "	"1st Qu.: 0.8375929  "	"1st Qu.:-0.2331878  "	"1st Qu.:-0.1172614  "	"1st Qu.:-0.9824517  "	"1st Qu.:-0.9711466  "	"1st Qu.:-0.9605094  "	"1st Qu.:-0.9572810  "	"1st Qu.:-0.9430046  "
	"Median :15.5  "	"Mode  :character  "	"Median :-0.7690931  "	"Median :-0.5949843  "	"Median :-0.7236017  "	"Median :-0.7469988  "	"Median :-0.5133775  "	"Median :-0.6441493  "	"Median :-0.8126410  "	"Median :-0.7816560  "	"Median :-0.8706639  "	"Median :-0.8253923  "	"Median :-0.7851519  "	"Median :-0.8951207  "	"Median :-0.6702710  "	"Median :-0.6512629  "	"Median :-0.7940477  "	"Median :-0.8126188  "	"Median :-0.8778966  "	"Median :-0.8940684  "	"Median :-0.7657094  "	"Median :-0.7727282  "	"Median :-0.7299613  "	"Median :-0.8140975  "	"Median :-0.7909314  "	"Median :-0.8085989  "	"Median :-0.7963779  "	"Median :-0.8224004  "	"Median :0.27696494  "	"Median :-0.01726205  "	"Median :-0.10819134  "	"Median :-0.7525620  "	"Median :-0.5089654  "	"Median :-0.6517574  "	"Median :0.07639997  "	"Median : 0.00946979  "	"Median :-0.00386062  "	"Median :-0.8103646  "	"Median :-0.7756403  "	"Median :-0.8836567  "	"Median :-0.8167786  "	"Median :-0.8013793  "	"Median :-0.4828836  "	"Median :-0.6074281  "	"Median :-0.02870507  "	"Median :-0.07318229  "	"Median : 0.08512146  "	"Median :-0.7889918  "	"Median :-0.8016837  "	"Median :-0.8010011  "	"Median :-0.09868336  "	"Median :-0.04111754  "	"Median :-0.05342961  "	"Median :-0.8396488  "	"Median :-0.8941779  "	"Median :-0.8609644  "	"Median :-0.8647946  "	"Median :-0.8809270  "	"Median :-0.6550798  "	"Median :-0.7420443  "	"Median : 0.9208389  "	"Median :-0.1278224  "	"Median : 0.0238412  "	"Median :-0.9694657  "	"Median :-0.9590330  "	"Median :-0.9450024  "	"Median :-0.4828836  "	"Median :-0.6074281  "
	"Mean   :15.5  "	NA						"Mean   :-0.5758000  "	"Mean   :-0.4887327  "	"Mean   :-0.6297388  "	"Mean   :-0.5522011  "	"Mean   :-0.4814787  "	"Mean   :-0.5823614  "	"Mean   :-0.6139282  "	"Mean   :-0.5881631  "	"Mean   :-0.7143585  "	"Mean   :-0.6121033  "	"Mean   :-0.5707310  "	"Mean   :-0.7564894  "	"Mean   :-0.5365167  "	"Mean   :-0.6209633  "	"Mean   :-0.5756175  "	"Mean   :-0.5991609  "	"Mean   :-0.7563853  "	"Mean   :-0.7715171  "	"Mean   :-0.6670991  "	"Mean   :-0.6723223  "	"Mean   :-0.6367396  "	"Mean   :-0.6766868  "	"Mean   :-0.6043912  "	"Mean   :-0.7110357  "	"Mean   :-0.6454334  "	"Mean   :-0.6577466  "	"Mean   :0.27430274  "	"Mean   :-0.01787552  "	"Mean   :-0.10916382  "	"Mean   :-0.5576901  "	"Mean   :-0.4604626  "	"Mean   :-0.5755602  "	"Mean   :0.07947356  "	"Mean   : 0.00756521  "	"Mean   :-0.00495340  "	"Mean   :-0.5949467  "	"Mean   :-0.5654147  "	"Mean   :-0.7359577  "	"Mean   :-0.6079296  "	"Mean   :-0.5841756  "	"Mean   :-0.4972897  "	"Mean   :-0.5439087  "	"Mean   :-0.03243716  "	"Mean   :-0.07425957  "	"Mean   : 0.08744465  "	"Mean   :-0.6916399  "	"Mean   :-0.6533020  "	"Mean   :-0.6164353  "	"Mean   :-0.09605680  "	"Mean   :-0.04269278  "	"Mean   :-0.05480188  "	"Mean   :-0.7036327  "	"Mean   :-0.7635518  "	"Mean   :-0.7095592  "	"Mean   :-0.7363693  "	"Mean   :-0.7550152  "	"Mean   :-0.5651631  "	"Mean   :-0.6303947  "	"Mean   : 0.6974775  "	"Mean   :-0.0162128  "	"Mean   : 0.0741279  "	"Mean   :-0.9637525  "	"Mean   :-0.9524296  "	"Mean   :-0.9364010  "	"Mean   :-0.4972897  "	"Mean   :-0.5439087  "
	"3rd Qu.:23.0  "	NA						"3rd Qu.:-0.2174418  "	"3rd Qu.:-0.0634106  "	"3rd Qu.:-0.3183441  "	"3rd Qu.:-0.1966392  "	"3rd Qu.:-0.0791254  "	"3rd Qu.:-0.2654712  "	"3rd Qu.:-0.2819540  "	"3rd Qu.:-0.1963053  "	"3rd Qu.:-0.4696900  "	"3rd Qu.:-0.2475329  "	"3rd Qu.:-0.1685398  "	"3rd Qu.:-0.5437870  "	"3rd Qu.:-0.1622106  "	"3rd Qu.:-0.3654056  "	"3rd Qu.:-0.1872346  "	"3rd Qu.:-0.2668173  "	"3rd Qu.:-0.5831149  "	"3rd Qu.:-0.6080659  "	"3rd Qu.:-0.4086771  "	"3rd Qu.:-0.4276942  "	"3rd Qu.:-0.3386789  "	"3rd Qu.:-0.4458002  "	"3rd Qu.:-0.2634814  "	"3rd Qu.:-0.4813274  "	"3rd Qu.:-0.4154223  "	"3rd Qu.:-0.3916245  "	"3rd Qu.:0.28000456  "	"3rd Qu.:-0.01493580  "	"3rd Qu.:-0.10442875  "	"3rd Qu.:-0.1983772  "	"3rd Qu.:-0.0307677  "	"3rd Qu.:-0.2306395  "	"3rd Qu.:0.08329535  "	"3rd Qu.: 0.01340083  "	"3rd Qu.: 0.00195821  "	"3rd Qu.:-0.2232808  "	"3rd Qu.:-0.1483314  "	"3rd Qu.:-0.5121234  "	"3rd Qu.:-0.2456105  "	"3rd Qu.:-0.2172568  "	"3rd Qu.:-0.0919023  "	"3rd Qu.:-0.2089863  "	"3rd Qu.:-0.01676084  "	"3rd Qu.:-0.06113463  "	"3rd Qu.: 0.10176915  "	"3rd Qu.:-0.4414247  "	"3rd Qu.:-0.4195835  "	"3rd Qu.:-0.3106140  "	"3rd Qu.:-0.09110449  "	"3rd Qu.:-0.03842378  "	"3rd Qu.:-0.04898496  "	"3rd Qu.:-0.4628889  "	"3rd Qu.:-0.5861055  "	"3rd Qu.:-0.4740556  "	"3rd Qu.:-0.5118626  "	"3rd Qu.:-0.5767388  "	"3rd Qu.:-0.2158855  "	"3rd Qu.:-0.3602123  "	"3rd Qu.: 0.9425169  "	"3rd Qu.: 0.0877306  "	"3rd Qu.: 0.1494559  "	"3rd Qu.:-0.9508565  "	"3rd Qu.:-0.9370150  "	"3rd Qu.:-0.9179854  "	"3rd Qu.:-0.0919023  "	"3rd Qu.:-0.2089863  "
	"Max.   :30.0  "	NA						"Max.   : 0.5370120  "	"Max.   : 0.5241877  "	"Max.   : 0.2807360  "	"Max.   : 0.6585065  "	"Max.   : 0.5601913  "	"Max.   : 0.6871242  "	"Max.   : 0.4743173  "	"Max.   : 0.2767169  "	"Max.   : 0.1577757  "	"Max.   : 0.4768039  "	"Max.   : 0.3497713  "	"Max.   :-0.0062365  "	"Max.   : 0.5866376  "	"Max.   : 0.1786846  "	"Max.   : 0.5384048  "	"Max.   : 0.3163464  "	"Max.   : 0.1466186  "	"Max.   : 0.2878346  "	"Max.   : 0.2039798  "	"Max.   : 0.2366597  "	"Max.   : 0.4749624  "	"Max.   : 0.3288170  "	"Max.   : 0.4924144  "	"Max.   : 0.1966133  "	"Max.   : 0.6462336  "	"Max.   : 0.5224542  "	"Max.   :0.30146102  "	"Max.   :-0.00130829  "	"Max.   :-0.07537847  "	"Max.   : 0.6269171  "	"Max.   : 0.6169370  "	"Max.   : 0.6090179  "	"Max.   :0.13019304  "	"Max.   : 0.05681859  "	"Max.   : 0.03805336  "	"Max.   : 0.5442730  "	"Max.   : 0.3553067  "	"Max.   : 0.0310157  "	"Max.   : 0.4344904  "	"Max.   : 0.4506121  "	"Max.   : 0.6446043  "	"Max.   : 0.4284059  "	"Max.   : 0.19270448  "	"Max.   : 0.02747076  "	"Max.   : 0.17910206  "	"Max.   : 0.2676572  "	"Max.   : 0.4765187  "	"Max.   : 0.5648758  "	"Max.   :-0.02209163  "	"Max.   :-0.01320228  "	"Max.   :-0.00694066  "	"Max.   : 0.1791486  "	"Max.   : 0.2959459  "	"Max.   : 0.1932065  "	"Max.   : 0.0875817  "	"Max.   : 0.2501732  "	"Max.   : 0.4180046  "	"Max.   : 0.2999760  "	"Max.   : 0.9745087  "	"Max.   : 0.9565938  "	"Max.   : 0.9578730  "	"Max.   :-0.8295549  "	"Max.   :-0.6435784  "	"Max.   :-0.6101612  "	"Max.   : 0.6446043  "	"Max.   : 0.4284059  "


Note that object dxmk is keep the original variable in feature for this summary, which keeping the table above more easy to observe.

#### Variable: subject ####
> unique(dxm$subject)

    [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

#### Variable: activity ####
>unique(dxm$activity)

    [1] "LAYING"   "SITTING"   "STANDING"   "WALKING"   "WALKING_DOWNSTAIRS"   "WALKING_UPSTAIRS"

#### Name of the feature variable ####

According to feature_info.txt file, appropriate label to descriptive list below:

	t					->	Time.
	f					->	Frequency.
	BodyBody or Body	->	Body.
	Gravity				->	Gravity.
	Acc or Acc.			->	Acceleration.
	Gyro or Gyro.		->	Gyroscope.
	Jerk or Jerk.		->	Jerk.
	Mag or Mag.			->	Magnitude.
	mean				->	mean.
	std					->	std.

Note that:

- mean():	Mean value
- std():		Standard deviation

## Notes ##
1. Each variable forms a column.
2. Each observation forms a row.
3. Each type of observational unit forms a table.