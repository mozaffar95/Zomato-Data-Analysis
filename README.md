# Zomato Data Analysis (SQL Project)

# Project Overview

This project focuses on cleaning and analyzing the Zomato restaurant dataset using SQL.
The dataset was downloaded from Kaggle in CSV format and imported into MySQL for analysis.

The goal of this project is to clean raw restaurant data and extract useful insights such as ratings, cost trends, and restaurant types.

---

## Dataset

Source: Kaggle Zomato Dataset

The dataset contains the following columns:

* name → Restaurant name
* online_order → Whether online order is available
* book_table → Table booking availability
* rate → Restaurant rating
* votes → Number of votes received
* approx_cost(for two people) → Average cost for two people
* listed_in(type) → Restaurant type

---

##  Tools Used

* SQL (MySQL)
* Kaggle Dataset (CSV)
* GitHub

---

##  Data Cleaning Steps

The dataset contained inconsistent values and formatting issues.
The following cleaning steps were performed:

1. Removed extra spaces from rating column
2. Removed '/5' from rating values
3. Converted invalid rating values to NULL
4. Converted rating column to FLOAT datatype
5. Removed commas from cost column
6. Converted cost column to numeric format
7. Renamed column `approx_cost(for two people)` to `cost_for_two`

---

##  Data Validation

The following checks were performed to ensure data quality:

* Rating range check (MIN and MAX)
* Cost range check
* NULL value detection
* Duplicate record detection

---

##  SQL Analysis Performed

Example queries used in the project:

* Checking dataset structure
* Cleaning rating column
* Cleaning cost column
* NULL value analysis
* Duplicate record detection

---

##  Conclusion

This project demonstrates how SQL can be used to clean and analyze raw restaurant datasets.
Proper data cleaning improves data quality and helps in extracting meaningful insights.

---

##  Project Files

* `zomato_data.csv` → Original dataset
* `zomato_sql_analysis.sql` → SQL queries used for cleaning and analysis
* `README.md` → Project documentation

