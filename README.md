GettingAndCleaningData
======================

Getting and Cleaning Data Course Project

The script consists of two functions, and creates two data-sets, **out1** and **out2**.  
The dataset **out1** is created by calling the function **CreateCombinedData**.  
This does the following:  
- The data from the x_test and x_train files are read from files and combined into a single set.  
- The columns in this dataset are then labelled using the data from the features.txt file.  
- Columns whose labels do no include the string mean() or sd() are removed, leaving 66 columns.  
- The activity numbers for each row are read from the file y_train.txt, labelled with descriptions, and combined with the dataset.   
- The dataset is then returned.  

The dataset **out2** is created by calling the function **AggregateActivitiesAndSubjects**.

This takes the first dataset as a parameter, and does the following:

- Combines the data from the subject_test and subject_train files.  
- Creates a new dataset combining the subject column with the data in out1 
- Aggregates the data by activity and subject, using the mean() function to return the average of the aggregated values in the dataseet.  
- This dataset is then returned.  
