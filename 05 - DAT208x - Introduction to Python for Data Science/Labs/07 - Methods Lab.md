# Methods Lab

## String Methods

Strings come with a bunch of methods. Follow the instructions closely to discover some of them. If you want to discover them in more detail, you can always type help(str) in the IPython Shell.

A string room has already been created for you to experiment with.

### Instructions

- Use the upper() method on room and store the result in room_up. Use the dot notation.
- Print out room and room_up. Did both change?
- Print out the number of o's on the variable room by calling count() on room and passing the letter "o" as an input to the method. We're talking about the variable room, not the word "room"!

```{python}
# string to experiment with: room
room = "poolhouse"

# Use upper() on room: room_up
room_up = room.upper()

# Print out room and room_up
print(room); print(room_up)

# Print out the number of o's in room
print(room.count("o"))
```

## List Methods

Strings are not the only Python types that have methods associated with them. Lists, floats, integers and booleans are also types that come packaged with a bunch of useful methods. In this exercise, you'll be experimenting with:

- index(), to get the index of the first element of a list that matches its input and
- count(), to get the number of times an element appears in a list.

You'll be working on the list with the area of different parts of a house: areas.

### Instructions

- Use the index() method to get the index of the element in areas that is equal to 20.0. Print out this index.
- Call count() on areas to find out how many times 14.5 appears in the list. Again, simply print out this number.

```{python}
# Create list areas
areas = [11.25, 18.0, 20.0, 10.75, 9.50]

# Print out the index of the element 20.0
print(areas.index(20.0))

# Print out how often 14.5 appears in areas
print(areas.count(14.5))
```

## List Methods (2)

Most list methods will change the list they're called on. Examples are:

- append(), that adds an element to the list it is called on,
- remove(), that removes the first element of a list that matches the input, and
- reverse(), that reverses the order of the elements in the list it is called on.

You'll be working on the list with the area of different parts of the house: areas.

### Instructions

- Use append() twice to add the size of the poolhouse and the garage again: 24.5 and 15.45, respectively. Make sure to add them in this order.
- Print out areas
- Use the reverse() method to reverse the order of the elements in areas.
- Print out areas once more.

```{python}
# Create list areas
areas = [11.25, 18.0, 20.0, 10.75, 9.50]

# Use append twice to add poolhouse and garage size
areas.append(24.5); areas.append(15.45)


# Print out areas
print(areas)

# Reverse the orders of the elements in areas
areas.reverse()

# Print out areas
print(areas)
```