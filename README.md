# 🛒 Zepto Retail Analytics using SQL

> 📊 End-to-end SQL-based retail analytics project focused on pricing strategy, inventory analysis, revenue estimation, and business intelligence using real-world e-commerce product data.

---

# 📖 Executive Summary

Retail businesses generate massive volumes of transactional and product data every day. Transforming this data into actionable business insights is essential for improving pricing strategies, inventory planning, and operational efficiency.

This project demonstrates a complete SQL analytics workflow by analyzing **Zepto's product catalog**. The project covers database design, data validation, data cleaning, exploratory analysis, and business-focused reporting to generate insights that support data-driven decision-making.

The analysis simulates how a **Data Analyst** or **Business Analyst** evaluates retail data to identify opportunities for revenue optimization and inventory improvement.

---

# 🎯 Business Problem

E-commerce organizations require continuous monitoring of product pricing, discount effectiveness, stock availability, and category performance to maximize profitability and improve customer satisfaction.

The objective of this project is to extract meaningful business insights from raw product data using SQL and convert those insights into actionable business intelligence.

---

# 🚀 Project Objectives

* ✅ Design and manage a structured relational database.
* ✅ Clean and validate retail product data.
* ✅ Analyze pricing and discount patterns.
* ✅ Evaluate inventory availability.
* ✅ Estimate category-level revenue.
* ✅ Identify high-value products.
* ✅ Demonstrate industry-standard SQL analytics techniques.

---

# 📂 Dataset Overview

The dataset contains product-level information including:

| 📌 Attribute        | 📄 Description          |
| ------------------- | ----------------------- |
| Product Name        | Product title           |
| Category            | Product category        |
| MRP                 | Maximum Retail Price    |
| Discount Percentage | Promotional discount    |
| Selling Price       | Final selling price     |
| Available Quantity  | Inventory available     |
| Product Weight      | Weight (grams)          |
| Stock Status        | In Stock / Out of Stock |
| Quantity            | Package quantity        |

---

# 🛠️ Technology Stack

* 💾 SQL
* 🐬 MySQL
* 🖥️ MySQL Workbench
* 🗄️ Relational Database Design

---

# ⚙️ Project Methodology

## 🏗️ 1. Database Design

* Database creation
* Table schema design
* Primary key implementation
* Data type optimization

---

## 🔍 2. Data Validation & Quality Assessment

Performed comprehensive data quality checks including:

* ✔️ Missing value detection
* ✔️ Duplicate identification
* ✔️ Category validation
* ✔️ Inventory verification
* ✔️ Dataset profiling

---

## 🧹 3. Data Cleaning

To improve analytical accuracy:

* 🗑️ Removed invalid pricing records
* 💰 Converted prices from paise to rupees
* ✅ Standardized data for analysis

---

## 📈 4. Exploratory Data Analysis

Analyzed:

* 📦 Product distribution
* 💸 Pricing behavior
* 🏷️ Discount trends
* 📊 Category performance
* 📦 Inventory availability

---

# 📊 Business Analysis

## 💸 Pricing & Discount Analysis

* 🔹 Top discounted products
* 🔹 Premium products with minimal discounts
* 🔹 Category-wise pricing comparison
* 🔹 Price-per-gram analysis

---

## 📦 Inventory Analysis

* 🔹 High-value products currently out of stock
* 🔹 Inventory availability by category
* 🔹 Total inventory weight

---

## 💰 Revenue Analysis

Estimated category-wise revenue using product quantity and selling price to understand business contribution across categories.

---

## 🏷️ Product Segmentation

Products were classified into:

* 🟢 Low
* 🟡 Medium
* 🔵 Bulk

based on product weight.

---

# 🧠 SQL Skills Demonstrated

* 🗄️ Database Design
* 🧹 Data Cleaning
* 🔍 Data Validation
* 📊 Aggregate Functions
* 📂 GROUP BY
* 🎯 HAVING
* 📈 ORDER BY
* 🔀 CASE Statements
* 🔎 DISTINCT
* ✏️ UPDATE
* ❌ DELETE
* 🎛️ Filtering
* 🧮 Numeric Functions
* 📋 Business Reporting

---

# 💡 Key Business Insights

* 📈 High-discount products can improve promotional effectiveness.
* 💰 Premium products with low discounts reveal pricing opportunities.
* 🚨 Out-of-stock premium products indicate potential revenue leakage.
* 📊 Revenue estimation highlights top-performing categories.
* ⚖️ Unit-price analysis improves product value comparison.
* 📦 Inventory segmentation supports warehouse planning.

---

# 🌟 Business Value

This analysis helps businesses:

* 📈 Improve pricing strategies
* 🎯 Optimize promotional campaigns
* 📦 Enhance inventory management
* 💰 Identify revenue opportunities
* 📊 Support data-driven decision-making

---

# 📁 Repository Structure

```text
Zepto-SQL-Analytics
│
├── 📂 Dataset/
│   └── zepto_v2.csv
│
├── 📂 SQL/
│   └── zepto_analysis.sql
│
├── 📂 Screenshots/
│
├── 📄 README.md
│
└── 📜 LICENSE
```

---

# ▶️ How to Execute

1️⃣ Clone the repository.

2️⃣ Create the database in MySQL.

3️⃣ Import the dataset.

4️⃣ Execute the SQL script.

5️⃣ Review the analytical reports.

---

# 🔮 Future Enhancements

* 📊 Interactive Power BI Dashboard
* 📈 Executive KPI Dashboard
* 🤖 SQL + Python Automation
* 📉 Trend Analysis
* ⚡ Window Functions & CTEs
* 🏢 Enterprise Reporting

---

# 👨‍💻 Author

## **Rohan Prajapati**

**Data Analyst | Business Analyst | SQL | Python | Power BI**

Passionate about transforming raw data into meaningful business insights through analytics, visualization, and data-driven decision-making.

---

# 🤝 Connect

⭐ If you found this project helpful, consider giving it a **Star**.

💬 Feedback, suggestions, and contributions are always welcome!
