# 2D Numpy Arrays Quiz

### Review Question 1

What charaterizes multi-dimensional Numpy arrays?

- You cannot go higher than 3 dimensions.
- You can only create a 2D Numpy array from a set of 1D Numpy arrays.
- You can use 2D Numpy arrays to hold different data types.
- **You can create a 2D Numpy array from a regular list of lists.**

### Review Question 2

You created the following 2D Numpy array, x:

```{python}
import numpy as np
x = np.array([["a", "b", "c", "d"],
              ["e", "f", "g", "h"]])
```

Which Python command do you use to select the string "g" from x?

- x[-1,1]
- x[0][1]
- **x[1,2]**
- x[0,2]

### Review Question 3

What does the resulting array z contain after executing the following lines of Python code?

```{python}
import numpy as np
x = np.array([[1, 2, 3],
              [1, 2, 3]])
y = np.array([[1, 1, 1],
              [1, 2, 3]])
z = x - y
```

```{python}
array([[1, 2, 3],
       [1, 2, 3],
       [1, 1, 1],
       [1, 2, 3]])
```

```{python}
array([[0, 1, 2],   [X]
       [0, 0, 0]])
```

```{python}
array([[0, 0, 0],
       [0, 1, 2]])
 ```

- A 2-by-3 Numpy array with only zeros.