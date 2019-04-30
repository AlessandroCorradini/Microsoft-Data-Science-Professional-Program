# Quiz 18 - SVC

### Review Question 1

The purpose of the kernel function in support vector machines is to...

- Intelligently change your feature space from a linear one to polynomial one.
- Increase the dimensionality of your data set.
- **Compute how similar two samples are.**
- Decrease the dimensionality of your data set, making it simpler to linearly separate your higher-dimensionality data

### Review Question 2

SciKit-Learn's SVC class takes in many parameters. Three of the parameters that contribute the most to your overall decision boundary shape are gamma, C, and the kernel.

Assume you're using the rbf kernel and you like the overall shape of your decision boundary. However you notice it has 'pockets' (e.g. little bubbles) that surround one class of your samples. And those pockets are simply too large.

How would you alter your parameters fix this?

- Change rbf kernel to linear kernel, so that no bubbles form anymore
- **Reduce the gamma coefficient to get rid of the bubbles**
- Increase C to get rid of the bubbles incorrect
- Increase the gamma coefficient to get rid of the bubbles

### Review Question 3

SKLearn's Implementation of SVC...

- Is structually similar to the computation of linear regression
- Is a purely analytical operation, so will always produce the same output given the same input features
- **Must be seeded in order to be truly deterministic**
- Is only effective in low dimensional spaces