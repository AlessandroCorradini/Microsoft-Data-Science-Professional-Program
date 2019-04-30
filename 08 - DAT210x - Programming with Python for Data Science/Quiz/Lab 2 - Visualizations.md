# Lab 2 - Visualizations

## Lab Assignment 2

In this assignment, you will further explore the wheat seeds data set. Start by opening up the starter code located in Module3/assignment2.py, and reading through it. Then, write code that...

1. Loads up the seeds dataset, located at Module3/Datasets/wheat.data into a dataframe
2. Create a 2d scatter plot that graphs the area and perimeter features
3. Create a 2d scatter plot that graphs the groove and asymmetry features
4. Create a 2d scatter plot that graphs the compactness and width features

Once you're done, answer the following questions about your work:

### Lab Questions

Which of the three plots seems to totally be lacking any correlation?

**Asymmetry x Groove**

Which of the three plots has the most correlation?

**Area x Perimeter**

## Lab Assignment 3

Whole wheat is pretty healthy so for this assignment, you will continue using the wheat seeds data set. As usual, start by opening up the starter code located in Module3/assignment3.py, and reading through it. Then, write code that...

1. Loads up the seeds dataset, located at Module3/Datasets/wheat.data' into a dataframe. You should be very good at doing this by now.
2. Graph a 3D scatter plot using the area, perimeter, and asymmetry features. Be sure to label your axes, and use the optional display parameter c='red'.
3. Graph a 3D scatter plot using the width, groove, and length features. Be sure to label your axes, and use the optional display parameter c='green'.

Once you're done, answer the following questions about your work:

### Lab Questions

Which of the plots seems more compact / less spread out?

**Groove x Length x Width**

Which of the plots were you able to visibly identify two outliers within, that stuck out from the samples?

**Groove x Length x Width**

## Lab Assignment 4

For this assignment, you will continue using the wheat seeds data set. Start by opening up the starter code located in Module3/assignment4.py, and write code that...

1. Loads up the seeds dataset, located at Module3/Datasets/wheat.data into a dataframe
2. Drop the id, area, and perimeter features from your dataset
3. Plot a parallel coordinates chart, grouped by the wheat_type feature. Be sure to set the optional display parameter alpha to 0.4

Once you're done, answer the following questions about your work:

### Lab Questions

Which class of wheat do the two outliers you found previously belong to?

**Canadian Wheat**

Which feature has the largest spread of values across all three types of wheat?

**Asymmetry**

## Lab Assignment 5

This is the second last assignment you'll be using the wheat seeds data set with. And you guessed it--this lab is about experimenting with Andrew's Curve! There is no starter code this time !

1. Create a copy your assignment4.py, naming it assignment5.py
2. Make all the changes required to convert the assignment from parallel coordinated into an Andrews curve plot
3. Run the file and then answer the first question below
4. Remember how you dropped the id, area, and perimeter features from your dataset? Well, add back in just the area and perimeter features, re-run your assignment again, then answer the second question below

### Lab Questions

Are your outlier samples still easily identifiable in the plot?

**No**

After adding in the area and perimeter features, does your plot suffer from the same feature scaling issue you had with parallel coordinates?

**No**

## Lab Assignment 6

At this point, we know you already know everything there is to know about the individual, geometric properties of Canadian, Kama and Rosa wheat kernels. But before permanently deleting the wheat dataset, isn't it befitting to see how all of those properties correlate with one another? Finish off the wheat seed data set saga with this final visualization assignment on plotting images. Open up the starter code located in Module3/assignment6.py, and complete the code such that it...

1. Loads up the seeds dataset, located at Module3/Datasets/wheat.data into a dataframe
2. Drop the id column from the dataframe
3. Compute the correlation matrix of your dataframe
4. Graph the correlation matrix using imshow or matshow (either or)

Once you're done, answer the following questions about your work:

### Lab Questions

Which pair of features have the highest / greatest level of correlation?

**Area x Perimeter**

Which feature seems to be the least correlated with the remaining features?

**Asymmetry**
 
Which pair of features have the smallest / least level of correlation? Be sure to check carefully! You might need to print out the correlation matrix if it's hard to see. Also, pay attention to the colorbar that shows *units* and their corresponding colors:

**Asymmetry x Grove**