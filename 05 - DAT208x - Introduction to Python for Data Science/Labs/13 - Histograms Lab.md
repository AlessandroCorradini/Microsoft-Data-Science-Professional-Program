# Histograms Lab

## Build a histogram (1)

life_exp, the list containing data on the life expectancy for different countries in 2007, is available in your Python shell.

To see how life expectancy in different countries is distributed, let's create a histogram of life_exp.

matplotlib.pyplot is already available as plt.

### Instructions

- Use plt.hist() to create a histogram of the values in life_exp. Do not specify the number of bins; Python will set the number of bins to 10 by default for you.
- Add plt.show() to actually display the histogram. Can you tell which bin contains the most observations?

```{python}
# Create histogram of life_exp data
plt.hist(life_exp)

# Display histogram
plt.show()
```

## Build a histogram (2): bins

In the previous exercise, you didn't specify the number of bins. By default, Python sets the number of bins to 10 in that case. The number of bins is pretty important. Too little bins oversimplifies reality, which doesn't show you the details. Too much bins overcomplicates reality and doesn't give the bigger picture.

To control the number of bins to divide your data in, you can set the bins argument.

That's exactly what you'll do in this exercise. You'll be making two plots here. The code in the script already includes plt.show() and plt.clf() calls; plt.show() displays a plot; plt.clf() cleans it up again so you can start afresh.

As before, life_exp is available and matploblib.pyplot is imported as plt.

### Instructions

- Build a histogram of life_exp, with 5 bins. Can you tell which bin contains the most observations?
- Build another histogram of life_exp, this time with 20 bins. Is this better?

```{python}
# Build histogram with 5 bins
plt.hist(life_exp, bins = 5)

# Show and clean up plot
plt.show()
plt.clf()

# Build histogram with 20 bins
plt.hist(life_exp, bins = 20)

# Show and clean up again
plt.show()
plt.clf()
```

## Build a histogram (3): compare

In the video, you saw population pyramids for the present day and for the future. Because we were using a histogram, it was very easy to make a comparison.

Let's do a similar comparison. life_exp contains life expectancy data for different countries in 2007. You also have access to a second list now, life_exp1950, containing similar data for 1950. Can you make a histogram for both datasets?

You'll again be making two plots. The plt.show() and plt.clf() commands to render everything nicely are already included. Also matplotlib.pyplot is imported for you, as plt.

### Instructions

- Build a histogram of life_exp with 15 bins.
- Build a histogram of life_exp1950, also with 15 bins. Is there a big difference with the histogram for the 2007 data?

```{python}
# Histogram of life_exp, 15 bins
plt.hist(life_exp, bins = 15)

# Show and clear plot
plt.show()
plt.clf()

# Histogram of life_exp1950, 15 bins
plt.hist(life_exp1950, bins = 15)

# Show and clear plot again
plt.show()
plt.clf()
```

## Choose the right plot (1)

You're a professor teaching Data Science with Python, and you want to visually assess if the grades on your exam follow a normal distribution. Which plot do you use?

### Instructions

**Possible Answers**

- Line plot
- Scatter plot
- **Histogram**

## Choose the right plot (2)

You're a professor in Data Analytics with Python, and you want to visually assess if longer answers on exam questions lead to higher grades. Which plot do you use?

### Instructions

**Possible Answers**

- Line plot
- **Scatter plot**
- Histogram