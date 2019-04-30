# Quiz 12 - Isomap

### Review Question 1

Which of the following explanations of isomap is true?

- Isomap can be used as a powerful noise removal tool, since a smooth manifold is created by "short circuiting" the nearest neighbor map when calculating distances
- Isomap is usually faster than PCA because it's quicker to compute a nearest neighbor map than to do matrix decomposition
- **A one sentence summary of isomap's implementation is that at its core, it is essentially a node distance map that has been fed into a special type of PCA**
- Isomap will not function without a completely accurate distance metric, since it needs to know the precise distance to every single sample, including distant ones

### Review Question 2

Isomap is most beneficial...

- When your data lacks an inherent manifold
- **When a non-linear, geometric structure is expressed in your data**
- When you are uncertain how many samples are needed to capture the underlying nature of your data
- When your high dimensionality data has a hidden, linear relationship expressed within it