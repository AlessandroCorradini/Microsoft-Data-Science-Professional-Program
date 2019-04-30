# Customization Quiz

### Review Question 1

You are customizing a plot by labelling its axes. You need to do this by using matplotlib.

Which code should you use?

- labelling(x = "x-axis title", y = "y-axis title")
- plot(lab = ["x-axis title", "y-axis title"])
- title("x-axis title", "y-axis title")
- **xlabel("x-axis title") and ylabel("y-axis title")**

### Review Question 2

Which matplotlib function do you use to build a line plot where the area under the graph is colored?

- fill()
- scatter()
- **fill_between()**
- hist()

### Review Question 3

Typically, you place all customization commands between the plot() call and the show() call, as follows:

```{python}
import matplotlib.pyplot as plt
x = [1, 2, 3]
y = [4, 5, 6]
plt.plot(x, y)
# customization here
plt.show()
```

What will happen if you place the customization code after the show() function instead?

```{python}
import matplotlib.pyplot as plt
x = [1, 2, 3]
y = [4, 5, 6]
plt.plot(x, y)
plt.show()
# customization here
```

- Python throws a parsing error, because your code is not correctly formatted.
- **Python doesn't throw an error, but you won't see your customizations. The show() function displays the plot you've built up until then. If the customizations come afterwards, there is no effect on the shown output.**
- Python doesn't throw an error, and you will see your customizations. You can put your customization code either before or after the show() call.
- Python throws a syntax error, because it does not understand the customization done after the show() call.