# 📊 **Sales Insights Data Analysis Project**

## 📌 **Project Overview**

This project focuses on analyzing sales data using **SQL** and **Power BI** to extract meaningful business insights. The goal is to help stakeholders understand revenue trends, customer behavior, and market performance for better decision-making.

## 🚀 **Key Objectives**

- **Analyze sales performance** across different markets
- **Identify top customers and products**
- **Track revenue trends over time**
- **Perform data cleaning and transformation**
- **Build interactive dashboards** for business insights

## 🛠️ **Tools & Technologies Used**

- **MySQL** – Data storage and querying
- **SQL** – Data analysis and transformation
- **Power BI** – Data visualization and dashboard creation

## 🗂️ **Dataset Information**

The dataset includes:
- Customers data
- Transactions data
- Product details
- Date table

## ⚙️ **Project Setup Instructions**
### 1️⃣ Install MySQL

Follow this tutorial to install MySQL on your system:
👉 https://www.youtube.com/watch?v=WuBcTJnIuzo

### 2️⃣ Import Database

- Download the db_dump.sql file
- Open MySQL Workbench / phpMyAdmin
= Import the SQL file into your database

## 📊 **SQL Analysis Queries**

### 🔹 Customer Analysis

-- Show all customers
SELECT * FROM customers;

-- Total number of customers
SELECT COUNT(*) FROM customers;

### 🔹 Market Analysis

-- Transactions for Chennai market
SELECT * FROM transactions
WHERE market_code = 'Mark001';

-- Distinct products sold in Chennai
SELECT DISTINCT product_code 
FROM transactions
WHERE market_code = 'Mark001';

### 🔹 Currency Analysis

-- Transactions in USD
SELECT * FROM transactions
WHERE currency = 'USD';

### 🔹 Time-Based Analysis

-- Transactions in 2020
SELECT transactions.*, date.*
FROM transactions
INNER JOIN date ON transactions.order_date = date.date
WHERE date.year = 2020;

### 🔹 Revenue Analysis

-- Total revenue in 2020
SELECT SUM(transactions.sales_amount)
FROM transactions
INNER JOIN date ON transactions.order_date = date.date
WHERE date.year = 2020;

-- Revenue in January 2020
SELECT SUM(transactions.sales_amount)
FROM transactions
INNER JOIN date ON transactions.order_date = date.date
WHERE date.year = 2020 
AND date.month_name = "January";

-- Revenue in Chennai (2020)
SELECT SUM(transactions.sales_amount)
FROM transactions
INNER JOIN date ON transactions.order_date = date.date
WHERE date.year = 2020 
AND transactions.market_code = 'Mark001';

## 📈 **Power BI Dashboard**

### 🔹 Key Insights Visualized:
Total Revenue: **984.81M**
Sales Quantity: **2M**
Revenue by Market
Sales Quantity by Market
Revenue Trend Over Time
Top 5 Customers
Top 5 Products

### 🔹 Data Transformation (Power BI)
norm_amount = 
IF(
    [currency] = "USD",
    [sales_amount] * 75,
    [sales_amount]
)


## 📷 **Dashboard Preview**

![Image_ALT]()

## 💡 **Key Insights**
**Delhi** is the highest revenue-generating market
Certain customers contribute significantly to total revenue
Revenue shows fluctuations over time
Data cleaning **(currency normalization)** was essential

## 🎯 **Conclusion**

This project demonstrates:

Strong **SQL querying skills**
Data cleaning and transformation
Business insight generation
Dashboard creation using **Power BI**



