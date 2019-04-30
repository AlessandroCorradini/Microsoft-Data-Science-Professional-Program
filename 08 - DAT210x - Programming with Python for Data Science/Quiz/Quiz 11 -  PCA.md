# Quiz 11 - PCA

### Review Question 1

Please complete the sentence so that it makes the most sense:

Principal component analysis...

- Requires you have labeled features to use as a metric for determining which features are most important
- Is a dimensionality reduction technique that builds a simpler, non-linear projection or 'shadow' of your dataset
- Asserts you have more features than samples so you can avoid the curse of dimensionality and the matrix math works out
- **Ensures each newly computed feature is orthogonal to all previously computed ones, minimizing overlaps**

### Review Question 2

Which of these statements is problematic?

- PCA can be used to discover the underlying features being assessed by a dataset
- The results of PCA depend on the scaling of your data, so having a feature with units of 'light-years' and another feature with units of 'GHz' may be disastrous
- When applied to non-linear data, PCA generally isn't as effective as when applied to linear data
- **Since PCA is sensitive to feature scaling, if you have a feature that is a linear transformation of the other, e.g. feature2 = 10 * feature1, then both features will be ignored**