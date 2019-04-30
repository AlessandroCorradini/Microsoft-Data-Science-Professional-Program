# Importing Data from a CSV File

## Lab Overview

**SCENARIO**

VanArsdel is a company that manufactures and sells sporting goods. The company has offices in the United States (US) and several other countries. Its sales comprise of US sales and International sales. VanArsdel’s sales come from its owned manufactured products, as well as other manufacturers’ products. 

Bobby is a district manager who is responsible for several districts over two States for the VanArsdel's US office. He just sent you his district's sales transactions for the year 2015 up to the end of June, in form of a CSV file. Bobby would like you to help him perform some analysis on his districts. Specifically, he would like to know:

- Which of his districts performs the best and the worst in the period?
- Which of the cities have the most sales and which of them have the least sales?
- How are the product categories performing overall in his districts?

### Lab Overview

In this lab, you will import data to Excel from a flat csv file. While this may be a straightforward import, you will perform pre-processing steps with the data prior to loading it into Excel.

Before starting this lab, you should review Module 3 in this course. Then, if you have not already done so, follow the instructions in the Set up the Lab Environment section of this course to set up the lab environment.

Excel 2010 users – remember that you have to load the data to an Excel table and then from the PowerPivot tab on the menu ribbon, add the table to the data model.  Also remember the Distinct count trick we revealed previously by using a measure. If you have not already done so, please review the Remarks on Using Excel 2010 unit of the Importing Data from a CSV File lesson of this module. 

**What You’ll Need**

- A computer with Microsoft Excel installed on it. We prefer Excel 2016, but you can still complete the lab using Excel 2013 or Excel 2010.
- File “Lab 3 - Onetable - TXNY.csv”

## Exercise 1: Import Data from a CSV File

Download the file "Lab 3 - Onetable - TXNY.csv".

IMPORTANT!!

- Note that the CSV file used in this lab is not the same as the one used in the lecture!
- The CSV file used in this lab is created using the English - US locale, which means the decimal separator is a period and the thousands separator is a comma, and dates are formatted in m/dd/yyyy format. If you are using local settings like German, French, or others, in which the decimal separator is a comma and the thousands separator is a period, Power Query (or Query in Excel 2016) will ignore the period and treats all digits as numbers. You can change the locale of your Power Query for just the workbook you are using. If you use Excel 2010 or 2013, you can see the locale settings in the Power Query tab. If you are using Excel 2016, it is under New Query / Query settings / Data Load.

**Lab Steps**

1. Start with a blank Excel file.
2. Import the CSV file by creating a New Query (New Query is found in the Data tab for Excel 2016 and in the Power Query tab for Excel 2013 and 2010).
3. Edit the query before loading the data:
    - Remove the following columns (IsCompete).
    - Split the City column to only contain the City and remove the state and country information, since there are already columns for State and Country.
    - Replace the State abbreviation with the State name (change NY entries to New York and TX entries to Texas).
4. Load the data to the Excel data model (remember to select the bottom half of the Close & Load to icon and then select the Close & Load To... option).

### Lab Question

Answer the following questions by reviewing the imported data.

How many rows were imported to the data model? (NOTE: header information is never included in the row counts)

**5518**

How many columns were imported to the data model?

**14**

## Exercise 2: Create Pivot Table(s) to Perform Analysis

Now that you have imported the data, you can create pivot table(s) and/or pivot chart(s) to help Bobby with his questions. Recall that Bobby would like to know:

- Which of his districts performs the best and the worst in the period?
- Which of the cities have the most sales and which of them have the least sales?
- How are the product categories performing overall in his districts?

### Lab Question 1

Which district has the most total sales (highest revenue)?

- District 01
- District 02
- District 03
- District 21
- District 22
- **District 23**

Which district has the least total sales (lowest revenue)?

- District 01
- **District 02**
- District 03
- District 21
- District 22
- District 23

### Lab Question 2

Which city in Texas has the most total sales (highest revenue)?

- San Antonio
- **Houston**
- Austin
- Dallas

Which city in New York has the least total sales (lowest revenue)?

- **Arkport**
- Clayton
- Tivoli
- Ripley

How many cities in the State of New York have sales (Revenue)? (Hint: Distinct Count aggregation might be useful)

- 710
- 711
- **712**
- 713

### Lab Question 3

With product categories in the Columns, Districts in the Rows, and Sum of Revenue, rank the product categories from the highest to lowest sales over all of the districts (using the Grand Total row).

Drag the product category to its appropriate box, 1 being the product category with the highest sales, and 4 being the product category with the lowest sales.

1. Urban
2. Mix
3. Rural
4. Youth

### Lab Question 4

Given what you discovered in Question 3, does the same pattern hold true in each of the individual districts?

- Yes
- **No**