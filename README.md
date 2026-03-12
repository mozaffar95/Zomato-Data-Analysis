#  Zomato Data Analysis (SQL Project)

##  Project Overview

This project focuses on cleaning and analyzing the Zomato restaurant dataset using SQL.
The dataset was downloaded from Kaggle in CSV format and imported into MySQL for analysis.

The main objective of this project is to perform **data cleaning and exploratory data analysis (EDA)** to understand restaurant ratings, pricing trends, and restaurant categories.

---

##  Dataset

The dataset contains information about restaurants including:

* **Name** → Restaurant name
* **Online Order** → Whether online ordering is available
* **Book Table** → Table booking availability
* **Rate** → Restaurant rating
* **Votes** → Number of customer votes
* **Approx Cost (for two people)** → Average cost for two people
* **Listed In (Type)** → Restaurant category/type

Dataset Source: Kaggle

---

##  Tools Used

* **MySQL** → Data cleaning and analysis
* **CSV Dataset** → Data source
* **GitHub** → Project documentation and version control

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

These steps ensure the dataset is ready for accurate analysis.

---

##  Data Validation

To ensure data quality, the following checks were performed:

* Checking **minimum and maximum rating values**
* Checking **minimum and maximum cost values**
* Identifying **NULL values**
* Detecting **duplicate records**

---

##  SQL Queries Used

Some important SQL operations used in this project include:

* Checking table structure using `DESCRIBE`
* Exploring dataset using `SELECT`
* Cleaning rating column using `TRIM()` and `REPLACE()`
* Converting rating values to numeric format
* Cleaning cost column by removing commas
* Checking NULL values in the dataset
* Detecting duplicate records

---

##  Sample SQL Queries

SELECT MIN(rate), MAX(rate) FROM zomato_data;

SELECT `listed_in(type)`, COUNT(*)
FROM zomato_data
GROUP BY `listed_in(type)`;

SELECT AVG(cost_for_two) FROM zomato_data;

---

##  Key Insights

* Most restaurants fall within **mid-range pricing**.
* Some restaurant categories have **significantly more listings**.
* Restaurant ratings vary across **different restaurant types**.

---

##  Project Structure

Zomato-Data-Analysis

│
├── zomato_data.csv
├── zomato_sql_analysis.sql
└── README.md

---

##  Future Improvements

* Add more SQL analysis queries
* Create data visualizations using Python or Power BI
* Perform deeper exploratory data analysis

---

##  Author

**Mozaffar**

GitHub Profile:
https://github.com/mozaffar95

Aspiring Data Analyst | Learning SQL, Python and Data Analysis
