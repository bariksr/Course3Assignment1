# Codebook for tidydataset

## Data Source

This data comes from the Human Activity Recognition Using Smartphones Data Set, which I pulled from here
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Variables

### Identifiers
"subject": An ID from 1:30 that indicates the ID of the subject

"activity": A 6 factor variable that takes the values "WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"

### Measures
All measures are means of the mean and standard deviation features in the original dataset, grouped by subject and activity.
 "TimeBodyAccelerometerMeanX"                     
 "TimeBodyAccelerometerMeanY"                     
 "TimeBodyAccelerometerMeanZ"                     
 "TimeBodyAccelerometerStdDevX"                   
 "TimeBodyAccelerometerStdDevY"                   
 "TimeBodyAccelerometerStdDevZ"                   
 "TimeGravityAccelerometerMeanX"                  
 "TimeGravityAccelerometerMeanY"                  
 "TimeGravityAccelerometerMeanZ"                  
 "TimeGravityAccelerometerStdDevX"                
 "TimeGravityAccelerometerStdDevY"                
 "TimeGravityAccelerometerStdDevZ"                
 "TimeBodyAccelerometerJerkMeanX"                 
 "TimeBodyAccelerometerJerkMeanY"                 
 "TimeBodyAccelerometerJerkMeanZ"                 
 "TimeBodyAccelerometerJerkStdDevX"               
 "TimeBodyAccelerometerJerkStdDevY"               
 "TimeBodyAccelerometerJerkStdDevZ"               
 "TimeBodyGyroscopeMeanX"                         
 "TimeBodyGyroscopeMeanY"                         
 "TimeBodyGyroscopeMeanZ"                         
 "TimeBodyGyroscopeStdDevX"                       
 "TimeBodyGyroscopeStdDevY"                       
 "TimeBodyGyroscopeStdDevZ"                       
 "TimeBodyGyroscopeJerkMeanX"                     
 "TimeBodyGyroscopeJerkMeanY"                     
 "TimeBodyGyroscopeJerkMeanZ"                     
 "TimeBodyGyroscopeJerkStdDevX"                   
 "TimeBodyGyroscopeJerkStdDevY"                   
 "TimeBodyGyroscopeJerkStdDevZ"                   
 "TimeBodyAccelerometerMagnitudeMean"             
 "TimeBodyAccelerometerMagnitudeStdDev"           
 "TimeGravityAccelerometerMagnitudeMean"          
 "TimeGravityAccelerometerMagnitudeStdDev"        
 "TimeBodyAccelerometerJerkMagnitudeMean"         
 "TimeBodyAccelerometerJerkMagnitudeStdDev"       
 "TimeBodyGyroscopeMagnitudeMean"                 
 "TimeBodyGyroscopeMagnitudeStdDev"               
 "TimeBodyGyroscopeJerkMagnitudeMean"             
 "TimeBodyGyroscopeJerkMagnitudeStdDev"           
 "FrequencyBodyAccelerometerMeanX"                
 "FrequencyBodyAccelerometerMeanY"                
 "FrequencyBodyAccelerometerMeanZ"                
 "FrequencyBodyAccelerometerStdDevX"              
 "FrequencyBodyAccelerometerStdDevY"              
 "FrequencyBodyAccelerometerStdDevZ"              
 "FrequencyBodyAccelerometerMeanFreqX"            
 "FrequencyBodyAccelerometerMeanFreqY"            
 "FrequencyBodyAccelerometerMeanFreqZ"            
 "FrequencyBodyAccelerometerJerkMeanX"            
 "FrequencyBodyAccelerometerJerkMeanY"            
 "FrequencyBodyAccelerometerJerkMeanZ"            
 "FrequencyBodyAccelerometerJerkStdDevX"          
 "FrequencyBodyAccelerometerJerkStdDevY"          
 "FrequencyBodyAccelerometerJerkStdDevZ"          
 "FrequencyBodyAccelerometerJerkMeanFreqX"        
 "FrequencyBodyAccelerometerJerkMeanFreqY"        
 "FrequencyBodyAccelerometerJerkMeanFreqZ"        
 "FrequencyBodyGyroscopeMeanX"                    
 "FrequencyBodyGyroscopeMeanY"                    
 "FrequencyBodyGyroscopeMeanZ"                    
 "FrequencyBodyGyroscopeStdDevX"                  
 "FrequencyBodyGyroscopeStdDevY"                  
 "FrequencyBodyGyroscopeStdDevZ"                  
 "FrequencyBodyGyroscopeMeanFreqX"                
 "FrequencyBodyGyroscopeMeanFreqY"                
 "FrequencyBodyGyroscopeMeanFreqZ"                
 "FrequencyBodyAccelerometerMagnitudeMean"        
 "FrequencyBodyAccelerometerMagnitudeStdDev"      
 "FrequencyBodyAccelerometerMagnitudeMeanFreq"    
 "FrequencyBodyAccelerometerJerkMagnitudeMean"    
 "FrequencyBodyAccelerometerJerkMagnitudeStdDev"  
 "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq"
 "FrequencyBodyGyroscopeMagnitudeMean"            
 "FrequencyBodyGyroscopeMagnitudeStdDev"          
 "FrequencyBodyGyroscopeMagnitudeMeanFreq"        
 "FrequencyBodyGyroscopeJerkMagnitudeMean"        
 "FrequencyBodyGyroscopeJerkMagnitudeStdDev"      
 "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq"
 
 The meaning of these measures comes from the original dataset, which can be found here:
 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and says:
"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). "
