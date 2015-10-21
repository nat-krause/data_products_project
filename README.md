###How to use run_analysis.R

It's all one big script. You could just paste the whole thing into R and run it (might want to leave out the ##start and ##end comments if you're doing this). Assuming you have the UCI HAR data set saved in a folder called "UCI HAR Dataset" in your working directory, it would think for a while and then produce tidy data sets. Alternately, you could wrap the script in code reading uci.har.data.grabber <- function() { at the beginning and then } at the end. This would create a function which can be called by running uci.har.data.grabber() whenever you like.

###Let's dive right in!

The first thing this code does is check to make sure the dplyr package is installed, and install it if it is not already. dplyr is then loaded.

Next, all six source documents are loaded (X_test, y_test, subject_test, and the equivalent _train files) plus the features.txt file for column names.

###Combining everything into one data frame with named columns

Now, the script uses cbind to join the three test files and the three train files into one data.frame each (total two), and then an rbind to join everything into one big file.

The script then gets busily to work on preparing the column names from features.txt to be added as column names. gsub pulls out columns with std() or mean() in the name and flags them as "relevant". make.names ensures that everything in this list is a valid and unique name.

At this point, the script uses colnames to replace the data set's column names. Column names are not in final form yet; they are simply in an intermediate form in which they can be worked.

Now, to replace the activity code with a descriptive activity name. For this purpose, the script now creates a simple function called descriptive_activity_names and then applies it to the existing field, creating a new column in the master data.

###Narrowing down to relevant fields, plus formatting

Okay, next the script narrows the fields down to only those that are wanted for the output tidy data set. These have all been flagged as relevant in earlier steps. Essentially, the relevant fields are activity, subject, and anything that included mean() or std() in the original feature name. The resulting data frame is called har_data, which is essentially the main output of this process; it will undergo minor modifications below.

After reordering the columns with the subject column first, the next goal of the script is to give descriptive names to the columns. This is not so easy, because the observations demand a fairly technical and verbose description. The script errs on the side of explicit description rather than brevity. Changes are made in the column names using a function called descriptive.names.samsung which basically applies a series of gsub statements.

###Output of tidy data

At this point, the har_data data frame is considered tidy. The script uses write.table to save a text version in the working directory.

Note that, aside from replacing the numerical activity code with a plain-language description, no calculations or other modifications have been made to the values in this data set.

To produce a summary, the pipeline syntax provided in dplyr is used. The data from har_data is subjected to a group_by on subject and activity, and then summarise_each is used with mean to take the average of each other field subsetted by subject and activity. The output is called har_summary. A further line adjusts the names of the columns in the summary to include mean.of., lest there be any confusion about the fact that these are calculated summary fields.

Lastly, the script saves har_summary as a text file to the working directory.
