Variables:

1. subject: 30 subjects with ID from 1 to 30. It comes from combining subject_test and subject_train.

2. activity: 6 activities from combining y_test and y_train.

          1 WALKING
 
          2 WALKING_UPSTAIRS
 
          3 WALKING_DOWNSTAIRS
 
          4 SITTING  
          
          5 STANDING
 
          6 LAYING

3. Processed feature variables: The original dataset has 561 feature variables. We only select the variables that measure mean and standard deviation of each feature. This leads to 79 feature variables.
The variables selected include: 
tBodyAcc-mean()-XYZ     (renamed to "tBodyAcc.mean.X" "tBodyAcc.mean.Y" "tBodyAcc.mean.Z" Similar name changes made for the rest of the variables)
tBodyAcc-std()-XYZ      (renamed to "tBodyAcc.std.X" "tBodyAcc.std.Y" "tBodyAcc.std.Z"  Similar name changes made for the rest of the variables)
tGravityAcc-mean()-XYZ
tGravityAcc-std()-XYZ
tBodyAccJerk--mean()-XYZ
tBodyAccJerk--std()-XYZ
tBodyGyro-mean()-XYZ
tBodyGyro-std()-XYZ
tBodyGyroJerk-mean()-XYZ
tBodyGyroJerk-std()-XYZ
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-XYZ
fBodyAcc-std()-XYZ
fBodyAccJerk-mean()-XYZ
fBodyAccJerk-std()-XYZ
fBodyGyro-mean()-XYZ
fBodyGyro-std()-XYZ
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyAccJerkMag-mean()
fBodyAccJerkMag-std()
fBodyGyroMag-mean()
fBodyGyroMag-std()
fBodyGyroJerkMag-mean()   
fBodyGyroJerkMag-std()    

The angle variables are also included:
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean                          

Duplicated variable names: add .2 to the end of the duplicated varialbe name
 for example: "fBodyAcc-bandsEnergy()-1,8"   "fBodyAcc-bandsEnergy()-1,8.2"  
              "fBodyAcc-bandsEnergy()-9,16"  "fBodyAcc-bandsEnergy()-9,16.2"        
Add .2 to the following duplicated variable names: 
"fBodyAcc-bandsEnergy()-17,24"         "fBodyAcc-bandsEnergy()-25,32"        
"fBodyAcc-bandsEnergy()-33,40"         "fBodyAcc-bandsEnergy()-41,48"        
"fBodyAcc-bandsEnergy()-49,56"         "fBodyAcc-bandsEnergy()-57,64"        
"fBodyAcc-bandsEnergy()-1,16"          "fBodyAcc-bandsEnergy()-17,32"        
"fBodyAcc-bandsEnergy()-33,48"         "fBodyAcc-bandsEnergy()-49,64"        
"fBodyAcc-bandsEnergy()-1,24"          "fBodyAcc-bandsEnergy()-25,48"

============================================================================================
The original feature variables:  The following are from the original codebook, "feature_info.txt". 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'


