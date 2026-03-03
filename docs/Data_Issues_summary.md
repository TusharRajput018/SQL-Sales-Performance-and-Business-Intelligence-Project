# Data Issues and Resolutions  
**Tool Used:** Microsoft Excel (Pre-SQL Cleaning)

---

## 1. Missing / Blank Values

**Issue:**  
Several records contained missing values across numeric and text fields.

**Impact:**  
Blank values could lead to incorrect aggregations, calculation errors, and misleading insights.

**Resolution:**  
- Numeric fields were filled with `0` where business logic allowed  
- Text fields with missing values were retained as `NULL` to preserve data integrity

---

## 2. Duplicate Records

**Issue:**  
Duplicate rows were identified based on a combination of:
- Order_ID  
- Product_ID  
- User_ID  

**Impact:**  
Duplicate records inflated sales figures and order counts.

**Resolution:**  
- Used Excel’s **Remove Duplicates** feature  
- Retained only unique transactional records

---

## 3. Inconsistent Date Formats

**Issue:**  
Order_Date and related date fields were stored in mixed or non-SQL-friendly formats.

**Impact:**  
Dates could not be reliably used for grouping, sorting, or time-series analysis in SQL.

**Resolution:**  
- Converted all date fields to `YYYY-MM-DD` format  
- Ensured compatibility with MySQL Workbench

---

## 4. Incorrect Data Types for Sales / Price

**Issue:**  
Sales and price columns were stored as text due to embedded currency symbols.

**Impact:**  
Arithmetic operations such as `SUM` and `AVG` produced incorrect results.

**Resolution:**  
- Removed currency symbols (₹ / â‚¹)  
- Converted all price-related columns to numeric format

---

## 5. Irrelevant Columns

**Issue:**  
The dataset contained non-analytical columns such as:
- Review content  
- Review ID  
- Review title  
- Image link  
- Product link  
- Product description  

**Impact:**  
Unnecessary columns increased dataset size and reduced analytical focus.

**Resolution:**  
- Removed all non-business and non-analytical columns  
- Retained only fields relevant to sales, customers, products, and logistics

---

## 6. Zero and Negative Price Values

**Issue:**  
Some price fields contained zero or negative values.

**Impact:**  
These values could distort revenue and performance metrics.

**Resolution:**  
- Identified all zero and negative values  
- Verified them against business logic  
- Retained valid cases and corrected or excluded invalid entries

---

## 7. Category and Sub-Category Inconsistencies

**Issue:**  
Category and Sub-Category values showed inconsistencies in:
- Letter casing  
- Spelling  
- Extra spaces  

**Impact:**  
This caused incorrect grouping and fragmented category-level insights.

**Resolution:**  
- Standardized naming conventions  
- Ensured uniform category and sub-category labels

---

## 8. Identifier Inconsistencies

**Issue:**  
Order_ID, Product_ID, User_ID, and User_Name had inconsistent formatting.

**Impact:**  
This affected joins, grouping, and customer-level analysis.

**Resolution:**  
- Standardized identifier formats  
- Removed extra spaces and ensured consistent casing

---

## 9. Readability and Structural Issues

**Issue:**  
The initial dataset was difficult to scan and manually validate.

**Impact:**  
Manual data validation and quality checks were time-consuming.

**Resolution:**  
- Added a **Serial Number (S.No)** column for unique row identification  
- Adjusted column widths and row heights for improved readability

---

## Final Outcome

After data cleaning:
- The dataset became **SQL-ready**  
- Key metrics such as revenue, orders, repeat customers, and trends became reliable  
- The cleaned data was suitable for **MySQL analysis** and **Power BI dashboarding**
