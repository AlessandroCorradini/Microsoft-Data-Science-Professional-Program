# Quiz 24 - Final Exam

### Quiz Question

If you were given a higher dimensionality data set you wanted to visualize, which of the following techniques might you use to carry that out (select all that apply):

- K-Nearest Neighbors
- Cross Validation
- **Principal Component Analysis**
- **Parallel Coordinates**
- Histograms

### Quiz Question

The main advantage of random forest over decision trees are that:

- **They allow you to bootstrap, thereby reducing the potential of overfitting**
- They are a lot faster, since you're growing more trees
- They are more configurable than regular decision trees because Sci-Kit learn exposes more optional parameters
- They allow you to use your entire dataset for training and testing

### Quiz Question

If successful, Panda's read_html() method returns:

- A dataframe containing the contents of the html table(s) on the webpage
- A dataframe containing the first html table on the webpage
- An NDArray of dataframes, one per table, as seen on the webpage
- **A Python List of dataframes, one per table, as seen on the webpage correct**

### Quiz Question

Confusion matrices help you calculate (check all that apply):

- **How many predictions of a target your model guessed**
- **The number of true positives + false negatives**
- **The number of false negatives + false positives**
- **How many observations per target exist in your dataset**

### Quiz Question

Given the feature CardSuits that contained Hearts, Spades, Diamonds, and Clubs, before running SciKit-Learn modeling, which of the following is most applicable?

- **Use pandas to crate dummy features**
- Use the values as a textual feature
- Convert them using CardSuits.astype('category').cat.codes
- Properly encode them for processing using an ordered category
- Use CardSuits.Map() to represent them as numerals, so that SciKit-Learn can understand and process them correctly

### Quiz Question

Every one of the steps used in your pipelines must:

- Implement .fit() and .transform(), so that one step's results are fed into the next.
- Have parameters defined for it using the .set_params() method of the pipeline
- **Implement .fit() to process incoming data**
- Alter the incoming data in some way

### Quiz Question

Under what circumstances would you use principal component analysis instead of isomap?

- When it appears that linearity is preserved in local neighborhoods within your dataset.
- When you have a very large dataset and need to quickly reduce its dimensionality.
- When you want to preserve covariance, and you want preserve--as much as possible--the interpoint distances in your reduced dimensionality representation.
- **When it appears that linearity is preserved over your entire dataset.**

### Quiz Question

Support vector machines are:

- **A algorithm that relies on linear decision boundaries to do potentially non-linear regression or classification.**
- A dimensionality reduction algorithm similar to PCA, as they both reduce the distance from your samples to the best-fit line
- A clustering technique for unsupervised learning
- A pre-processing technique

### Quiz Question

Select the major categories of machine learning from the list below

- Deep Model Learning
- **Reinforcement Learning**
- Reverse Learning
- **Supervised Learning**
- Unstructured Learning
- **Unsupervised Learning**

### Quiz Question

Which of the following statements about K-Means and K-Neighbors is the most accurate?

- The K-Means and K-Nearest algorithms group records by similarity.
- One is a supervised clustering algorithm, the other is an unsupervised classification algorithm.
- **They are distance based algorithms susceptible to feature scaling**
- Their training times are proportional to the number of samples in your dataset

### Quiz Question

First, figure out what type of features the items in the following list fall into. By feature type, we mean Continuous, Nominal Categorical, or Ordinal Categorical:

1. Dish Type
2. Yelp Star Rank
3. Altitude

Order the items above--if necessary--so that they are sorted by their feature type in alphabetical order:

- **Altitude, Dish Type, Yelp Star Rank**
- Altitude, Yelp Star Rank, Dish Type
- Dish Type, Altitude, Yelp Star Rank
- Dish Type, Yelp Star Rank, Altitude
- Yelp Star Rank, Dish Type, Altitude

### Quiz Question

Under which set of circumstances would it make more sense to use K-Neighbors over Decision Trees?

- **You have a lot of data, it has very irregular decision boundaries, and execution speed isn't of concern.**
- You have a lot of data, the satellite executing the algorithm doesn't have a lot of memory, and execution speed isn't of concern.
- You have a small amount of noisy data, but it has a well-formed decision boundary, and execution speed is of great concern.
- You have a small amount of data, it has a well-formed decision boundary, and execution speed is of great concern.