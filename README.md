# Zepto-Inventory-and-Sales-Analysis
**Project Overview**

This project simulates how real-world data analysts work in the e-commerce and retail industry. Using a real Zepto product inventory dataset, the project covers the full analytics workflow — from raw messy data to business-driven insights — entirely using SQL.

**Key objectives:**

1. Set up a messy, real-world e-commerce inventory database
2. Perform Exploratory Data Analysis (EDA) to explore product categories, availability, and pricing inconsistencies
3. Implement Data Cleaning — handle null values, remove invalid entries, and convert pricing from paise to rupees
4. Write business-driven SQL queries to derive insights around pricing, inventory, stock availability, revenue, and more


** Dataset Overview**

The dataset was sourced from Kaggle and was originally scraped from Zepto's official product listings.
Each row represents a unique SKU (Stock Keeping Unit) for a product. Duplicate product names exist because the same product may appear multiple times in different package sizes, weights, discounts, or categories to improve visibility — exactly how real catalog data looks.

**🧾 Columns**


sku_id: Unique identifier for each product entry (Synthetic Primary Key)

name: Product name as it appears on the app

category: Product category like Fruits, Snacks, Beverages, etc.

mrp: Maximum Retail Price (originally in paise, converted to ₹)

discountPercent: Discount applied on MRP

discountedSellingPrice: Final price after discount (also converted to ₹)

availableQuantity: Units available in inventory

weightInGms: Product weight in grams

outOfStock: Boolean flag indicating stock availability

quantity: Number of units per package (mixed with grams for loose produce)

** Tools & Technologies**

Database: PostgreSQL
IDE: pgAdmin / DBeaver
Language: SQL (DDL, DML, Aggregations, Window Functions, CTEs)


📁 Project Structure
zepto-inventory-sql-analysis/
│
├── README.md
│
├── dataset/
│   └── zepto_inventory.csv          # Raw dataset from Kaggle
│
├── queries/
│   ├── 01_database_setup.sql        # Table creation & data import
│   ├── 02_exploratory_analysis.sql  # EDA queries
│   ├── 03_data_cleaning.sql         # Null handling, type conversion, deduplication
│   └── 04_business_insights.sql     # Revenue, pricing & inventory analysis
│
└── screenshots/
    └── query_outputs.png            # Sample query results

** Analysis Highlights**

1. Identified and handled null values in pricing and quantity columns
2. Converted mrp and discountedSellingPrice from paise → ₹ for accurate analysis
3. Removed invalid SKUs with zero or negative pricing
4. Analyzed top revenue-generating categories
5. Found products with the highest discount percentages
6. Assessed stock availability across categories using outOfStock flag
7. Used window functions for ranking products within categories by price


** Sample Business Questions Answered**

1. Found top 10 best-value products based on discount percentage

2. Identified high-MRP products that are currently out of stock

3. Estimated potential revenue for each product category

4. Filtered expensive products (MRP > ₹500) with minimal discount

5. Ranked top 5 categories offering highest average discounts

6. Calculated price per gram to identify value-for-money products

7. Grouped products based on weight into Low, Medium, and Bulk categories

8. Measured total inventory weight per product category


🗂️ Data Source

Platform: Kaggle
Origin: Scraped from Zepto's official product listings
Format: CSV


🙋‍♀️ Author
Poornima
MCA Student | Aspiring Data Analyst
LinkedIn • GitHub
