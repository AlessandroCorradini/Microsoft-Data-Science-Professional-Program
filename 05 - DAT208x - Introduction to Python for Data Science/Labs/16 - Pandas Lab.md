# Pandas Lab

## CSV to DataFrame (1)

The DataFrame is one of Pandas' most important data structures. It's basically a way to store tabular data, where you can label the rows and the columns.

In the exercises that follow, you will be working with vehicle data in different countries. Each observation corresponds to a country, and the columns give information about the number of vehicles per capita, whether people drive left or right, and so on. This data is available in a CSV file, named cars.csv. It is available in your current working directory, so the path to the file is simply 'cars.csv'.

To import CSV data into Python as a Pandas DataFrame, you can use read_csv().

### Instructions

- To import CSV files, you still need the pandas package: import it as pd.
- Use pd.read_csv() to import cars.csv data as a DataFrame. Store this dataframe as cars.
- Print out cars. Does everything look OK?

```{python}
# Import pandas as pd
import pandas as pd

# Import the cars.csv data: cars
cars = pd.read_csv("cars.csv")

# Print out cars
print(cars)
```

## CSV to DataFrame (2)

Your read_csv() call to import the CSV data didn't generate an error, but the output is not entirely what you'd want: the row labels are imported as another column, that has no name.

Remember index_col, an argument of read_csv() that you can use to specify which column in the CSV file should be used as a row label? Well, that's exactly what you need here!

Python code that solves the previous exercise is already included; can you make the appropriate changes to fix the data import?

### Instructions

- Run the code with Submit Answer and assert that the first column should actually be used as row labels.
- Specify the index_col argument inside pd.read_csv(): set it to 0, so that the first column is used as row labels.
- Has the printout of cars improved now?

```{python}
# Import pandas as pd
import pandas as pd

# Fix import by including index_col
cars = pd.read_csv('cars.csv', index_col = 0)

# Print out cars
print(cars)
```

## Square Brackets

In the video, you saw that you can index and select Pandas DataFrames in many different ways. The simplest, but not the most powerful way, is to use square brackets.

In the sample code on the right, the same cars data is imported from a CSV files as a Pandas DataFrame. To select only the cars_per_cap column from cars, you can use:

```{python}
cars['cars_per_cap']
cars[['cars_per_cap']]
```

The single bracket version gives a Pandas Series, the double bracket version gives a Pandas DataFrame.

### Instructions

- Use single square brackets to print out the country column of cars as a Pandas Series.
- Use double square brackets to print out the country column of cars as a Pandas DataFrame. Do this by putting country in two square brackets this time.

```{python}
# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Print out country column as Pandas Series
print(cars.country)

# Print out country column as Pandas DataFrame
print(cars[["country"]])
```

## loc (1)

With loc you can do practically any data selection operation on DataFrames you can think of. loc is label-based, which means that you have to specify rows and columns based on their row and column labels.

Try out the following commands in the IPython Shell to experiment with loc to select observations:

```{python}
cars.loc['RU']
cars.loc[['RU']]
cars.loc[['RU', 'AUS']]
```

As before, code is included that imports the cars data as a Pandas DataFrame.

### Instructions

- Use loc to select the observation corresponding to Japan as a Series. The label of this row is JAP. Make sure to print the resulting Series.
- Use loc to select the observations for Australia and Egypt as a DataFrame. You can find out about the labels of these rows by inspecting cars in the IPython Shell. Make sure to print the resulting DataFrame.

```{python}
# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Print out observation for Japan
print(cars.loc["JAP"])

# Print out observations for Australia and Egypt
print(cars.loc[["AUS", "EG"]])
```

## loc (2)

loc also allows you to select both rows and columns from a DataFrame. To experiment, try out the following commands in the IPython Shell.

```{python}
cars.loc['IN', 'cars_per_cap']
cars.loc[['IN', 'RU'], 'cars_per_cap']
cars.loc[['IN', 'RU'], ['cars_per_cap', 'country']]
```

### Instructions

- Print out the drives_right value of the row corresponding to Morocco (its row label is MOR)
- Print out a sub-DataFrame, containing the observations for Russia and Morocco and the columns country and drives_right.

```{python}
# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Print out drive_right value of Morocco
print(cars.loc["MOR", "drives_right"])

# Print sub-DataFrame
print(cars.loc[["RU", "MOR"], ["country", "drives_right"]])
```