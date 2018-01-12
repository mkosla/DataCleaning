Codebook
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'frequency' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAcc-XYZ
timeGravityAcc-XYZ
timeBodyAccJerk-XYZ
timeBodyGyro-XYZ
timeBodyGyroJerk-XYZ
timeBodyAccMag
timeGravityAccMag
timeBodyAccJerkMag
timeBodyGyroMag
timeBodyGyroJerkMag
frequencyBodyAcc-XYZ
frequencyBodyAccJerk-XYZ
frequencyBodyGyro-XYZ
frequencyBodyAccMag
frequencyBodyAccJerkMag
frequencyBodyGyroMag
frequencyBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation
meanFreq: Weighted average of the frequency components to obtain a mean frequency
angle: Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


Below is a complete list of the variables included in the datasets


 [1] "subjectid"                           
 [2] "activity"                            
 [3] "timebodyaccmeanx"                    
 [4] "timebodyaccmeany"                    
 [5] "timebodyaccmeanz"                    
 [6] "timebodyaccstdx"                     
 [7] "timebodyaccstdy"                     
 [8] "timebodyaccstdz"                     
 [9] "timegravityaccmeanx"                 
[10] "timegravityaccmeany"                 
[11] "timegravityaccmeanz"                 
[12] "timegravityaccstdx"                  
[13] "timegravityaccstdy"                  
[14] "timegravityaccstdz"                  
[15] "timebodyaccjerkmeanx"                
[16] "timebodyaccjerkmeany"                
[17] "timebodyaccjerkmeanz"                
[18] "timebodyaccjerkstdx"                 
[19] "timebodyaccjerkstdy"                 
[20] "timebodyaccjerkstdz"                 
[21] "timebodygyromeanx"                   
[22] "timebodygyromeany"                   
[23] "timebodygyromeanz"                   
[24] "timebodygyrostdx"                    
[25] "timebodygyrostdy"                    
[26] "timebodygyrostdz"                    
[27] "timebodygyrojerkmeanx"               
[28] "timebodygyrojerkmeany"               
[29] "timebodygyrojerkmeanz"               
[30] "timebodygyrojerkstdx"                
[31] "timebodygyrojerkstdy"                
[32] "timebodygyrojerkstdz"                
[33] "timebodyaccmagmean"                  
[34] "timebodyaccmagstd"                   
[35] "timegravityaccmagmean"               
[36] "timegravityaccmagstd"                
[37] "timebodyaccjerkmagmean"              
[38] "timebodyaccjerkmagstd"               
[39] "timebodygyromagmean"                 
[40] "timebodygyromagstd"                  
[41] "timebodygyrojerkmagmean"             
[42] "timebodygyrojerkmagstd"              
[43] "frequencybodyaccmeanx"               
[44] "frequencybodyaccmeany"               
[45] "frequencybodyaccmeanz"               
[46] "frequencybodyaccstdx"                
[47] "frequencybodyaccstdy"                
[48] "frequencybodyaccstdz"                
[49] "frequencybodyaccmeanfreqx"           
[50] "frequencybodyaccmeanfreqy"           
[51] "frequencybodyaccmeanfreqz"           
[52] "frequencybodyaccjerkmeanx"           
[53] "frequencybodyaccjerkmeany"           
[54] "frequencybodyaccjerkmeanz"           
[55] "frequencybodyaccjerkstdx"            
[56] "frequencybodyaccjerkstdy"            
[57] "frequencybodyaccjerkstdz"            
[58] "frequencybodyaccjerkmeanfreqx"       
[59] "frequencybodyaccjerkmeanfreqy"       
[60] "frequencybodyaccjerkmeanfreqz"       
[61] "frequencybodygyromeanx"              
[62] "frequencybodygyromeany"              
[63] "frequencybodygyromeanz"              
[64] "frequencybodygyrostdx"               
[65] "frequencybodygyrostdy"               
[66] "frequencybodygyrostdz"               
[67] "frequencybodygyromeanfreqx"          
[68] "frequencybodygyromeanfreqy"          
[69] "frequencybodygyromeanfreqz"          
[70] "frequencybodyaccmagmean"             
[71] "frequencybodyaccmagstd"              
[72] "frequencybodyaccmagmeanfreq"         
[73] "frequencybodybodyaccjerkmagmean"     
[74] "frequencybodybodyaccjerkmagstd"      
[75] "frequencybodybodyaccjerkmagmeanfreq" 
[76] "frequencybodybodygyromagmean"        
[77] "frequencybodybodygyromagstd"         
[78] "frequencybodybodygyromagmeanfreq"    
[79] "frequencybodybodygyrojerkmagmean"    
[80] "frequencybodybodygyrojerkmagstd"     
[81] "frequencybodybodygyrojerkmagmeanfreq"
[82] "angletbodyaccmeangravity"            
[83] "angletbodyaccjerkmeangravitymean"    
[84] "angletbodygyromeangravitymean"       
[85] "angletbodygyrojerkmeangravitymean"   
[86] "anglexgravitymean"                   
[87] "angleygravitymean"                   
[88] "anglezgravitymean"         


