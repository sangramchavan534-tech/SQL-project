# Pharmaceutical Product Analytics --- SQL Project

## 1. Project Overview

This project uses SQL to explore a pharmaceutical product dataset and
turn raw product information into useful business insights. The dataset
includes product names, manufacturers, prices, dosage forms, pack sizes,
active ingredients, therapeutic classes, and discontinued status.

The project is designed as a beginner-to-intermediate portfolio project
for a **Fresher Data Analyst**. It demonstrates how SQL can be used to
summarize data, compare product groups, rank manufacturers, and
investigate pricing patterns.

## 2. Project Objectives

-   Understand the structure and quality of pharmaceutical product data.
-   Measure the number of products, manufacturers, ingredients, and
    therapeutic classes.
-   Analyze product prices and identify the most expensive products.
-   Compare average prices across therapeutic classes.
-   Find manufacturers with the largest product portfolios.
-   Compare active and discontinued products.
-   Use CTEs and window functions for more advanced analysis.
-   Prepare results that could later be presented in an Excel or Power
    BI dashboard.

## 3. Dataset Description

The dataset contains the following fields:

  -----------------------------------------------------------------------
  Column                              Description
  ----------------------------------- -----------------------------------
  `product_id`                        Unique identifier for a product

  `brand_name`                        Brand or product name

  `manufacturer`                      Standardized manufacturer name

  `price_inr`                         Product price in Indian rupees

  `is_discontinued`                   Indicates whether the product is
                                      discontinued

  `dosage_form`                       Form of the product, such as tablet
                                      or syrup

  `pack_size`                         Quantity in the package

  `pack_unit`                         Packaging unit, such as strip or
                                      bottle

  `num_active_ingredients`            Number of active ingredients
                                      recorded

  `primary_ingredient`                Main active ingredient

  `primary_strength`                  Recorded strength of the primary
                                      ingredient

  `therapeutic_class`                 Therapeutic category assigned to
                                      the product

  `packaging_raw`                     Original packaging description

  `manufacturer_raw`                  Original manufacturer text as
                                      supplied in the source data
  -----------------------------------------------------------------------

> **Data note:** The example rows are only a sample. Run the queries
> against the full dataset before reporting final counts, percentages,
> or price findings. The `manufacturer_raw` and `packaging_raw` columns
> can be useful for data-cleaning checks.

## 4. Tools and Technologies

-   **MySQL** --- querying and analysis
-   **SQL** --- filtering, grouping, aggregations, conditional logic,
    CTEs, and window functions
-   **GitHub** --- project version control and portfolio presentation

## 5. SQL Questions Covered

### Basic analysis

1.  Count discontinued products and calculate their percentage.
2.  Find the 10 most expensive products.
3.  Count products by dosage form.

### Intermediate analysis

4.  Find manufacturers with the largest product portfolios.
5.  Calculate average product price by therapeutic class.
6.  Find manufacturers whose average product price is above ₹200.
7.  Find the most frequently represented primary ingredients.
8.  Compare product counts and average prices for active and
    discontinued products.

### Advanced analysis

9.  Rank manufacturers by product count using `RANK()`.
10. Find the highest-priced product in each therapeutic class using
    `ROW_NUMBER()`.
11. Identify manufacturers with both a minimum portfolio size and a high
    average price.
12. Compare each product price with its therapeutic-class average using
    a window function.
13. Calculate each manufacturer's active-product percentage.

## 6. SQL Queries and Results

The screenshots below are intended to show the SQL query and its output.
Save your captured screenshots in the `screenshots/` folder using the
filenames shown here. GitHub will display them in this README when the
image files are committed to the repository at those paths.

### Basic SQL Analysis

**Query 1 --- Discontinued products**

![Discontinued products query and
result]("C:\Users\sangr\OneDrive\Pictures\Screenshots\1.png")

**Query 2 --- Top 10 most expensive products**

![Top 10 expensive products query and
result]("C:\Users\sangr\OneDrive\Pictures\Screenshots\2.png")

**Query 3 --- Products by dosage form**

![Products by dosage form query and
result]("C:\Users\sangr\OneDrive\Pictures\Screenshots\3.png")

### Intermediate SQL Analysis

**Query 4 --- Manufacturers by product portfolio**

![Manufacturers by product portfolio query and
result]("C:\Users\sangr\OneDrive\Pictures\Screenshots\4.png")

**Query 5 --- Average price by therapeutic class**

![Average price by therapeutic class query and
result]("C:\Users\sangr\OneDrive\Pictures\Screenshots\5.png")

**Query 6 --- Manufacturers with average price above ₹200**

![Manufacturers with average price above 200 query and
result]("C:\Users\sangr\OneDrive\Pictures\Screenshots\6.png")

**Query 7 --- Most common primary ingredients**

![Most common primary ingredients query and
result]("C:\Users\sangr\OneDrive\Pictures\Screenshots\7.png")

**Query 8 --- Active vs discontinued comparison**

![Active versus discontinued comparison query and
result]("C:\Users\sangr\OneDrive\Pictures\Screenshots\8.png")

### Advanced SQL Analysis

**Query 9 --- Manufacturer ranking**

![Manufacturer ranking query and
result]("C:\Users\sangr\OneDrive\Pictures\Screenshots\9.png")

**Query 10 --- Highest-priced product in each therapeutic class**

![Highest-priced product by class query and
result]("C:\Users\sangr\OneDrive\Pictures\Screenshots\10.png")

**Query 11 --- Manufacturers with high volume and high average price**

![High-volume and high-average-price manufacturers query and
result]("C:\Users\sangr\OneDrive\Pictures\Screenshots\11.png")

**Query 12 --- Product price compared with class average**

![Product price versus class average query and
result]("C:\Users\sangr\OneDrive\Pictures\Screenshots\12.png")

**Query 13 --- Active-product percentage by manufacturer**

![Active product percentage by manufacturer query and
result]("C:\Users\sangr\OneDrive\Pictures\Screenshots\13.png")


## 7. Business Questions and Potential Insights

The queries can help answer questions such as:

-   Which manufacturers have the largest product portfolios in this
    dataset?
-   Which therapeutic classes have higher average listed prices?
-   Which products are priced above their therapeutic-class average?
-   What proportion of recorded products are discontinued?
-   Which active ingredients appear most often?
-   Which dosage forms are most common?
-   Which manufacturers have the highest active-product percentage?

These are **dataset-level findings**, not necessarily conclusions about
the entire pharmaceutical market. The dataset may not represent all
products, prices, manufacturers, or sales.

## 8. Repository Structure

Arrange your GitHub repository like this:

``` text
pharmaceutical-sql-analysis/
├── README.md
├── data/
│   └── pharma_products.csv
├── sql/
│   ├── 01_basic_analysis.sql
│   ├── 02_intermediate_analysis.sql
│   └── 03_advanced_analysis.sql
├── screenshots/
│   ├── 01_discontinued_products.png
│   ├── 02_top_expensive_products.png
│   ├── 03_products_by_dosage_form.png
│   ├── 04_manufacturer_portfolio.png
│   ├── 05_average_price_by_class.png
│   ├── 06_manufacturers_avg_price_above_200.png
│   ├── 07_common_ingredients.png
│   ├── 08_active_vs_discontinued.png
│   ├── 09_manufacturer_ranking.png
│   ├── 10_highest_price_by_class.png
│   ├── 11_high_volume_high_price_manufacturers.png
│   ├── 12_price_vs_class_average.png
│   ├── 13_active_product_percentage.png
│   └── 14_overall_kpi_summary.png
└── dashboard/
    └── pharma_dashboard.pbix
```

The CSV and Power BI files are optional. Only include files that you
actually have and are permitted to share.

## 9. Resume Description

**Pharmaceutical Product Analytics \| MySQL**

-   Analyzed pharmaceutical product data using SQL to evaluate pricing,
    manufacturers, dosage forms, therapeutic classes, ingredients, and
    product lifecycle status.
-   Applied aggregate functions, conditional logic, CTEs, and window
    functions to rank manufacturers and benchmark product prices against
    therapeutic-class averages.
-   Calculated product portfolio and lifecycle KPIs to support
    structured business analysis.

Once you have verified the results, strengthen these bullets with real
figures---for example, the number of products analyzed, manufacturers
covered, or pricing outliers identified. Do not claim a result until it
has been confirmed by your query output.

## 10. How to Run the Project

1.  Create a database in MySQL.
2.  Import the CSV file into a table named `pharma_products` (or change
    the table name in the SQL queries to match yours).
3.  Open the `.sql` files and execute the queries.
4.  Check the output for each query and validate the results.
5.  Capture screenshots that show both the query and its result.
6.  Save the screenshots in the `screenshots/` folder with the filenames
    listed above.
7.  Update the KPI table with actual values.
8.  Push the README, SQL files, and permitted supporting files to
    GitHub.

## 11. Conclusion

This project demonstrates a practical SQL workflow for pharmaceutical
product analysis, from simple summaries to advanced comparisons using
window functions. It provides a foundation for a Data Analyst portfolio
and can be extended with data-quality checks, Excel reporting, or a
Power BI dashboard.
