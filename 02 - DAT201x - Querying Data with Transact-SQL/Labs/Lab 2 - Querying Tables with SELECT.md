# Qeurying Tables with SELECT - Lab

## Retrieving Transportation Report Data

The logistics manager at AdventureWorks has asked you to generate some reports containing details of the company's customers to help reduce transportation costs. For starters, you need to produce a list of all of your customers' locations.

To assist in solution checking, please just add to the existing code in the editor!

### Instructions

- Finish the Transact-SQL query that retrieves all values for City and StateProvince, without duplicates, from the Address table.

```
-- select unique cities, and state province
SELECT DISTINCT City, StateProvince
FROM SalesLT.Address;
```

## Retrieving Transportation Report Data (2)

You are being told that transportation costs are increasing and you need to identify the heaviest products.

To assist in solution checking, please just add to the existing code in the editor!

### Instructions

- Finish the query to retrieve the names of the top ten percent of products by weight.

```
-- select the top 10 percent from the Name column
SELECT TOP 10 PERCENT Name
FROM SalesLT.Product
-- order by the weight in descending order
ORDER BY Weight DESC;
```

## Retrieving Transportation Report Data (3)

The ten heaviest products are transported by a specialist carrier.

To assist in solution checking, please just add to the existing code in the editor!

### Instructions

- Tweak the query to list the heaviest 100 products not including the ten most heavy ones.

```
SELECT Name
FROM SalesLT.Product
ORDER BY Weight DESC
-- offset 10 rows and get the next 100
OFFSET 10 ROWS FETCH NEXT 100 ROWS ONLY;
```

## Retrieving Product Data

The product manager at AdventureWorks would like you to create some reports listing details of the products that you sell.

To assist in solution checking, please just add to the existing code in the editor!

### Instructions

- Write a query to find the names, colors, and sizes of the products with a product model ID of 1.

```
SELECT Name, Color, Size
FROM SalesLT.Product
WHERE ProductModelID = 1;
```

## Retrieving Product Data (2)

The product manager would like more information on products of certain colors and sizes.

To assist in solution checking, please just add to the existing code in the editor!

### Instructions

- Retrieve the product number and name of the products that have a Color of 'Black', 'Red', or 'White' and a Size of 'S' or 'M'.

```
SELECT ProductNumber, Name
FROM SalesLT.Product
-- check that Color is one of 'Black', 'Red' or 'White'
-- check that Size is one of 'S' or 'M'
WHERE Color IN ('Black','Red','White') AND Size IN ('S','M');
```

## Retrieving Product Data (3)

The product manager would also like information on products with a particular product number prefix.

To assist in solution checking, please just add to the existing code in the editor!

### Instructions

- Retrieve the product number, name, and list price of products that have a product number beginning with 'BK-'.

```
SELECT ProductNumber, Name, ListPrice
FROM SalesLT.Product
WHERE ProductNumber LIKE 'BK-%';
```

## Retrieving Product Data (4)

Finally, the product manager is interested in a slight variation of the last request regarding product numbers with a particular prefix.

To assist in solution checking, please just add to the existing code in the editor!

### Instructions

- Modify your previous query to retrieve the product number, name, and list price of products with product number beginning with 'BK-' followed by any character other than 'R', and ending with a '-' followed by any two numerals.
- Remember:
    - to match any string of zero or more characters, use %
    - to match characters that are not R, use [^R]
    - to match a numeral, use [0-9]

```
SELECT ProductNumber, Name, ListPrice
FROM SalesLT.Product
WHERE ProductNumber LIKE 'BK-[^R]%-[0-9][0-9]';
```