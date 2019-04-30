# Creating Measures using Advanced DAX Functions

## Lab Overview

**Scenario**

VanArsdel is a company that manufactures and sells sporting goods. The company has offices in the United States (US) and several other countries. Its sales comprise of US sales and International sales. VanArsdel’s sales come from its owned manufactured products, as well as other manufacturers’ products.

In the previous modules, you successfully brought the US sales data from the SQL database and the International sales data from a collection of CSV files, to an Excel data model. Now, you will expand upon this as you start to analyze VanArsdel's worldwide sales. With this data model (provided below), you can easily create pivot tables to analyze the data, as shown in Module 3. However, you need to create additional measures to perform more advanced analysis with your data, which includes:

*   Comparing last year sales and last year year-to-date / YTD sales.
*   Comparing sales of VanArsdel's manufactured goods to other manufacturers.

### Lab Overview

In this lab, you will write several DAX expressions to create measures to be used to analyze VanArsdel’s sales data. Specifically, you will create the following measures:

*   **Total Sales**: calculates the total sales.
*   **LY Sales**: calculates last year sales.
*   **Sales Var**: calculates sales variance between this year and last year sales.
*   **Sales Var %**: calculates sales variance between this year and last year sales in percentage.
*   **YTD Sales**: calculates YTD sales.
*   **LY YTD Sales**: calculates last year YTD sales.
*   **YTD Sales Var**: calculates sales variance between this year and last year YTD sales.
*   **YTD Sales Var %**: calculates sales variance between this year and last year YTD sales in percentage.
*   **Total VanArsdel Sales**: calculates sales for VanArsdel manufactured goods.
*   **% Sales Market Share**: calculates the percentage of VanArsdel manufactured goods from the total sales.

Before starting this lab, you should review Module 5 in this course. Then, if you have not already done so, follow the instructions in the Set up the Lab Environment section of this course to set up the lab environment.

**What You’ll Need**

*   A computer with Microsoft Excel installed on it. We prefer Excel 2016, but you can still complete the lab using either Excel 2013 or Excel 2010.
*   The following Excel files:

*   The “Lab 5 – Model.xlsx” file
*   If you're using Excel 2010, please use this file instead: "Lab 5 - Model - 2010.xlsx"

The data has been loaded to the Excel data model. You don't need to refresh or edit the Query.

## Exercise 1: Last Year Comparison

Download and open "Lab 5 - Model.xlsx". If you're using Excel 2010, please use this file instead: "Lab 5 - Model - 2010.xlsx". You want to know how much sales (Revenue) in total does the company have. You want to compare this with the figure from the same period last year. Specifically, you will create the following measures:

- Total Sales: calculates the total sales. Format this measure as Currency. (Hint: Check out the SUM function).
- LY Sales: calculates last year sales. Format this measure as Currency. (Hint: You might find the CALCULATE and SAMEPERIODLASTYEAR function useful).
- Sales Var: calculates sales variance between this year and last year sales. Format this measure as Currency. (Hint: This is simply the difference between Total Sales and LY Sales).
- Sales Var %: calculates sales variance between this year and last year sales in percentage. Format this measure as Percentage. (Hint: This is simply the percentage of Sales Var from LY Sales. You might find the DIVIDE function useful).

Examples of each of these DAX expressions to calculate similar measures based on Units is shown beneath the questions. 

### Lab Question

Answer the following questions using the measures you created. (Do NOT include currency symbols or thousands separators, if the answer is negative then include the negative sign). Calculate the numbers without any context, either from the Power Pivot window or a pivot table with only measures. After you answer these questions, you can experiment with using these measures in pivot tables with a slicer on years or with years on rows/columns.

What is the figure for the Total Sales measure? (to two decimal points)

**1258005068.93**

What is the figure for the LY Sales measure? (to two decimal points)

**998733329.16**

What is the figure for the Sales Var % measure? (to two decimal places in the format 00.00)

**25.96**

If you're stuck, check out the following DAX expressions to calculate similar measures, but on Units instead of Revenue.

- Total Units: Total Units:=SUM([Units])
- LY Total Units: LY Total Units:=CALCULATE([Total Units],SAMEPERIODLASTYEAR('Calendar'[Date]))
- Total Units Var: Total Units Var:=[Total Units]-[LY Total Units]
- Total Units Var %: Total Units Var %:=DIVIDE([Total Units Var],[LY Total Units])

## Exercise 2: Year to Date

Year-to-date (YTD) is a period starting from the beginning of the current year and continuing up to the present date. You want to calculate the YTD sales and compare this with the figure from the same period last year. Specifically, you will create the following measures:

- YTD Sales: calculates the YTD sales. Format this measure as Currency. (Hint: Check out the TOTALYTD function).
- LY YTD Sales: calculates last year YTD sales. Format this measure as Currency. (Hint: You might find the CALCULATE and SAMEPERIODLASTYEAR function useful).
- YTD Sales Var: calculates sales variance between this year and last year YTD sales. Format this measure as Currency. (Hint: This is simply the difference between YTD Sales and LY YTD Sales).
- YTD Sales Var %: calculates sales variance between this year and last year YTD sales in percentage. Format this measure as Percentage. (Hint: This is simply the percentage of YTD Sales Var from LY YTD Sales. You might find the DIVIDE function useful).

Examples of each of these DAX expressions to calculate similar measures based on Units is shown beneath the questions. 

### Lab Question

Answer the following questions using the measures you created. (Do NOT include currency symbols or thousands separators, if the answer is negative then include the negative sign). Calculate the numbers without any context, either from the Power Pivot window or a pivot table with only measures. After you answer these questions, you can experiment with using these measures in pivot tables with a slicer on years or with years on rows/columns.

What is the figure for the YTD Sales measure? (to two decimal points)

**259271739.77**

What is the figure for the LY YTD Sales measure? (to two decimal points)

**501870289.88**

What is the figure for the YTD Sales Var % measure? (to two decimal places in the format 00.00)

**48.34**

If you're stuck, check out the following DAX expressions to calculate similar measures, but on Units instead of Revenue.

- YTD Total Units: YTD Total Units:=TOTALYTD([Total Units],'Calendar'[Date])
- LY YTD Total Units: LY YTD Total Units:=CALCULATE([YTD Total Units],SAMEPERIODLASTYEAR('Calendar'[Date]))
- YTD Total Units Var: YTD Total Units Var:=[YTD Total Units]-[LY YTD Total Units]
- YTD Total Units Var %: YTD Total Units Var %:=DIVIDE([YTD Total Units Var],[LY YTD Total Units])

## Exercise 3: Market Share

VanArsdel’s sales comprise of products manufactured by VanArsdel and other companies. You want to know how much of these sales are VanArsdel’s own manufactured products. You decide to show this share in numbers and %. Specifically, you will create the following measures:

- Total VanArsdel Sales: calculates sales where the products manufacturer is VanArsdel. Format this measure as currency. (Hint: Use the CALCULATE function and filter by Manufacturer).
- % Sales Market Share: calculates the percentage of sales of VanArsdel manufactured products from the total sales. Format this measure as percentage. 

Examples of each of these DAX expressions to calculate similar measures based on Units is shown beneath the questions. 

### Lab Question

Answer the following questions using the measures you created. (Do NOT include currency symbols or thousands separators, if the answer is negative then include the negative sign). Calculate the numbers without any context, either from the Power Pivot window or a pivot table with only measures. After you answer these questions, you can experiment with using these measures in pivot tables with a slicer on years or with years on rows/columns.

What is the figure for the Total VanArsdel Sales measure? (to two decimal points)

**685311666.38**

What is the figure for the % Sales Market Share measure? (to two decimal places in the format 00.00)

**54.48**

If you're stuck, check out the following DAX expressions to calculate similar measures, but on Units instead of Revenue.

- Total VanArsdel Units: Total VanArsdel Units:=CALCULATE([Total Units],Manufacturer[Manufacturer]="VanArsdel")
- Units All Vendors: Units All Vendors:=CALCULATE([Total Units],all(Manufacturer))
- % Units Market Share: % Units Market Share:=IF([Total VanArsdel Units]=0, 0, DIVIDE([Total VanArsdel Units], [Units All Vendors], 0))