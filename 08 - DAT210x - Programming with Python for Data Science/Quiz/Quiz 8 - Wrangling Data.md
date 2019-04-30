# Quiz 8 - Wrangling Data

### Review Question

A dataset on oil wells was made available to you in the form of an html table, which you've loaded into a Pandas dataset. While inspecting the dataset, you notice a would-be numeric features called 'depth' actually has a handful of entries that show up as '?' rather than as numbers.

What is the best course of action you should take to correct this?

- No action is needed, as this was the desired result
- Run a command to replace all the ?'s with 0's, such as df.depth[df.depth=='?'] = 0
- Update your .read_html() method so that ? is included as a na_value, causing them to be converted to nans
- **Run df.depth = pd.to_numeric(df.depth, errors='coerce') to convert the column to a numeric type and coerce non-numeric values to nans**