# Numpy Lab

## Your First Numpy Array

We're going to dive into the world of baseball. Along the way, you'll get comfortable with the basics of Numpy, a powerful package to do data science.

A list baseball has already been defined in the Python script, representing the height of some baseball players in centimeters. Can you add some code here and there to create a Numpy array from it?

### Instructions

- Import the numpy package as np, so that you can refer to numpy with np.
- Use np.array() to create a Numpy array from baseball. Name this array np_baseball.
- Print out the type of np_baseball to check that you got it right.

```{python}
# Create list baseball 
baseball = [180, 215, 210, 210, 188, 176, 209, 200]

# Import the numpy package as np
import numpy as np

# Create a Numpy array from baseball: np_baseball
np_baseball = np.array(baseball)

# Print out type of np_baseball
print(type(np_baseball))
```

## Baseball players' height

You are a huge baseball fan. You decide to call the MLB (Major League Baseball) and ask around for some more statistics on the height of the main players. They pass along data on more than a thousand players, which is stored as a regular Python list: height. The height is expressed in inches. Can you make a Numpy array out of it and convert the units to centimeters?

height is already available and the numpy package is loaded, so you can start straight away (Source: stat.ucla.edu).

### Instructions

- Create a Numpy array from height. Name this new array np_height.
- Print np_height.
- Multiply np_height with 0.0254 to convert all height measurements from inches to meters. Store the new values in a new array, np_height_m.
- Print out np_height_m and check if the output makes sense.

```{python}
# height is available as a regular list

# Import numpy
import numpy as np

# Create a Numpy array from height: np_height
np_height = np.array(height)

# Print out np_height
print(np_height)

# Convert np_height to m: np_height_m
np_height_m = np_height * 0.0254

# Print np_height_m
print(np_height_m)
```

## Baseball player's BMI

The MLB also offers to let you analyze their weight data. Again, both are available as regular Python lists: height and weight. height is in inches and weight is in pounds.

It's now possible to calculate the BMI of each baseball player. Python code to convert height to a Numpy array with the correct units is already available in the workspace. Follow the instructions step by step and finish the game!

### Instructions

- Create a Numpy array from the weight list with the correct units. Multiply by 0.453592 to go from pounds to kilograms. Store the resulting Numpy array as np_weight_kg.
- Use np_height_m and np_weight_kg to calculate the BMI of each player.
- Use the following equation: BMI=weight(kg)/height(m)2
- Save the resulting numpy array as bmi.
- Print out bmi.

```{python}
# height and weight are available as a regular lists

# Import numpy
import numpy as np

# Create array from height with correct units: np_height_m
np_height_m = np.array(height) * 0.0254

# Create array from weight with correct units: np_weight_kg 
np_weight_kg = np.array(weight) * 0.453592

# Calculate the BMI: bmi
bmi = np_weight_kg / np_height_m **2

# Print out bmi
print(bmi)
```

## Lightweight baseball players

To subset both regular Python lists and Numpy arrays, you can use square brackets:

```{python}
x = [4 , 9 , 6, 3, 1]
x[1]
import numpy as np
y = np.array(x)
y[1]
```

For Numpy specifically, you can also use boolean Numpy arrays:

```{python}
high = y > 5
y[high]
```

The code that calculates the BMI of all baseball players is already included. Follow the instructions and reveal interesting things from the data!

### Instructions

- Create a boolean Numpy array: the element of the array should be True if the corresponding baseball player's BMI is below 21. You can use the < operator for this. Name the array light.
- Print the array light.
- Print out a Numpy array with the BMIs of all baseball players whose BMI is below 21. Use light inside square brackets to do a selection on the bmi array.

```{python}
# height and weight are available as a regular lists

# Import numpy
import numpy as np

# Calculate the BMI: bmi
np_height_m = np.array(height) * 0.0254
np_weight_kg = np.array(weight) * 0.453592
bmi = np_weight_kg / np_height_m ** 2

# Create the light array
light = bmi < 21

# Print out light
print(light)

# Print out BMIs of all baseball players whose BMI is below 21
print(bmi[light])
```

## Numpy Side Effects

As Filip explained before, Numpy is great to do vector arithmetic. If you compare its functionality with regular Python lists, however, some things have changed.

First of all, Numpy arrays cannot contain elements with different types. If you try to build such a list, some of the elments' types are changed to end up with a homogenous list. This is known as type coercion.

Second, the typical arithmetic operators, such as +, -, * and / have a different meaning for regular Python lists and Numpy arrays.

Have a look at this line of code:

```{python}
np.array([True, 1, 2]) + np.array([3, 4, False])
```

Can you tell which code chunk builds the exact same Python data structure? The Numpy package is already imported as np, so you can start experimenting in the IPython Shell straight away!

### Instructions

**Possible Answers**

- np.array([True, 1, 2, 3, 4, False])
- **np.array([4, 3, 0]) + np.array([0, 2, 2])**
- np.array([1, 1, 2]) + np.array([3, 4, -1])
- np.array([0, 1, 2, 3, 4, 5])

## Subsetting Numpy Arrays

You've seen it with your own eyes: Python lists and Numpy arrays sometimes behave differently. Luckily, there are still certainties in this world. For example, subsetting (using the square bracket notation on lists or arrays) works exactly the same. To see this for yourself, try the following lines of code in the IPython Shell:

```{python}
x = ["a", "b", "c"]
x[1]

np_x = np.array(x)
np_x[1]
```

The script on the right already contains code that imports numpy as np, and stores both the height and weight of the MLB players as Numpy arrays.

### Instructions

- Subset np_weight: print out the element at index 50.
- Print out a sub-array of np_height: It contains the elements at index 100 up to and including index 110

```{python}

# height and weight are available as a regular lists

# Import numpy
import numpy as np

# Store weight and height lists as numpy arrays
np_weight = np.array(weight)
np_height = np.array(height)

# Print out the weight at index 50
print(np_weight[50])

# Print out sub-array of np_height: index 100 up to and including index 110
print(np_height[100:111])
```