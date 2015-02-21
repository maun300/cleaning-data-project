# codebook

##Study design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
------------------------------
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

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

##Code book

Units: Variables are normalized and bounded within [-1,1].

The variables are the mean of the mean and standard deviation for each feature grouped by activity and subject.

column	name				type		comment
1  	activity              		factor		Levels: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
2  	subjectid               	int		Id of the subject who carried out the experiment
3  	tBodyAccmeanX           	num
4  	tBodyAccmeanY           	num
5  	tBodyAccmeanZ           	num
6  	tBodyAccstdX            	num
7  	tBodyAccstdY            	num
8  	tBodyAccstdZ            	num
9  	tGravityAccmeanX        	num
10 	tGravityAccmeanY        	num
11 	tGravityAccmeanZ        	num
12 	tGravityAccstdX         	num
13 	tGravityAccstdY         	num
14 	tGravityAccstdZ         	num
15 	tBodyAccJerkmeanX       	num
16 	tBodyAccJerkmeanY       	num
17 	tBodyAccJerkmeanZ       	num
18 	tBodyAccJerkstdX        	num
19 	tBodyAccJerkstdY        	num
20 	tBodyAccJerkstdZ        	num
21 	tBodyGyromeanX          	num
22 	tBodyGyromeanY          	num
23 	tBodyGyromeanZ          	num
24 	tBodyGyrostdX           	num
25 	tBodyGyrostdY           	num
26 	tBodyGyrostdZ           	num
27 	tBodyGyroJerkmeanX      	num
28 	tBodyGyroJerkmeanY      	num
29 	tBodyGyroJerkmeanZ      	num
30 	tBodyGyroJerkstdX       	num
31 	tBodyGyroJerkstdY       	num
32 	tBodyGyroJerkstdZ       	num
33 	tBodyAccMagmean         	num
34 	tBodyAccMagstd          	num
35 	tGravityAccMagmean      	num
36 	tGravityAccMagstd       	num
37 	tBodyAccJerkMagmean     	num
38 	tBodyAccJerkMagstd      	num
39 	tBodyGyroMagmean        	num
40 	tBodyGyroMagstd         	num
41 	tBodyGyroJerkMagmean    	num
42 	tBodyGyroJerkMagstd     	num
43 	fBodyAccmeanX           	num
44 	fBodyAccmeanY           	num
45 	fBodyAccmeanZ           	num
46 	fBodyAccstdX            	num
47 	fBodyAccstdY            	num
48 	fBodyAccstdZ            	num
49 	fBodyAccJerkmeanX       	num
50 	fBodyAccJerkmeanY       	num
51 	fBodyAccJerkmeanZ       	num
52 	fBodyAccJerkstdX        	num
53 	fBodyAccJerkstdY        	num
54 	fBodyAccJerkstdZ        	num
55 	fBodyGyromeanX          	num
56 	fBodyGyromeanY          	num
57 	fBodyGyromeanZ          	num
58 	fBodyGyrostdX           	num
59 	fBodyGyrostdY           	num
60 	fBodyGyrostdZ           	num
61 	fBodyAccMagmean         	num
62 	fBodyAccMagstd          	num
63 	fBodyBodyAccJerkMagmean 	num
64 	fBodyBodyAccJerkMagstd  	num
65 	fBodyBodyGyroMagmean    	num
66 	fBodyBodyGyroMagstd     	num
67 	fBodyBodyGyroJerkMagmean	num
68 	fBodyBodyGyroJerkMagstd 	num
