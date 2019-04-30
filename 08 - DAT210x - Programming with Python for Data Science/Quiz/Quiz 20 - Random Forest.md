# Quiz 20 - Random Forest

### Review Question 1

How would you explain out-of-bag samples to someone who's studied decision trees but not yet random forest?

- The out-of-bag samples are those samples withheld from the forest ensemble while training.
- The out-of-bag samples are the bootstrapped samples used for training your decision trees
- The out-of-bag samples are the bootstrapped samples used for training and evaluating the accuracy score of your random forest
- **The out-of-bag samples are those training samples withheld from a particular decision tree while training**
- The out-of-bag samples are those testing samples withheld from the ensemble so they can be used to test its accuracy

### Review Question 2

After telling your cousins you're taking a data science course that deals with machine learning, they get super excited and put together a fictitious dataset for you to run classification on to prove you know what you're doing.

You decide to model their dataset using random forest, since that's the chapter you just studied. What's unsettling is that they didn't give you a lot of samples, but the samples they did provide have a lot of features. Due to this, you fear your RF model might be overfit, and there are many instances where long, erroneous-looking branches shoot out of the tree in order to correctly classify a single sample!

Until now, you had thought the mere use of random forests was enough to inhibit overfitting; but it looks like that's not enough. Your cousins are coming over soon and can't wait to see the results of your modeling, and you don't want to let them down!

What parameter might you increase to stop the overfitting?

- **min_samples_split**
- criterion
- max_depth
- max_leaf_nodes
- n_estimators