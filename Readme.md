# 📊 SQL Sales Performance Analysis & Business Intelligence Dashboard

---

## 📌 Introduction

In today’s data-driven business environment, organizations generate large volumes of transactional sales data. However, raw data alone does not provide meaningful insights.  

This project focuses on transforming raw e-commerce sales data into actionable business intelligence using **SQL, Python, Excel, and Power BI**.  

It demonstrates an end-to-end analytics pipeline that enables revenue analysis, customer segmentation, product performance tracking, and executive-level dashboard reporting.

---

## 🎯 Problem Statement

Businesses often struggle to:

- Identify revenue trends across time and regions  
- Detect high-value and repeat customers  
- Measure product and category performance  
- Monitor growth patterns year-over-year  
- Convert raw sales data into structured, decision-ready dashboards  

The absence of a structured analytics workflow leads to delayed insights and suboptimal strategic decisions.

---

## 💡 Proposed Solution

This project implements a structured analytics pipeline that:

- Cleans and validates raw sales data using Excel  
- Imports structured datasets into MySQL using Python (Pandas)  
- Executes advanced SQL queries (JOINs, Aggregations, Window Functions) for KPI computation  
- Implements star-schema modeling in Power BI  
- Builds interactive dashboards for executive insights  

---

## 🎯 Objectives of the Project

- Perform customer, product, and revenue analysis  
- Calculate business KPIs (Revenue, Orders, AOV, CLV, Growth Trends)  
- Analyze regional and monthly sales patterns  
- Detect repeat customers and revenue concentration  
- Deliver business-ready dashboard insights  

---

## 📊 Dataset

- **Source:** Public e-commerce dataset (Kaggle)  
- **Records:** ~200 transactions  
- **Status:** Cleaned and validated before SQL analysis  

---

## 🛠 Tools & Technologies

- **Microsoft Excel** – Initial data cleaning and preprocessing  
- **Python (Pandas, NumPy)** – Structured data import into MySQL  
- **MySQL Workbench** – SQL querying and KPI analysis  
- **Power BI** – Dashboard development and visualization  
- **Matplotlib** – Exploratory Data Analysis (EDA)  
- **Git & GitHub** – Version control and documentation  

---

## 🔄 Project Workflow

1. Data cleaning and validation in Excel  
2. Data import into MySQL using Python (Pandas)  
3. Documentation of data issues and transformations  
4. SQL-based analysis for revenue, customers, products, and regions  
5. Star-schema modeling in Power BI  
6. Interactive dashboard development  
7. Business insight generation and recommendations  

---

## 🔄 Data Import Method (Python → MySQL)

After cleaning the dataset in Excel, the data was imported into MySQL using Python (Pandas) to ensure:

- Proper data type mapping  
- Controlled schema creation  
- Reliable row-level insertion  
- Prevention of CSV import inconsistencies  

**File used for data import:**  
`python/data_import_mysql.ipynb`

This reflects an industry-standard ETL-style workflow.

---

## 📈 Key Analyses Performed

- Revenue and order analysis  
- Customer behavior and repeat customer analysis  
- Product and category performance analysis  
- Regional sales trend analysis  
- Monthly and yearly growth analysis  
- Basic Customer Lifetime Value (CLV) calculation  

---

## 📊 Power BI Dashboard

The interactive dashboard provides:

- Sales trends over time  
- Category and sub-category performance  
- Regional sales distribution  
- Customer contribution and repeat behavior  
- KPI cards (Revenue, Orders, AOV, Growth Metrics)  

The dashboard enables data-driven business decision-making.

---

## 🏗 System Architecture
````
Excel (Raw Data Cleaning)
    ↓
Python (Data Preprocessing & Import to MySQL)
    ↓
MySQL (Data Storage & SQL Analysis)
    ↓
Power BI (Data Modeling & Dashboard Creation)
````

---

## 🔄 Data Flow Overview

1. Raw CSV loaded in Excel  
2. Cleaned dataset exported  
3. Imported into MySQL via Python  
4. SQL queries executed for KPI analysis  
5. Data modeled using star schema  
6. Dashboard created in Power BI  

---

## 🗄 Database Design (High-Level)

### Main Table: `Sales`

Key Fields:
- Order ID  
- Customer ID  
- Order Date  
- Region  
- Category  
- Product Name  
- Sales  
- Quantity  
- Discount  

### Dimensional Modeling in Power BI

- Fact_Sales  
- Dim_Customer  
- Dim_Product  
- Dim_Date  
- Dim_Region  

---

## 📁 Project Structure

---

## 🔄 Data Flow Overview

1. Raw CSV loaded in Excel  
2. Cleaned dataset exported  
3. Imported into MySQL via Python  
4. SQL queries executed for KPI analysis  
5. Data modeled using star schema  
6. Dashboard created in Power BI  

---

## 🗄 Database Design (High-Level)

### Main Table: `Sales`

Key Fields:
- Order ID  
- Customer ID  
- Order Date  
- Region  
- Category  
- Product Name  
- Sales  
- Quantity  
- Discount  

### Dimensional Modeling in Power BI

- Fact_Sales  
- Dim_Customer  
- Dim_Product  
- Dim_Date  
- Dim_Region  

---

## 📁 Project Structure
````project-root/
│
├── data/
│   ├── raw_data.xlsx
│   └── cleaned_data.xlsx
│
├── python/
│   └── data_import_mysql.ipynb
│
├── sql/
│   ├── revenue_analysis.sql
│   ├── customer_analysis.sql
│   ├── product_analysis.sql
│   └── shipping_analysis.sql
│
├── power_bi/
│   └── ecommerce_dashboard.pbix
│
├── docs/
│   ├── data_cleaning.md
│   └── insights_and_recommendations.md
│
└── README.md
````

## 🔐 Security & Data Integrity

- Controlled schema mapping during MySQL import  
- Structured validation before analysis  
- No sensitive or personally identifiable data used  

---

## ✅ Advantages

- Structured and scalable analytics workflow  
- Advanced SQL implementation (Aggregations, Window Functions)  
- Business-ready KPI reporting  
- Clean dimensional data modeling  
- Executive-level interactive dashboard  

---

## ⚠ Limitations

- Dataset limited to ~200 records  
- Static historical dataset  
- No real-time streaming  
- Not deployed as a live production system  

---

## 🔮 Future Enhancements

- Implement real-time database connection  
- Add predictive sales forecasting model  
- Deploy dashboard via Power BI Service  
- Integrate churn prediction modeling  
- Automate ETL pipeline  

---

## 🏁 Final Outcome

- Data transformed into SQL-ready analytical format  
- KPIs such as revenue, orders, repeat customers, and trends accurately measured  
- Interactive dashboard supports strategic decision-making  
- Project demonstrates an end-to-end real-world analytics workflow  

---

## 📌 Conclusion

This project demonstrates how structured SQL analytics combined with Python preprocessing and Power BI visualization can transform raw sales data into actionable business intelligence.  

It provides a scalable foundation for revenue analysis, customer segmentation, performance monitoring, and strategic business decision-making.




