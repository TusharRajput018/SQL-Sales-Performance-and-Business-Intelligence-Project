## Data Cleaning Process (Excel)

1. Added a serial number (S.No) column to uniquely identify each record.
2. Adjusted column width and row height to improve data readability.
3. Checked for blank values across all columns and handled them by:
   - Replacing missing numeric values with zero where applicable
   - Keeping NULL for non-applicable text fields
4. Identified duplicate records using Order_ID, Product_ID, and User_ID and removed duplicate entries.
5. Standardized date formats for Order_Date and related fields to SQL-compatible format (YYYY-MM-DD).
6. Converted Sales/Price columns to proper numeric format.
7. Removed currency symbols (₹ / â‚¹) from price-related columns to ensure numeric consistency.
8. Removed irrelevant columns such as:
   - Review content
   - Review ID
   - Review title
   - Image link
   - Product link
   - Product description
9. Verified zero and negative values in price fields and validated them for correctness.
10. Ensured consistency in Category and Sub-Category naming (case, spelling, spacing).
11. Standardized identifiers such as Order_ID, Product_ID, User_ID, and User_Name to maintain uniform formatting.
