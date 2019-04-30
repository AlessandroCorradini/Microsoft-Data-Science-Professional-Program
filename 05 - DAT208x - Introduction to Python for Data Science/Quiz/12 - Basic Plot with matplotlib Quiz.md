# Basic Plot with matplotlib Quiz

### Review Question 1

What is the characteristic about data visualization?

- Visualization is useful for data exploration, but is insufficient in providing insights.
- Visualization inefficient in exploring data because outliers will clutter your plots.
- **Visualization is a very powerful tool for exploring your data and reporting results.**
- Visualization is the only way to identify the mean and median of your data.

### Review Question 2

What is the conventional way of importing the pyplot sub-package from the matplotlib package?

- **import matplotlib.pyplot as plt**
- import pyplot as plt
- import matplotlib as plt
- import plt

### Review Question 3

You are creating a line plot using the following code:

```{python}
a = [1, 2, 3, 4]
b = [3, 9, 2, 6]
plt.plot(a, b)
plt.show()
```

Which two options describe the result of your code?

- **The values in a are mapped onto the horizontal axis.**
- The values in b are mapped onto the horizontal axis.
- The values in a are mapped onto the vertical axis.
- **The values in b are mapped onto the vertical axis.**

### Review Question 4

You are modifying the following code that calls the plot() function to create a line plot:

```{python}
a = [1, 2, 3, 4]
b = [3, 9, 2, 6]
plt.plot(a, b)
plt.show()
```

What should you change in the code to create a scatter plot instead of a line plot?

- Change plt in plt.plot() to point.
- Change plot() in plt.plot() to point().
- **Change plot() in plt.plot() to scatter().**
- Change the plot() in plt.plot() by adding the type argument as follows: plt.plot(a, b, type = "scatter").