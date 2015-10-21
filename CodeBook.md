###subject and activity

The subject field is an integer code referencing the subject who performed the activity. activity is a plain English description, retrieved by correlating numerical codes in the retrieved y_ label files with the descriptions retrieved from activity_labels.txt

###Measurements

For each measurement, the mean value (column names including "Mean") and standard deviation (column names including "Sigma") are provided. Prior to the summary stage (see below), no calculations or transformations were done on these values (the mean and standard deviation are the calculations performed prior to my retrieval of the data, presumably by the people who originally gathered the the data).

The following is verbatim from the features_info which was retrieved along with the UCI data set, except that column names have been modified to reflect the style of this script's output.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccmeter[XYZ]dimen and timeGyroscope[XYZ]dimen. These time domain signals (prefix 'time') were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccmeter[XYZ]dimen and timeGravAccmeter[XYZ]dimen) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccmeterJerk[XYZ]dimen and timeGyroscopeJerk[XYZ]dimen). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccmeterMagnitude, timeGravAccmeterMagnitude, timeBodyAccmeterJerkMagnitude, timeBodyGyroMagnitude, timeBodyGyroJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccmeter[XYZ]dimen, frequencyBodyAccmeterJerk[XYZ]dimen, frequencyBodyGyroscope[XYZ]dimen, frequencyBodyAccmeterJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'Xdimen' , 'Ydimen', and 'Zdimen' is used to denote 3-axial signals in the X, Y and Z directions.

###List of fields
subject
activity
timeBodyAccmeterMeanXdimen
timeBodyAccmeterMeanYdimen
timeBodyAccmeterMeanZdimen
timeBodyAccmeterSigmaXdimen
timeBodyAccmeterSigmaYdimen
timeBodyAccmeterSigmaZdimen
timeGravAccmeterMeanXdimen
timeGravAccmeterMeanYdimen
timeGravAccmeterMeanZdimen
timeGravAccmeterSigmaXdimen
timeGravAccmeterSigmaYdimen
timeGravAccmeterSigmaZdimen
timeBodyAccmeterJerkMeanXdimen
timeBodyAccmeterJerkMeanYdimen
timeBodyAccmeterJerkMeanZdimen
timeBodyAccmeterJerkSigmaXdimen
timeBodyAccmeterJerkSigmaYdimen
timeBodyAccmeterJerkSigmaZdimen
timeBodyGyroscopeMeanXdimen
timeBodyGyroscopeMeanYdimen
timeBodyGyroscopeMeanZdimen
timeBodyGyroscopeSigmaXdimen
timeBodyGyroscopeSigmaYdimen
timeBodyGyroscopeSigmaZdimen
timeBodyGyroscopeJerkMeanXdimen
timeBodyGyroscopeJerkMeanYdimen
timeBodyGyroscopeJerkMeanZdimen
timeBodyGyroscopeJerkSigmaXdimen
timeBodyGyroscopeJerkSigmaYdimen
timeBodyGyroscopeJerkSigmaZdimen
timeBodyAccmeterMagnitudeMean
timeBodyAccmeterMagnitudeSigma
timeGravAccmeterMagnitudeMean
timeGravAccmeterMagnitudeSigma
timeBodyAccmeterJerkMagnitudeMean
timeBodyAccmeterJerkMagnitudeSigma
timeBodyGyroscopeMagnitudeMean
timeBodyGyroscopeMagnitudeSigma
timeBodyGyroscopeJerkMagnitudeMean
timeBodyGyroscopeJerkMagnitudeSigma
frequencyBodyAccmeterMeanXdimen
frequencyBodyAccmeterMeanYdimen
frequencyBodyAccmeterMeanZdimen
frequencyBodyAccmeterSigmaXdimen
frequencyBodyAccmeterSigmaYdimen
frequencyBodyAccmeterSigmaZdimen
frequencyBodyAccmeterJerkMeanXdimen
frequencyBodyAccmeterJerkMeanYdimen
frequencyBodyAccmeterJerkMeanZdimen
frequencyBodyAccmeterJerkSigmaXdimen
frequencyBodyAccmeterJerkSigmaYdimen
frequencyBodyAccmeterJerkSigmaZdimen
frequencyBodyGyroscopeMeanXdimen
frequencyBodyGyroscopeMeanYdimen
frequencyBodyGyroscopeMeanZdimen
frequencyBodyGyroscopeSigmaXdimen
frequencyBodyGyroscopeSigmaYdimen
frequencyBodyGyroscopeSigmaZdimen
frequencyBodyAccmeterMagnitudeMean
frequencyBodyAccmeterMagnitudeSigma
frequencyBodyAccmeterJerkMagnitudeMean
frequencyBodyAccmeterJerkMagnitudeSigma
frequencyBodyGyroscopeMagnitudeMean
frequencyBodyGyroscopeMagnitudeSigma
frequencyBodyGyroscopeJerkMagnitudeMean
frequencyBodyGyroscopeJerkMagnitudeSigma

###Summary

The above refers to the har_data detail data set. On the summary file (har_summary), all fields are the same, except that measurement fields represent a mean of observations by subject and activity, and so are shown with a mean.of. prefix, for instance mean.of.timeBodyAccmeterMeanXdimen, mean.of.timeBodyAccmeterMeanYdimen, etc.
