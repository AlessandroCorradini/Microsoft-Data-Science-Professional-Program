# Quiz 6 - Manupulating Data

Review Question 1

What is the difference between ```df.colA``` or ```df[['colA']]```?

- There is no difference, they are essentially equal.
- **One returns a series, the other returns a dataframe.**
- One executes much faster than the other.
- The second one causes a syntax error.

### Review Question 2

```
import pandas as pd
animals = pd.read_csv('animals.csv', sep='\t')
animals.columns
```  

Given the above, fictional dataset, which command would you use to select the: family, species, and population columns of the first five rows?

- animals.iloc[['family', 'species', 'population'], 0:6]
- animals.iloc['family', 'species', 'population', 0:4]
- **animals.loc[0:4, ['family', 'species', 'population']]**
- animals.loc[1:5, ['family', 'species', 'population']]
- animals.loc[0:5, 'family', 'species', 'population']