# Advanced Text Query - Lab

## Lab Overview

**SCENARIO**

VanArsdel is a company that manufactures and sells sporting goods. The company has offices in the United States (US) and several other countries. Its sales comprise of US sales and International sales. VanArsdel’s sales come from its owned manufactured products, as well as other manufacturers’ products.

A recently published industry report shows monthly unit sales of sporting goods by category and manufacturer for the year of 2014. You want to compare VanArsdel’s sales data to this industry report and perform some analysis. You need to import the industry report (a formatted Excel file) to your existing data model, before you can perform further analysis.

### Lab Overview

In this lab, you will import data from a formatted Excel file to a blank Excel file.

Before starting this lab, you should review Module 6 in this course. Then, if you have not already done so, follow the instructions in the Set up the Lab Environment section of this course to set up the lab environment.

**What You’ll Need**

- A computer with Microsoft Excel installed on it. We prefer Excel 2016, but you can still complete the lab using either Excel 2013 or Excel 2010.
- The following Excel file (to be imported):
    - “Lab 6 – Industry Report.xlsx”

## Exercise: Import Data from a Formatted Excel File

You want to import the industry report (a formatted Excel file). To begin, start with a blank Excel file.

1. Import the data from the Excel file (“Lab 6 – Industry Report.xlsx”) by creating a new Query. To do this, use the From File / From Workbook option.
2. Edit the query and perform the following steps:
    - Name the Query IndustryReport.
    - Remove the first and second rows of the table.
    - Promote the row that represents the title of the column to the table headers.
    - Fill the Category column with the correct categories.
    - Remove all the rows that represent total values.
    - Remove the remaining rows that do not represent data.
    - Remove the column that represent total values.
    - Remove the remaining columns that do not represent data.
    - Transform the monthly columns to rows and name the resulting columns appropriately. (Hint: You might find the Unpivot Columns feature useful).
    - Rename the resulting columns appropriately.
3. Load the data into Excel data model.

### Lab Question

Answer the following questions by reviewing the query you have just created.

How many rows were loaded into the data model?

**436**

How many columns were left in the resulting table?

**4**