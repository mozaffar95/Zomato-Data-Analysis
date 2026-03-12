#  Zomato Data Analysis (SQL Project)

##  Project Overview

This project focuses on cleaning and analyzing the Zomato restaurant dataset using SQL.
The dataset was downloaded from Kaggle in CSV format and imported into MySQL.

The main objective of this project is to perform **data cleaning and exploratory analysis** to understand restaurant ratings, costs, and restaurant types.

---

##  Dataset Information

The dataset contains information about restaurants such as:

* **Name** → Restaurant name
* **Online Order** → Whether online ordering is available
* **Book Table** → Table booking availability
* **Rate** → Restaurant rating
* **Votes** → Number of customer votes
* **Approx Cost (for two people)** → Average cost for two people
* **Listed In (Type)** → Restaurant category/type

---

## Tools Used

* **MySQL** → Data cleaning and analysis
* **Kaggle Dataset (CSV)** → Data source
* **GitHub** → Project documentation and version control

---

## Data Cleaning Steps

The raw dataset contained inconsistent values and formatting issues.
The following steps were performed to clean the data:

1. Removed extra spaces from the **rating column**
2. Removed **'/5'** from rating values
3. Converted invalid rating values to **NULL**
4. Converted rating column to **FLOAT datatype**
5. Removed commas from **cost column**
6. Converted cost column to **numeric format**
7. Renamed column **approx_cost(for two people)** to **cost_for_two**

These steps ensure that the dataset is ready for accurate analysis.

---

## Data Validation

After cleaning the data, several checks were performed to ensure data quality:

* Checking **mi**
