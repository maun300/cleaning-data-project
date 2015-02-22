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

*tBodyAcc-XYZ
*tGravityAcc-XYZ
*tBodyAccJerk-XYZ
*tBodyGyro-XYZ
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

<<<<<<< HEAD
<table>
<tr>
<th>column</th><th>name</th><th>type</th><th>comment</th>
</tr>
<tr><td>1</td><td>activity</td><td>factor</td><td>Levels: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS</td></tr>
<tr><td>2</td><td>subjectid</td><td>int</td><td>Id of the subject who carried out the experiment</td></tr>
<tr><td>3</td><td>tBodyAccmeanX</td><td>num</td></tr>
<tr><td>4</td><td>tBodyAccmeanY</td><td>num</td></tr>
<tr><td>5</td><td>tBodyAccmeanZ</td><td>num</td></tr>
<tr><td>6</td><td>tBodyAccstdX</td><td>num</td></tr>
<tr><td>7</td><td>tBodyAccstdY</td><td>num</td></tr>
<tr><td>8</td><td>tBodyAccstdZ</td><td>num</td></tr>
<tr><td>9</td><td>tGravityAccmeanX</td><td>num</td></tr>
<tr><td>10</td><td>tGravityAccmeanY</td><td>num</td></tr>
<tr><td>11</td><td>tGravityAccmeanZ</td><td>num</td></tr>
<tr><td>12</td><td>tGravityAccstdX</td><td>num</td></tr>
<tr><td>13</td><td>tGravityAccstdY</td><td>num</td></tr>
<tr><td>14</td><td>tGravityAccstdZ</td><td>num</td></tr>
<tr><td>15</td><td>tBodyAccJerkmeanX</td><td>num</td></tr>
<tr><td>16</td><td>tBodyAccJerkmeanY</td><td>num</td></tr>
<tr><td>17 <tr><td>tBodyAccJerkmeanZ</td><td>num</td></tr>
<tr><td>18</td><td>tBodyAccJerkstdX</td><td>num</td></tr>
<tr><td>19</td><td>tBodyAccJerkstdY</td><td>num</td></tr>
<tr><td>20</td><td>tBodyAccJerkstdZ</td><td>num</td></tr>
<tr><td>21</td><td>tBodyGyromeanX</td><td>num</td></tr>
<tr><td>22</td><td>tBodyGyromeanY</td><td>num</td></tr>
<tr><td>23</td><td>tBodyGyromeanZ</td><td>num</td></tr>
<tr><td>24</td><td>tBodyGyrostdX</td><td>num</td></tr>
<tr><td>25</td><td>tBodyGyrostdY</td><td>num</td></tr>
<tr><td>26</td><td>tBodyGyrostdZ</td><td>num</td></tr>
<tr><td>27</td><td>tBodyGyroJerkmeanX</td><td>num</td></tr>
<tr><td>28</td><td>tBodyGyroJerkmeanY</td><td>num</td></tr>
<tr><td>29</td><td>tBodyGyroJerkmeanZ</td><td>num</td></tr>
<tr><td>30</td><td>tBodyGyroJerkstdX</td><td>num</td></tr>
<tr><td>31</td><td>tBodyGyroJerkstdY</td><td>num</td></tr>
<tr><td>32</td><td>tBodyGyroJerkstdZ</td><td>num</td></tr>
<tr><td>33</td><td>tBodyAccMagmean</td><td>num</td></tr>
<tr><td>34</td><td>tBodyAccMagstd</td><td>num</td></tr>
<tr><td>35</td><td>tGravityAccMagmean</td><td>num</td></tr>
<tr><td>36</td><td>tGravityAccMagstd</td><td>num</td></tr>
<tr><td>37</td><td>tBodyAccJerkMagmean</td><td>num</td></tr>
<tr><td>38</td><td>tBodyAccJerkMagstd</td><td>num</td></tr>
<tr><td>39</td><td>tBodyGyroMagmean</td><td>num</td></tr>
<tr><td>40</td><td>tBodyGyroMagstd</td><td>num</td></tr>
<tr><td>41</td><td>tBodyGyroJerkMagmean</td><td>num</td></tr>
<tr><td>42</td><td>tBodyGyroJerkMagstd</td><td>num</td></tr>
<tr><td>43</td><td>fBodyAccmeanX</td><td>num</td></tr>
<tr><td>44</td><td>fBodyAccmeanY</td><td>num</td></tr>
<tr><td>45</td><td>fBodyAccmeanZ</td><td>num</td></tr>
<tr><td>46</td><td>fBodyAccstdX</td><td>num</td></tr>
<tr><td>47</td><td>fBodyAccstdY</td><td>num</td></tr>
<tr><td>48</td><td>fBodyAccstdZ</td><td>num</td></tr>
<tr><td>49</td><td>fBodyAccJerkmeanX</td><td>num</td></tr>
<tr><td>50</td><td>fBodyAccJerkmeanY</td><td>num</td></tr>
<tr><td>51</td><td>fBodyAccJerkmeanZ</td><td>num</td></tr>
<tr><td>52</td><td>fBodyAccJerkstdX</td><td>num</td></tr>
<tr><td>53</td><td>fBodyAccJerkstdY</td><td>num</td></tr>
<tr><td>54</td><td>fBodyAccJerkstdZ</td><td>num</td></tr>
<tr><td>55</td><td>fBodyGyromeanX</td><td>num</td></tr>
<tr><td>56</td><td>fBodyGyromeanY</td><td>num</td></tr>
<tr><td>57</td><td>fBodyGyromeanZ</td><td>num</td></tr>
<tr><td>58</td><td>fBodyGyrostdX</td><td>num</td></tr>
<tr><td>59</td><td>fBodyGyrostdY</td><td>num</td></tr>
<tr><td>60</td><td>fBodyGyrostdZ</td><td>num</td></tr>
<tr><td>61</td><td>fBodyAccMagmean</td><td>num</td></tr>
<tr><td>62</td><td>fBodyAccMagstd</td><td>num</td></tr>
<tr><td>63</td><td>fBodyBodyAccJerkMagmean</td><td>num</td></tr>
<tr><td>64</td><td>fBodyBodyAccJerkMagstd</td><td>num</td></tr>
<tr><td>65</td><td>fBodyBodyGyroMagmean</td><td>num</td></tr>
<tr><td>66</td><td>fBodyBodyGyroMagstd</td><td>num</td></tr>
<tr><td>67</td><td>fBodyBodyGyroJerkMagmean	num</td></tr>
<tr><td>68</td><td>fBodyBodyGyroJerkMagstd</td><td>num</td></tr>
</table>
=======
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
>>>>>>> 041a99f6860e4a8b61bc38c0da8872753979c10a
