# Boolean Logic and Control Flow Lab

## Equality

To check if two Python values, or variables, are equal, you can use ==. To check for inequality, you need !=. As a refresher, have a look at the following examples, that all result in True. Feel free to try them out in the IPython Shell.

```{python}
2 == (1 + 1)
"intermediate" != "python"
True != False
"Python" != "python"
```

When you write these comparisons in a script, you will need to wrap a print() function around them, to see the output.

### Instructions

- In the editor on the right, write code to see if True equals False.
- Write Python code to check if -5 * 15 is not equal to 75.
- Ask Python whether the strings "pyscript" and "PyScript" are equal.
- What happens if you compare booleans and integers? Write code to see if True and 1 are equal.

```{python}
# Comparison of booleans
print(True == False)

# Comparison of integers
print(-5*15!=75)

# Comparison of strings
print("pyscript" == "PyScript")

# Compare a boolean with an integer
print(True == 1)
```

## Greater and less than

In the video, Filip also talked about the less than and greater than signs, < and > in Python. You can combine them with an equals sign: <= and >=. Pay attention: <= is valid syntax, =< is not.

All Python expressions in the following code chunk evaluate to True:

```{python}
3 < 4
3 <= 4
"alpha" <= "beta"
```

Remember that for string comparison, Python determines the relationship based on alphabetical order.

### Instructions

Write Python expressions, wrapped in a print() function, to check whether:

- x is greater than or equal to -10. x has already been defined for you.
- "test" is less than or equal to y. y has already been deinfed for you.
- True is greater than False.

```{python}
# Comparison of integers
x = -3 * 6
print(x >= -10)

# Comparison of strings
y = "test"
print("test" <= y)

# Comparison of booleans
print(True > False)
```

## and, or, not (1)

A boolean is either 1 or 0, True or False. With boolean operators, such as and, or and not, you can combine these booleans to perform more advanced queries on your data.

In the sample code on the right, two variables are defined: my_kitchen and your_kitchen, representing areas.

### Instructions

Write Python expressions, wrapped in a print() function, to check whether:

- my_kitchen is bigger than 10 and smaller than 18.
- my_kitchen is smaller than 14 or bigger than 17.
- double the area of my_kitchen is smaller than triple the area of your_kitchen.

```{python}
# Define variables
my_kitchen = 18.0
your_kitchen = 14.0

# my_kitchen bigger than 10 and smaller than 18?
print(my_kitchen > 10 and my_kitchen < 18)

# my_kitchen smaller than 14 or bigger than 17?
print(my_kitchen < 14 or my_kitchen > 17)

# Double my_kitchen smaller than triple your_kitchen?
print(my_kitchen * 2 < your_kitchen*3)
```

## and, or, not (2)

To see if you completely understood the boolean operators, have a look at the following piece of Python code:

```{python}
x = 8
y = 9
not(not(x < 3) and not(y > 14 or y > 10))
```

What will the result be if you exectue these three commands in the IPython Shell?

NB: Notice that not has a higher priority than and and or, it is executed first.

### Instructions

**Possible Answers**

- True
- **False**
- Running these commands will result in an error.

## Warmup

To experiment with if and else a bit, have a look at this code sample:

```{python}
area = 10.0
if(area < 9) :
    print("small")
elif(area < 12) :
    print("medium")
else :
    print("large")
```

What will the output be if you run this piece of code in the IPython Shell?

### Instructions

**Possible Answers**

- small
- **medium**
- large
- The syntax is incorrect; this code will produce an error.

## if

It's time to take a closer look around in your house.

Two variables are defined in the sample code: room, a string that tells you which room of the house we're looking at, and area, the area of that room.

### Instructions

- Examine the if statement that prints out "Looking around in the kitchen." if room equals "kit".
- Write another if statement that prints out "big place!" if area is greater than 15.

```{python}
# Define variables
room = "kit"
area = 14.0

# if statement for room
if room == "kit" :
    print("looking around in the kitchen.")

# if statement for area
if area > 15:
    print("big place!")
```

## Add else

On the right, the if construct for room has been extended with an else statement so that "looking around elsewhere." is printed if the condition room = "kit" evaluates to False.

Can you do a similar thing to add more functionality to the if construct for area?

### Instructions

- Add an else statement to the second control structure so that "pretty small." is printed out if area > 15 evaluates to False.

```{python}

# Define variables
room = "kit"
area = 14.0

# if-else construct for room
if room == "kit" :
    print("looking around in the kitchen.")
else :
    print("looking around elsewhere.")

# if-else construct for area
if area > 15 :
    print("big place!")
else:
    print("pretty small.")
```

## Customize further: elif

It's also possible to have a look around in the bedroom: the sample code contains an elif part that checks if room equals "bed". In that case, "looking around in the bedroom." is printed out.

Up to you now: make a similar addition to the second control structure to further customize the messages for different values of area.

### Instructions

- Add an elif to the second control structure such that "medium size, nice!" is printed out if area is greater than 10.

```{python}
# Define variables
room = "bed"
area = 14.0

# if-elif-else construct for room
if room == "kit" :
    print("looking around in the kitchen.")
elif room == "bed":
    print("looking around in the bedroom.")
else :
    print("looking around elsewhere.")

# if-elif-else construct for area
if area > 15 :
    print("big place!")
elif area > 10:
    print("medium size, nice!")
else :
    print("pretty small.")
```