#  Zomato Data Analysis (SQL Project)

##  Project Overview

This project focuses on cleaning and analyzing the Zomato restaurant dataset using SQL.
The dataset was downloaded from Kaggle in CSV format and imported into MySQL for analysis.

The main goal of this project is to perform **data cleaning and basic exploratory analysis** to understand restaurant ratings, costs, and restaurant categories.

---

## Dataset

The dataset contains information about restaurants including:

* **Name** → Restaurant name
* **Online Order** → Whether online ordering is available
* **Book Table** → Table booking availability
* **Rate** → Restaurant rating
* **Votes** → Number of customer votes
* **Approx Cost (for two people)** → Average cost for two people
* **Listed In (Type)** → Restaurant category/type

---

##  Tools Used

* **MySQL** – Data cleaning and analysis
* **CSV Dataset** – Data source
* **GitHub** – Project documentation and version control

---

##  Data Cleaning Process

The raw dataset contained inconsistent values and formatting issues.
The following cleaning steps were performed using SQL:

1. Removed extra spaces from the **rating column** using `TRIM()`
2. Removed **'/5'** from rating values using `REPLACE()`
3. Converted invalid rating values to **NULL**
4. Converted rating column to **FLOAT datatype**
5. Removed commas from the **cost column**
6. Converted cost column to **numeric format**
7. Renamed column **approx_cost(for two people)** to **cost_for_two**

These steps helped make the dataset ready for accurate analysis.

---

##  Data Validation

To ensure data quality, the following checks were performed:

* Checking **minimum and maximum rating values**
* Checking **minimum and maximum cost values**
* Identifying **NULL values**
* Detecting **duplicate records**

---

##  SQL Queries Used

Some important SQL operations used in this project:

* Checking table structure using `DESCRIBE`
* Exploring dataset using `SELECT`
* Cleaning rating column using `TRIM()` and `REPLACE()`
* Converting rating values to numeric format
* Cleaning cost column by removing commas
* Checking NULL values in dataset
* Detecting duplicate records

---

## Sample SQL Queries

SELECT MIN(rate), MAX(rate) FROM zomato_data;

SELECT listed_in(type), COUNT(*)
FROM zomato_data
GROUP BY listed_in(type);

SELECT AVG(cost_for_two) FROM zomato_data;

--

## Key Insights

- Most restaurants fall within mid-range pricing.
- Some restaurant types receive significantly more listings.
- Ratings vary between different restaurant categories.

--

##  Project Structure

Zomato-Data-Analysis

│
├── zomato_data.csv
├── zomato_sql_analysis.sql
└── README.md

---

##  Conclusion

This project demonstrates how SQL can be used for **data cleaning and basic data analysis** on a real-world dataset.

Proper data preparation is an essential step in the **data analysis process**, as it improves data quality and helps extract meaningful insights.

---

## 👨‍💻 Author

**Mozaffar**

GitHub Profile:
https://github.com/mozaffar95
