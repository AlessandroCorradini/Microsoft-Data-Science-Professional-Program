# Lab 1 - Data and Features

## Lab Assignment 2

his time, you're going to attempt to load your first csv dataset! Open up the starter code located in Module2/assignment2.py. Read through it and follow the directions to:

1. Load up Module2/Datasets/tutorial.csv
2. Print the entire dataframe, using print df
3. Use the .describe() method on the dataset
4. Slice the dataset using [2:4, 'col3']

Note: If Pandas complains about not being able to find the tutorial file, just use the full system path to it rather than a relative path. All paths mentioned in this course are in reference to the Module directory produced by unzipping the course material file.

### Lab Questions 1

Please enter a numeric value (e.g. 0, 1, 10.5, etc) which correctly answers the question(s) below:

When you print the results of calling .describe() on your dataframe, what is the value displayed in the bottom right corner (col3 max)?

**1.044722**

### Lab Questions 2

Which of the many indexing methods did you use to get [2:4,'col3'] working?

**df.loc**

### Lab Questions 3

Please enter a numeric value (e.g. 0, 1, 10.5, etc) which correctly answers the question(s) below:

How many values are returned when you print the results of the [2:4,'col3'] indexing operation?

**2**

## Lab Assignment 3

MIT's Karl Ulrich donated a dataset titled Servo Data Set to the UCI Machine Learning Repository in the 1980's. The dataset has been described as "an interesting collection of data that covers an extremely non-linear phenomenon - predicting the rise time of a servomechanism in terms of two (continuous) gain settings and two (discrete) choices of mechanical linkages."

As noted on the dataset website above, the column names are defined in order as:

['motor', 'screw', 'pgain', 'vgain', 'class']

Your mission, should you choose to accept, is to figure out a few stats about this dataset, which has been conveniently copied to your Module2/Datasets/servo.data. You can get started by opening up the assignment starter code, saved to Module2/assignment3.py.

Note: Before submitting, double check your work. Peek at the first few entries of your dataset, by opening up servo.data with a text editor. After that, use the appropriate command to look at the first few entries of your dataframe; do they match? If it's not a precise match, there might be a few useful parameters in the read_csv() api documentation that will fix your issue!

### Lab Questions

Please enter a numeric value (e.g. 0, 1, 10.5, etc) which correctly answers the question(s) below:

How many samples in this dataset have a vgain feature value equal to 5?

**22**

How many samples in this dataset contain the value E for both motor and screw features? Be sure to validate you've correctly loaded your data before answering!

**6**

What is the mean vgain value of those samples that have a pgain feature value equal to 4?

**2.060606** 

## Lab Assignment 4

Navigate over to ESPN's website for NHL Historic Player Points Statistics, for the years 2014-2015. This page has a table on it with a few stats we're interested in obtaining. But it's a bit messy! Clean it up for us, using the appropriate commands to:

1. Load up the table on just this page into a Pandas dataframe. No need to worry about the other pages!
2. Rename the columns so that they match the column definitions on the website.
3. Get rid of (drop) any erroneous rows that has at least 4 NANs in them.
4. Get rid of the RK column.
5. Ensure there are no nan "holes" in your index.
6. Check the dtypes of all columns, and ensure those that should be numeric are numeric.

### Lab Questions

Please enter a numeric value (e.g. 0, 1, 10.5, etc) which correctly answers the question(s) below:

After completing the 6 steps above, how many rows remain in this dataset? (Not to be confused with the index!)

**40**

How many unique PCT values exist in the table?

**36**

What is the value you get by adding the GP values at indices 15 and 16 of this table?

**164**

## Lab Assignment 5

Barry Becker extracted a reasonably clean subset of the 1994, U.S. Census database, with a goal of running predictions to determine whether a person makes over 50K a year. The dataset is hosted on the University of California, Irvine's Machine Learning Repository and includes features such as the person's age, occupation, and hours worked per week, etc.

As clean as the data is, it still isn't quite ready for analysis by SciKit-Learn! Using what you've learned in this chapter, clean up the various columns by encode them properly using the best practices so that they're ready to be examined. We've included a modifies subset of the dataset at Module2/Datasets/census.data and also have some started code to get you going located at Module2/assignment5.py.

1. Load up the dataset and set header label names to:
['education', 'age', 'capital-gain', 'race', 'capital-loss', 'hours-per-week', 'sex', 'classification']

Ensure you use the right command to do this, as there is more than one command! To verify you used the correct one, open the dataset in a text editor like SublimeText or Notepad, and double check your df.head() to ensure the first values match up.

2. Make sure any value that needs to be replaced with a NAN is set as such. There are at least three ways to do this. One is much easier than the other two.
3. Look through the dataset and ensure all of your columns have appropriate data types. Numeric columns should be float64 or int64, and textual columns should be object.
4. Properly encode any ordinal features using the method discussed in the chapter.
5. Properly encode any nominal features by exploding them out into new, separate, boolean features.

### Lab Question 1

Please enter a numeric value (e.g. 0, 1, 2, 3, etc) which correctly answers the question(s) below:

Before you made any changes to the downloaded dataset, how many of the columns were ordinal?

**2**

### Lab Question 2

Please enter a numeric value (e.g. 0, 1, 2, 3, etc) which correctly answers the question(s) below:

Before you made any changes to the downloaded dataset, how many of the columns were nominal?

**2**