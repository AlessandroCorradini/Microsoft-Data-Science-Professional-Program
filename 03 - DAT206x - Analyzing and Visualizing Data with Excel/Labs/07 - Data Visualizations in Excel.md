# Data Visualizations in Excel - Lab

## Lab Overview

**Scenario**

VanArsdel is a company that manufactures and sells sporting goods. The company has offices in the United States (US) and several other countries. Its sales comprise of US sales and International sales. VanArsdel’s sales come from its owned manufactured products, as well as other manufacturers’ products.

### Lab Overview 

In this lab, you will create several visualizations using Pivot Tables and Pivot Charts.

Before starting this lab, you should review Module 7 in this course. Then, if you have not already done so, follow the instructions in the Set up the Lab Environment section of this course to set up the lab environment.

**What You’ll Need**

- A computer with Microsoft Excel installed on it. We prefer Excel 2016, but you can still complete the lab using either Excel 2013 or Excel 2010.
- The following Excel files:
    - “Lab 7 – Model.xlsx”
    - If you're using Excel 2010, please use this file instead: “Lab 7 – Model - 2010.xlsx”

The data has been loaded to the Excel data model. You don't need to refresh or edit the Query.

## Exercise 1: Tabular Report

Start with the Excel file “Lab 7 – model.xlsx”. If you're using Excel 2010, please use this file instead: “Lab 7 – Model - 2010.xlsx”. You have imported VanArsdel’s US and International sales data in Module 4 and created several measures in your data model using DAX in Module 5. You need to create a Pivot Table showing monthly unit sales, by Category, by Manufacturer, for the year of 2014.

The report will look as follows (for report formatting tips see the last Unit of the lab):

![](img/Report1.png)

### Lab Question

When you summarize data using an Excel Pivot Table, each number found in a Pivot Table cell represents one or more records in the pivot table’s source data and is directly related to the Column and Row fields you used in the Pivot Table. A quick way to review this underlying set of records is to use the Show Details feature - right click within the desired cell and select Show Details from the menu options. This is commonly called Drilling down into the data and can also be achieved by double-clicking in the cell in question.

Answer the following questions by using the tabular report you created.

How many rows (transactions) made up VanArsdel sales for Youth Category and Abbas Manufacturer in the month of January 2014?

**11**

How many rows (transactions) made up VanArsdel sales for Rural Category and VanArsdel Manufacturer in the month of October 2014?

**4**

Note: If you cannot drill down into the data, try the following steps:

1) Go to the PowerPivot Window

2) Select Diagram View, to view the tables and their connections

3) Go to table Sales and select the field Date

4) Right click and select Unhide from Client Tools

## Exercise 2: Part-to-Whole Report

While the Pivot table report gives very detailed figures, you cannot easily see the relation between the sales of a particular Category and Manufacturer in comparison with the total sales. For this, you will create pie charts of Sales by Category and Sales by Manufacturer, and add slicers to filter the data appropriately.

The report will look as follows:

![](img/Report2.png)

Hint: You will need to use the Products and Manufacturer table.

### Lab Question 1

Answer the following questions by using the charts you created. (Hint: Use the slicers)

In year 2013, which Category has the most sales from Abbas Manufacturer goods?
Mix

- Rural
- **Urban**
- Youth

What is the percentage of that category?

- 53.38%
- 55.38%
- **57.38%**
- 59.38%

### Lab Question 2

Answer the following questions by using the charts you created. (Hint: Use the slicers)

In year 2014, which Manufacturer has the most sales for Youth Category?

- **Natura**
- Aliqui
- VanArsdel
- Pomum

What is the percentage of that Manufacturer?

- 27.50%
- **28.50%**
- 29.50%
- 30.50%

## Exercise 3: Monthly Sales Pattern

You noticed that in some months VanArsdel is performing better than other months. You want to investigate whether there is a pattern in VanArsdel’s monthly sales. You need to create a line chart of total sales by month, and add slicer by year.

The report will look as follows:

![](img/Report3.png)

### Lab Question

Answer the following questions by using the chart you created.

In which Month did VanArsdel perform the best in year 2014?

- March
- April
- **May**
- June

What about in year 2013?

- March
- April
- **May**
- June