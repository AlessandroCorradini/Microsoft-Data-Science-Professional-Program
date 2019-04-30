# Creating and Formatting Measures - Quiz

### Question 1

The SUMX function takes in two parameters. What is the second parameter?

- The table containing the rows for which the expression will be evaluated.
- **The expression to be evaluated for each row of the table.**
- A comma separated list of Boolean expression that defines a filter.
- A table expression that defines a filter.

### Question 2

Consider a table named FactInternetSales that has the following columns and data types: Quantity (Whole Number), List Price (Decimal Number), and a calculated column: Revenue (Decimal Number). The Revenue column is calculated by multiplying Quantity and List Price.

Which two DAX statements below create a measure that calculates the total revenue that correctly filters by any other columns in the data model?

- **SUM(FactInternetSales[Revenue])**
- **SUMX(FactInternetSales,FactInternetSales[Quantity]*FactInternetSales[List Price])**
- SUM(FactInternetSales[Quantity])*SUM(FactInternetSales[List Price])
- CALCULATE(SUM(FactInternetSales[Revenue]),ALL(FactInternetSales))

### Question 3

What is the advantage of using the DIVIDE function over the “/” operator?

- To make the expression more readable
- To write a shorter expression
- To speed up calculation time
- **To return an alternate result for division by zero**

### Question 4

How many mandatory parameters are taken by the CALCULATE function?

- One
- **Two**
- Three
- Four