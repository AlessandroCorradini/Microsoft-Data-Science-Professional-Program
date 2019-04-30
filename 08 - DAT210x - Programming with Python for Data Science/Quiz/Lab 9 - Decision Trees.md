# Quiz 9 - Decision Trees

## Lab Assignment 4

In this lab, you'll get started with decision trees by revisiting UCI's wheat-seeds dataset, so you can benchmark how long it takes to train and predict with decision trees relative to the speed of KNeighbors and SVC, as well as compare the decision boundary plots produced by it.

1. No starter code this time. Instead, take your completed Module6/assignment1.py and modify it by adding in a Decision Tree Classifier, setting its max_depth to 9, and random_state=2, but not altering any other setting.
2. Make sure you add in the benchmark and drawPlots call for our new classifier as well.
3. Answer the questions below.

### Lab Question 1

To make sure everyone is on the same page, irrespective of the parameters you had on assignment1.py, go ahead and make the following changes:

C = 1

kernel = 'linear'

iterations = 5000

n_neighbors = 5

max_depth = 9

Which of the following statements is true?

- **DTrees beat SVC's score in the original, high-D feature space; but SVC has the highest 2D score**
- KNeighbors has the highest 2D score; but no one beats SVC's score in the original, high-D feature space
- KNeighbors and DTrees both tie in their scoring of accuracy in the original, high-D feature space
- DTrees are the worst in the original, high-D feature space; but have the best max 2D score

### Lab Question 2

Keep dropping the max_depth of the decision tree down until it's high-dimensionality score is less than KNeighbors, and then stop.

What is the max_depth value that you hit?

**One**

## Lab Assignment 5

Mycology is a branch of biology that generally deals with the study of fungi and mushrooms, and particularly their genetic and biochemical make-up, and their use to humans. Throughout history, fungi have been used for tinder, medicine, and food. For hundreds of years, specific mushrooms have been used as folk medicine in Russian, China, and Japan. Scientists elsewhere have also documented many medicinal uses of mushrooms as well, but not all mushrooms are beneficial--some are quite deadly.

![](img/Mushroom.jpeg)

In this lab, you're going to use decision trees to peruse The Mushroom Data Set, drawn from the Audobon Society Field Guide to North American Mushrooms (1981). The data set details mushrooms described in terms of many physical characteristics, such as cap size and stalk length, along with a classification of poisonous or edible.

As a standard disclaimer, if you eat a random mushroom you find, you are doing so at your own risk. While every effort has been made to ensure that the information contained with the data set is correct, please understand that no one associated with this course accepts any responsibility or liability for errors, omissions or representations, expressed or implied, contained therein, or that might arise from you mistakenly identifying a mushroom. Exercise due caution and just take this lab as informational purposes only.

1. First, visit the data set's page and read through it carefully. Understand what they're saying about missing value representations, and header names, and where the classification column is located. Peek through the data values in a spreadsheet program or text editor and get comfortable with it.
2. Load up the started code in Module6/assignment5.py.
3. A copy of the dataset is included in Module6/Datasets/agaricus-lepiota.data.
4. You're going to need to review the decision tree code in the SciKit-Learn section of the Decision Tree section. It contains a few calls in there necessary for the completion of the assignment. If you're unable to install graphiz, use webgraphviz, or alternative complete the assignment by examining the attributes of your classifier.
5. Answer the following questions.

### Lab Question 1

What are the top two features you should consider when deciding if a mushroom is eadible or not?

- **Odor, and Gill Size**
- Stalk Color Below Ring, and Gill Color
- Bruises?, and Cap Color
- Population, and Cap Shape
- Spore Print Color, and Veil Type

## Lab Question 2

Please enter a numeric value (e.g. 0, 1, 10.5, etc) which correctly answers the question(s) below:

What was your decision tree's accuracy after testing it against the independent testing set? Enter it as printed in the lab

**100.0**