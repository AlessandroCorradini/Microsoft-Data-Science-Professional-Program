# Explore an Excel Data Model - Lab

## Lab Overview

In this lab, you will explore an Excel workbook that has a data model loaded into it. You will also create calculated columns in the data model, apply formatting, and create implicit and explicit measures. You will then use the data model to create pivot tables and perform some analysis with the data.

Before starting this lab, you should review Module 2 in this course. Then, if you have not already done so, follow the instructions in the Set up the Lab Environment section of this course to set up the lab environment.

**What You’ll Need**

- A computer with a supported version/edition of Microsoft Excel installed on it. 
- File “Lab 2 – The Excel Data Model.xlsx”
- If you are using Excel 2010, use this file instead: "Module 2 - The Excel data model (2010).xlsx"

The data has been loaded to the Excel data model. You don't need to refresh or edit the data.

## Exercise 1: Explore the Excel Data Model

Download and open “Lab 2 – The Excel data model.xlsx”. If you are using Excel 2010, use this file instead: "Module 2 - The Excel data model (2010).xlsx". 

You should see a blank worksheet when opening the file. Open the Data Model by selecting the Manage Data Model icon from either the Data or PowerPivot tabs in Excel 2016; from the PowerPivot tab in Excel 2013; or the Power Pivot Window icon from the PowerPivot tab in Excel 2010.The data has been loaded to the Excel data model. You don't need to refresh or edit the data.

### Lab Question

Answer the following questions by reviewing the Excel data model.

How many tables were loaded into the data model?

- 5
- 6
- **7**
- 8

How many rows were loaded into the FactInternetSales table?

- 60397
- **60398**
- 60399
- 60400

## Exercise 2: Create a Pivot Table

The FactInternetSales table contains the OrderQuantity, List Price, and Product Cost for each row in the table. However, it does not have the total sales and cost value for each row in the table. 

1. You want to calculate the total sales for each row of the FactInternetSales table. You do this by creating a calculated column named Revenue in the table, which multiplies the OrderQuantity and List Price. 
2. You want to calculate the cost for each row of the FactInternetSales table. You do this by creating a calculated column named Cost in the table, which multiplies the OrderQuantity and Product Cost.
3. Format these columns as currency.

Now that you have created the calculated columns needed for analysis, you are ready to create your Pivot table report. (Hint: while you are still in the PowerPivot window, from the Home tab on the menu ribbon, click on the Pivot Table icon. This will return you to your Excel window with a blank PivotTable and Field List). 

NOTE: we use the terms “Sales” and “Revenue” – these terms have the same meaning throughout this exercise.

1. Create a Pivot table showing the list of Product categories (EnglishProductCategoryName) in the column, list of Countries (EnglishCountryRegionName) in the rows, and the total sales figure (Sum of Revenue). 
2. Add a slicer to filter by Year (CalendarYear).

### Lab Question 1

Answer the following question by using the pivot table you created.

Including the all data for all years (i.e. do not filter the year), show the ranking of the sales for the top four countries by dragging each country name into the appropriate box where box 1 is for the highest ranking and box 4 is for the lowest.

1. United States
2. Australia
3. United Kingdom
4. Germany

### Lab Question 2

Answer the following question by using the pivot table you created.
Including only the data for the year 2007, show the ranking of the sales for the top four countries by dragging each country name into the appropriate box where box 1 is for the highest ranking and box 4 is for the lowest.

1. Australia
2. United States
3. United Kingdom
4. Germany

## Exercise 3: Create Measures

Up to now, you have shown the sales figures in the Pivot table. These figures dynamically change according to the filtered context. The totals for sales is an implicit measure. You are now interested to see what the margin % of the product by country is. You will need to create an explicit measure to show the margin %.

1. Create an explicit measure named Margin in the FactInternetSales table. This measure calculates the percent profit, which is the total revenue minus the total cost, and divide it by the total cost. (Remember, our definition for Margin is different than what most would consider standard). 
2. Format the Margin measure as a %.
3. Add this newly created measure to the Pivot table.

### Lab Question

What is the total margin % of all products throughout the years?

- 67.90
- 68.90
- **69.90**
- 70.90