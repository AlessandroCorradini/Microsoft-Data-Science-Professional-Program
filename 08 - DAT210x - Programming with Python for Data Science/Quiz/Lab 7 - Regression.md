# Lab 7 - Regression

## Lab Assignment 8

Advances in medicine, an increase in healthcare facilities, and improved standards of care have all contributed to an increased overall life expectancy over the last few decades. Although this might seem like great achievement for humanity, it has also led to the abandonment of more elderly people into senior-care and assisted living communities. The morality, benefits, and disadvantages of leaving one's parents in such facilities are still debatable; however, the fact that this practice has increased the financial burden on both the private-sector and government is not.

In this lab assignment, you will be using the subset a life expectancy dataset, provided courtesy of the Center for Disease Control and Prevention's National Center for Health Statistics page. The page hosts many open datasets on topics ranging from injuries, poverty, women's health, education, health insurance, and of course infectious diseases, and much more. But the one you'll be using is their "Life expectancy at birth, at age 65, and at age 75, by sex, race, and origin" data set, which has statistics dating back from the 1900's to current, taken within the United States. We have included a copy of the dataset as Module5/Datasets/life_expectancy.csv. The dataset only lists the life expectancy of whites and blacks, because throughout most of the collection period, those were the dominant two races that actively had their statistics recorded within the U.S.

Using linear regression, you will extrapolate how long people will live in the future. The private sector and governments mirror these calculations when computing social security payouts, taxes, infrastructure, and more. Fire up your Module5/assignment8.py starter code, and then complete the following:

1. Make sure the dataset has been properly loaded.
2. Create a linear model to use and re-use throughout the assignment. You can retrain the same model again, rather than re-creating a new instance of the class.
3. Slice out using indexing any records before 1986 into a brand new slice.
4. Have one slice for training and one for testing. First, map the life expectancy of white males as a function of age, or WhiteMales = f(age).
5. Fit your model, draw a regression line and scatter plot with the convenience function, and then print out the actual, observed 2015 White Male life expectancy value from the dataset.
6. Repeat for BlackFemale.
7. Print out and display a correlation matrix for the dataset's features.
8. Answer the questions below.

### Lab Question

Please enter a numeric value (e.g. 0, 1, 10.5, etc) which correctly answers the question(s) below:

Enter the 2014 life expectancy prediction for white males living within the U.S, using only data recorded prior to 1986:

**80.8563542562**

Which relationship had the highest correlation?

**BlackFemale and WhiteFemale**

## Lab Assignment 9

Continue your exploration of linear regression using a public dataset provided courtesy of An Introduction to Statistical Learning, called College Acceptance and Enrollment. There are four relationships we are interested in modeling:

- The amount charged for room and board, expressed as a function of the number of: accepted students
- The number of enrolled students per college, expressed as a function of the number of: accepted students
- The number of failed undergraduate students per college, expressed as a function of: the number of accepted students
- The amount charged for room and board coupled with the number of enrolled students, expressed as a function of: the number of accepted students.

You should be able to find these relationships given the dataset. Start by downloading the data directly from this link, or through navigating the site linked above, and then complete the following actions:

1. Read through the /Module5/assignment9.py starter code file. It's pretty long, but there actually isn't much in terms of coding you have to do. The hard part is in understanding the material.
2. Load up the dataset, then use indexing to slice out the features of it we're interested in examining.
3. Split your data into training and testing.
4. Use the helper drawLine() and drawPlane() methods to display the results
5. Answer the following questions.

### Lab Question

Which two relationships had the worst R2 correlations?

- Accept(RoomBoard,Enroll) -and- Accept(Enroll)
- Accept(Enroll) -and- Accept(F.Undergrad)
- **Accept(RoomBoard) -and- Accept(F.Undergrad)**
- Accept(RoomBoard,Enroll) -and- Accept(RoomBoard)

## Lab Assignment 10

Enhance! You've probably seen a movie or TV show where the super spy agents use some unbelievable technique to enhance a pixelated image, or to recover some lossy data. In this lab, you're going to do something similar—this time your objective is to use linear regression to recover or 'fill out' a completely deleted portion of an audio file!

![](img/Enhance.png)

To complete this lab, you will be using The FSDD, Free-Spoken-Digits-Dataset, an audio dataset put together by Zohar Jackson once he noticed there weren't very many cleaned up audio (no dead-space, roughly same length, same bitrate, same samples-per-second rate, etc) audio libraries ready for machine learning.

1. Load up the started code stored at Module5/assignment10.py. Read through all of it, including the attached links. There are a lot of gems we'd like you to pick up that are only covered in the labs and not covered in detail in the course reading material, so be sure to make the most of it.
2. There is a variable called Provided_Portion, which is the percentage of the audio clip you'd like to keep. Everything else will be deleted. It's currently set to 25%, so leave it there until you've completed and submitted the assignment; then you can experiment with it.
3. Load up 50 sample recordings per specification in the lab file.
4. Manipulate the dataset to prepare it for multi-output, linear regression by removing one of the images from the training set to use it as an independent testing sound. Then keep only Provided_Portion percent of the audio samples from the sound, discarding the rest.
5. Save the generated sound file, listen to it, check its R2 score, then answer the lab question.

Note: Here is a good note from SciKit-Learn's documentation on multi-output problems.

### Lab Questions

What are the reported R^2 score for the generated audio file?

- Greater than 0.75
- Between 0.50 and 0.75
- Between 0.25 and 0.50
- Between 0.05 and 0.25
- **Less than 0.05**