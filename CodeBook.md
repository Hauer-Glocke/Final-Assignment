#**Criteria:** GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.

#**Task:** Create a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.

#Overview of Steps

To give an understanding what I did, here is an ordered list of how I approached the task in my code:

1. Clear Working Environment
2. Loading necessary libraries
3. Loading the Dataset into a temporary folder
4. Creation of the Activity Labels for the test and train data - Inclusion of step 3
5. Load the subject identifier
6. Load the data files, including step 2
7. Create complete dataframe - Step 1 and 4
8. Create Summary Dataset - Step 5
9. Clean up

Surely, the order could be different, but this is how my code is structured. **The first 3 steps explain themselves.**

#Step 4 - Activity Labels
List of variables/dataframes:

* activity_labels
        * Vector of the six activities
* test_df_activity
        * Vector for activities
        * Merged with activity labels
* train_df_activity
        * Vector for activities
        * Merged with activity labels
* df_activity
        * Merging of both activity-vectors
* Temporary variables:
        * con
        * cur

#Step 5- Subject Identifier

I loaded the subject identifier into "test_df_subjects" and "train_df_subjects". In the second step I merged them into "df_subjects" and cleaned the environment.

#Step 6 - Load the data files, including step 2

Loading of test and train file into "test_df_data" and "train_df_data", later merged int "df_data".

I added additionally the mean and standard deviation (sd), to this dataframe.

#Step 7 - Create complete dataframe - Step 1 and 4

Merging of all subsequent datasets into "df" with the variables:

* subject
* activity
* mean
* sd

#Step 8 - Create Summary Dataset - Step 5

Summary of "df", to see the mean values over subjects and activities. This dataframe is called "df_summary".