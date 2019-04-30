# Basic Statistics with Numpy Quiz

### Review Question 1

Which of the following statement about basic statistics with Numpy is correct?

Note: assume that the Numpy package is imported as np.

- Using np.mean() to calculate the mean of your values is enough to get a first idea about your data; np.median() is not relevant at this point.
- **Numpy offers many functions to calculate basic statistics, such as np.mean(), np.median() and np.std().**
- np.column_stack() takes a number of 1D arrays and appends them to one another to create one giant 1D array.
- np.median() returns an array with 5 elements: the minimum, maximum and first, second and third quartiles the array you passed it.

### Review Question 2

You are writing code to measure your travel time and weather conditions to work each day.

The data is recorded in a Numpy array where each row specifies the measurements for a single day.

The first column specifies the temperature in Fahrenheit. The second column specifies the amount of travel time in minutes.

The following is a sample of the code.

```{python}
import numpy as np
x = np.array([[28, 18],
              [34, 14],
              [32, 16],
              ...
              [26, 23],
              [23, 17]])
```

Which Python command do you use to calculate the average travel time?

- np.mean(x[:,0])
- np.mean(x[0,:])
- np.mean(x[1,:])
- **np.mean(x[:,1])**

### Review Question 3

As a wrap up, have a look at the statements below about Numpy in general. Select the three statements that hold.

- **Numpy is a great alternative to the regular Python list if you want to do Data Science in Python.**
- **Numpy arrays can only hold elements of the same basic type.**
- It is not possible perform element-wise calculations with 3D Numpy arrays.
- **Next to an efficient data structure, Numpy also offers tools to calculate summary statistics and to simulate statistical distributions.**