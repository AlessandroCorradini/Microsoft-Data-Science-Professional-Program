# Lab 3 - Quiz

### Feature Selection

In the lab, you identified features that had little significant importance in predicting the label. You then iteratively removed features.

After completing the iterative feature selection process, what was the effect on the AUC metric for the model?

**It stayed the same**

### Cross-Validation

After performing feature selection and tuning the hyperparameters of the model, you performed cross-validation.

Why is it important to do this before putting a model into production?

- **Cross-validation helps minimize sample bias from training data and provides an indication of how well your model will work with new data.**
- Cross-validation fits the model to the training data, improving the accuracy of the model.
- Cross-validation configures the model to use the mean of the regularization parameter values tested in the experiment so it works equally well with all data.
- Cross-validation removes any features that negatively impact model accuracy, ensuring that the model will work optimally in production.