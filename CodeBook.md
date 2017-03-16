The data, and after being processed, are stored in the `tidy_data.txt` file.\
See the [Readme.md](https://github.com/Mouzri/Getting-and-cleaning-data-coursera-project/blob/master/README.md) file for background information on this data.\
# The Code Book
The different variables of the tidy data can be split into two categories:
* The identifiers
1. `The subject`.
Represent an ID of the performer: integer(from 1 to 30)
2. `the activity`.
Represent the activity of the performer. A factor of six levels:
   - Walking
   - Walking_Upstairs
   - Walking_Downstairs
   - Sitting
   - Standing
   - Laying 
* The Measurements \
Represent the different measurements that were taken (Acceleration, Jerk.....). The names were abreviated such that each letter stands for a specific meaning. The following table summarise the variables and their significations.\


|Letter   |Stands for   |
|---------|-------------|
|t        |time         |
|B|Body|
|M|Mean|
|Mg|Mag|
|J|Jerk|
|A|Acceleration|
|F|Frequency|
|G|Gravity|
|Gr|Gyroscope|
|S|Standard deviation|
|X|Direction X|
|Y|Direction Y|
|Z|DirectionZ|

The different measurements are as follow:
* tBAMX      
* tBAMY      
* tBAMZ     
* tBASX      
* tBASY      
* tBASZ     
* tGAMX      
* tGAMY     
* tGAMZ
* tGASX
* tGASY
* tGASZ
* tBAJMX    
* tBAJMY     
* tBAJMZ     
* tBAJSX    
* tBAJSY     
* tBAJSZ    
* tBGrMX
* tBGrMY     
* tBGrMZ    
* tBGrSX     
* tBGrSY    
* BGrSZ    
* tBGrJMX    
* tBGrJMY    
* tBGrJMZ    
* tBGrJSX   
* tBGrJSY   
* tBGrJSZ    
* tBAMgM     
* tBAMgS     
* tGAMgM    
* tGAMgS    
* tBAJMgM    
* tBAJMgS    
* tBGrMgM    
* tBGrMgS   
* tBGrJMgM  
* tBGrJMgS   
* fBAMX      
* fBAMY      
* fBAMZ     
* fBASX     
* fBASY   
* fBASZ    
* fBAMFX  
* fBAMFY    
* fBAMFZ    
* fBAJMX   
* fBAJMY    
* fBAJMZ    
* fBAJSX    
* fBAJSY    
* fBAJSZ     
* fBAJMFX    
* fBAJMFY    
* fBAJMFZ   
* fBGrMX    
* fBGrMY     
* fBGrMZ     
* fBGrSX     
* fBGrSY   
* fBGrSZ    
* fBGrMFX    
* fBGrMFY    
* fBGrMFZ    
* fBAMgM    
* fBAMgS    
* fBAMgMF    
* fBBAJMgM   
* fBBAJMgS   
* fBBAJMgMF 
* fBBGrMgM  
* fBBGrMgS   
* fBBGrMgMF  
* fBBGrJMgM  
* fBBGrJMgS 
* fBBGrJMgMF
