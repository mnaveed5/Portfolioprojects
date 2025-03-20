🌿📊 Plant Performance Report Dashboard

### Dashboard Link : https://github.com/mnaveed5/Portfolioprojects/blob/9f7628ad384f27893d75569335427cc67dad6b6f/Performance%20Report.pbix

## Problem Statement

This dashboard helps the PlantCo company understand the performance of its products and accounts across different regions. It highlights key metrics like Sales, Gross Profit, and Quantity, and allows analysis by product types, accounts, and time periods. By identifying bottom-performing countries and accounts, the company can strategize to improve profitability and sales.

The dashboard also offers insights into the Gross Profit percentage, which is crucial for business growth. With dynamic comparison between Year-to-Date and Prior Year-to-Date performance, management can make data-driven decisions.


### Steps followed 


Step 1: Loaded the Plant_DTS Excel file into Power BI, containing three tables: Fact Sales, Dim Account, and Dim Product.
Step 2: Opened Power Query Editor, renamed columns and tables (e.g., Dim Product, Dim Account, Fact Sales), removed duplicates based on unique identifiers (Product Name, Account ID).
Step 3: Verified data types (especially Date column) and applied necessary transformations.
Step 4: Created a Date Dimension table (Dim Date) using DAX's CALENDAR function, covering dates from Jan 2022 to Dec 2024.
Step 5: Added a calculated column InPast to flag months that fall within available sales data.
Step 6: Created a slicer table (Slicer Values) to toggle between Sales, Quantity, and Gross Profit metrics dynamically.
Step 7: Built essential base measures:
Sales = SUM(Fact Sales[Sales Amount])
Quantity = SUM(Fact Sales[Quantity])
Gross Profit = Sales - SUM(Fact Sales[COGS])
Step 8: Developed Year-to-Date (YTD) and Prior Year-to-Date (PYTD) measures for Sales, Quantity, and Gross Profit.
Step 9: Implemented Switch Measures to toggle between Sales, Quantity, and Gross Profit dynamically for YTD and PYTD.
Step 10: Created a Comparison Measure (YTD vs PYTD) to evaluate growth/decline.
Step 11: Designed visuals:
Card Visuals: Showing key KPIs like YTD, PYTD, YTD vs PYTD, and Gross Profit %.
Slicers: For Value selection (Sales, Quantity, GP%) and Year selection.
Tree Map: Displaying Bottom 10 countries based on YTD vs PYTD performance.
Waterfall Chart: Showing month-over-month contribution to YTD vs PYTD.
Line & Stacked Column Chart: Comparing YTD and PYTD by month and product type.
Scatter Chart: For account profitability segmentation, based on GP% and Sales/Quantity.
Step 12: Applied conditional formatting to highlight positive/negative trends.
Step 13: Added dynamic titles based on slicer selections.
Step 14: Added a custom report title using DAX.
Step 15: Published the report to Power BI Service.

# Insights

A single page report was created on Power BI Desktop & it was then published to Power BI Service.

Total Sales and Quantity Overview:
Dynamic cards show YTD, PYTD, and comparison values for Sales, Quantity, and Gross Profit.

Gross Profit Percentage:
Key metric tracked across accounts and regions.

Bottom Performing Countries:
Identified Bottom 10 countries in terms of decline in YTD vs PYTD sales.

Monthly Performance:
Waterfall chart highlights growth and decline patterns month by month.

Product Type Analysis:
Stacked column chart shows which product types contribute most to sales.

Account Profitability Segmentation:
Scatter chart displays accounts' GP% vs Sales/Quantity, highlighting focus areas for sales strategies
