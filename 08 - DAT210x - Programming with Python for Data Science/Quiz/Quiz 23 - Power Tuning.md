# Quiz 23 - Power Tuning

### Review Question

There are four teaching assistants in your sister's data science course. Three of them are very sharp and completely understand the material. But one of them, unfortunately, isn't as good with machine learning as the others!

Your sister recorded the following four statements in her notebook, one made by each TA. Can you find the statement made by problematic teaching assistant?

- SciKit-Learn provides you with more than one powerful tool for conducting searches over your estimators' parameter values.
- Just about all methods called on your GridSearchCV and RandomizedSearchCV classes are actually executed against the highest scoring estimator
- **When you build a GridSearchCV object, be sure to pass in n_iter so you can control the number of parameter settings that get sampled.**
- When you pass estimator parameters into GridSearchCV, they should be in the form of an array of dictionaries. When you pass them into RandomizedSearchCV, they should be in the form of a single dictionary.