# Pakages Quiz

### Review Question 1

Which of the following is a package for installation and maintenance system for Python?

- **pip**
- pypackage
- module
- pkginstaller

### Review Question 2

Which statement is the most common way to invoke the import machinery?

- as
- from
- def
- **import**

### Review Question 3

You import Numpy as foo as follows:

```{python}
import numpy as foo
```

Which Python command that used the array() function from Numpy is valid if Numpy is imported as foo?

- numpy.array([1, 2, 3])
- np.array([1, 2, 3])
- **foo.array([1, 2, 3])**
- np.foo.array([1, 2, 3])

### Review Question 4

You want to use Numpy's array() function.

You need to decide whether to import this function as follows:

```{python}
from numpy import array
```

or by importing the entire numpy package:

```{python}
import numpy
```

Select the two correct statements about these different import methods.

- **The from numpy import array version will make it less clear in the code that you're using Numpy's array() function.**
- If you use from numpy import array to import Numpy's array() function, you always have to write numpy.array() if you want to use it.
- The import numpy way of importing makes your calls of the array() function very short and concise.
- **Using import numpy will require you to use numpy.array(), making it clear that you're using a Numpy function.**