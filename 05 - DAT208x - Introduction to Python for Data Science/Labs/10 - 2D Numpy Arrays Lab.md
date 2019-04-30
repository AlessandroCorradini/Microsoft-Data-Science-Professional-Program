# 2D Numpy Arrays Lab

## Your First 2D Numpy Array

Before working on the actual MLB data, let's try to create a 2D Numpy array from a small list of lists.

In this exercise, baseball is a list of lists. The main list contains 4 elements. Each of these elements is a list containing the height and the weight of 4 baseball players, in this order. baseball is already coded for you in the script.

### Instructions

- Use np.array() to create a 2D Numpy array from baseball. Name it np_baseball.
- Print out the type of np_baseball.
- Print out the shape attribute of np_baseball. Use np_baseball.shape.

```{python}
# Create baseball, a list of lists
baseball = [[180, 78.4],
            [215, 102.7],
            [210, 98.5],
            [188, 75.2]]

# Import numpy
import numpy as np

# Create a 2D Numpy array from baseball: np_baseball
np_baseball = np.array(baseball)

# Print out the type of np_baseball
print(type(np_baseball))

# Print out the shape of np_baseball
print(np_baseball.shape)
```

## Baseball data in 2D form

You have another look at the MLB data and realize that it makes more sense to restructure all this information in a 2D Numpy array. This array should have 1015 rows, corresponding to the 1015 baseball players you have information on, and 2 columns (for height and weight).

The MLB was, again, very helpful and passed you the data in a different structure, a Python list of lists. In this list of lists, each sublist represents the height and weight of a single baseball player. The name of this embedded list is baseball.

Can you store the data as a 2D array to unlock Numpy's extra functionality?

### Instructions

- Use np.array() to create a 2D Numpy array from baseball. Name it np_baseball.
- Print out the shape attribute of np_baseball.

```{python}
# baseball is available as a regular list of lists

# Import numpy package
import numpy as np

# Create a 2D Numpy array from baseball: np_baseball
np_baseball = np.array(baseball)

# Print out the shape of np_baseball
print(np_baseball.shape)
```

## Subsetting 2D Numpy Arrays

If your 2D Numpy array has a regular structure, i.e. each row and column has a fixed number of values, complicated ways of subsetting become very easy. Have a look at the code below where the elements "a" and "c" are extracted from a list of lists.

```{python}
# regular list of lists
x = [["a", "b"], ["c", "d"]]
[x[0][0], x[1][0]]

# numpy
import numpy as np
np_x = np.array(x)
np_x[:,0]
```

For regular Python lists, this is a real pain. For 2D Numpy arrays, however, it's pretty intuitive! The indexes before the comma refer to the rows, while those after the comma refer to the columns. The : is for slicing; in this example, it tells Python to include all rows.

The code that converts the pre-loaded baseball list to a 2D Numpy array is already in the script. Add some lines to make the correct selections. Remember that in Python, the first element is at index 0!

### Instructions

- Print out the 50th row of np_baseball.
- Make a new variable, np_weight, containing the entire second column of np_baseball.
- Select the height (first column) of the 124th baseball player in np_baseball and print it out.

```{python}
# baseball is available as a regular list of lists

# Import numpy package
import numpy as np

# Create np_baseball (2 cols)
np_baseball = np.array(baseball)

# Print out the 50th row of np_baseball
print(np_baseball[49,:])

# Select the entire second column of np_baseball: np_weight
np_weight = np_baseball[:, 1]

# Print out height of 124th player
print(np_baseball[123, 0])
```

## 2D Arithmetic

Remember how you calculated the Body Mass Index for all baseball players? Numpy was able to perform all calculations element-wise. For 2D Numpy arrays this isn't any different! You can combine matrices with single numbers, with vectors, and with other matrices.

Execute the code below in the IPython shell and see if you understand:

```{python}
import numpy as np
np_mat = np.array([[1, 2],
                   [3, 4],
                   [5, 6]])
np_mat * 2
np_mat + np.array([10, 10])
np_mat + np_mat
```

np_baseball is coded for you; it's again a 2D Numpy array with 3 columns representing height, weight and age.

### Instructions

- You managed to get hold on the changes in weight, height and age of all baseball players. It is available as a 2D Numpy array, update. Add np_baseball and update and print out the result.
- You want to convert the units of height and weight. As a first step, create a Numpy array with three values: 0.0254, 0.453592 and 1. Name this array conversion.
- Multiply np_baseball with conversion and print out the result.

```{python}
# baseball is available as a regular list of lists
# update is available as 2D Numpy array

# Import numpy package
import numpy as np

# Create np_baseball (3 cols)
np_baseball = np.array(baseball)

# Print out addition of np_baseball and update
print(np_baseball+update)

# Create Numpy array: conversion
conversion = np.array([0.0254, 0.453592, 1])

# Print out product of np_baseball and conversion
print(np_baseball*conversion)
```