# Histograms Quiz

### Review Question 1

What is a characteristic of a histogram?

- Histogram is only useful if your data is normally distributed.
- **Histogram is a great tool for getting a first impression about the distribution of your data.**
- Histogram has bins that partially overlap, making it possible for a single value to lie in two bins.
- Histogram is useful to visualize trend in a series of time

### Review Question 2

You are working with a Python list with 10 different values. You divide the values into 5 equally-sized bins.

How wide will these bins be if the lowest value in your list is 0 and the highest is 20?

- **4**
- 5
- 10
- 20

### Review Question 3

You write the following code:

```{python}
import matplotlib.pyplot as plt
x = [1, 3, 6, 3, 2, 7, 3, 9, 7, 5, 2, 4]
plt.hist(x)
plt.show()
```

You need to extend the plt.hist() command to specifically set the number of bins to 4. What should you do?

- Add a command after plt.hist() and before plt.show(): plt.binsize(4)
- Add a second argument to plt.hist(): plt.hist(x, range = max(x) - min(x))
- **Add a second argument to plt.hist(): plt.hist(x, bins = 4)**
- Add nothing. The number of bins will always default to 4.