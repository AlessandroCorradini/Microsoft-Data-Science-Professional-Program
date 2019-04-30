# Explore and Extend a Classic Excel Dashboard - Lab

## Lab Overview

Please review this information carefully – VanArsdel sales data will be used throughout the course – especially in the lab exercises.

**Scenario**

VanArsdel is a company that manufactures and sells sporting goods. The company has offices in the United States (US) and several other countries. Its sales comprise of US sales and International sales. VanArsdel’s sales come from its owned manufactured products, as well as other manufacturers’ products.

VanArsdel's Canada's office has sent you their sales dashboard for the year 2015 up to the end of June, in form of an Excel file.

The company uses a logical operator in the column/field named isVanArsdel to track whether sales come from their manufactured products or from other manufacturers’ products. The logical operators used includes a “Y” (for Yes) to represent a record (a row in the table) of a sales transaction for a VanArsdel manufactured product and a “N” (for No) to represent a record of a sales transaction for an other manufacturers’ product.

You will use this file to review VanArsdel's sales in Canada.

### Lab Overview

In this lab, you will explore an Excel report that has a dashboard created using Excel pivot charts and slicers based on data from Excel sheets. You will then extend the dashboard by adding a pivot table and apply conditional formatting to the pivot table.

Before starting this lab, you should review Module 1 in this course. Then, if you have not already done so, follow the instructions in the Set up the Lab Environment section of this course to set up the lab environment.

**What You'll Need**

- A computer with Microsoft Excel installed on it. We prefer Excel 2016, but you can still complete the lab using Excel 2013 or Excel 2010.
- File “Lab 1 – Classic Analysis - Dashboard CA.xlsx”
- If you're using Excel 2010, use this file instead "Lab 1 - Classic Analysis - Dashboard CA - 2010.xlsx"

## Exercise 1: Explore the Classic Excel Dashboard

Download and open the file "Lab 1 - Classic Analysis - Dashboard CA.xlsx". If you're using Excel 2010, use this file instead "Lab 1 - Classic Analysis - Dashboard CA - 2010.xlsx". You should see the "Dashboard - CA" worksheet, showing six pivot charts of different types, with associated slicers to filter the data. Play around with the slicers to select different filters and see how your choices affect the charts. Unhide the hidden worksheets to view the data source of the charts. 

### Lab Question 1

This dashboard has five slicers which are used to filter the data in the connected charts. Slicers are very useful to visually indicate the current filtering state for the charts making it easy to understand exactly what is shown. As an example, in the screen capture below, there are no filters applied to the charts since all of the slicer buttons are active. Remember that a slicer button that is selected (active) indicates that the item is included in the filter.

Where in this dashboard should you click if you want to show only VanArsdel's manufactured goods in the charts? (Place the green pointer - the dot - on the appropriate slicer button by clicking your mouse on the EXACT location - not just on the slicer)

### Lab Question 2

Answer the following question by reviewing the data source for the dashboard objects.

Where do the sales figures shown in the charts come from?

- SQL database
- Excel data model
- **Sales Worksheet**
- Products Worksheet
- Dashboard - CA Worksheet

### Lab Question 3

Answer the following question by reviewing the data source for the dashboard objects (Hint: you may have to consider the source from formulas as well).

Where does the product's categories and segments data come from? (Select two that apply)

- SQL database
- Excel data model
- **Sales Worksheet**
- **Products Worksheet**
- Dashboard - CA Worksheet

## Exercise 2: Extend the Classic Excel Dashboard

You want to analyze the percentage of the VanArsdel sales in Canada that come from VanArsdel's manufactured goods, by each State (Province). While the chart "Sales by State" shows an overview of this information, you want to show the exact percentage (to two decimal places) of VanArsdel's sales from VanArsdel's manufactured goods. Remember – VanArsdel sells both their own manufactured goods as well as goods from other manufacturers. Finally, you want to highlight if VanArsdel's "share" of goods sold by manufacturer for that state is less than the overall VanArsdel's "share" for the country.

1. Create a pivot table to achieve this task. 
2. Use the State field from the Sales table for Rows, isVanArsdel field for Columns, and Sum of Revenue for Values.
3. Set Show values as % of Row Total.
(Ungraded) Apply conditional formatting and highlight the VanArsdel's share for the State(s) that is (are) less than the overall VanArsdel's share for the country (the grand total line). See the next Unit for one method of conditional formatting for this exercise. Can you come up with another method? Share your ideas in the discussion forum.

If you need a little refresher, check out the following resource on how to create a pivot table:

https://support.office.com/en-US/Article/Quick-start-Create-a-PivotTable-report-0c220f35-e478-49aa-beaf-24018b7f0f64

### Lab Question

Once you have created the pivot table, you can analyze the performance of VanArsdel's manufactured goods (percent sales for goods manufactured by VanArsdel) for each State. (Hint: refer back to the Lab Overview for the discussion on the purpose of the isVanArsdel field).

What is the percentage of VanArsdel's manufactured goods sold in Alberta? (to two decimal places in the format 00.00, without the % sign)

**47.77**

What is the percentage of VanArsdel's manufactured goods sold in Manitoba? (to two decimal places in the format 00.00, without the % sign)

**47.21**

What is the percentage of VanArsdel's manufactured goods sold in Quebec? (to two decimal places in the format 00.00, without the % sign)

**51.46**