# Zepto-Inventory-and-Sales-Analysis
Project Overview
This project simulates how real-world data analysts work in the e-commerce and retail industry. Using a real Zepto product inventory dataset, the project covers the full analytics workflow — from raw messy data to business-driven insights — entirely using SQL.
Key objectives:

Set up a messy, real-world e-commerce inventory database
Perform Exploratory Data Analysis (EDA) to explore product categories, availability, and pricing inconsistencies
Implement Data Cleaning — handle null values, remove invalid entries, and convert pricing from paise to rupees
Write business-driven SQL queries to derive insights around pricing, inventory, stock availability, revenue, and more


📂 Dataset Overview
The dataset was sourced from Kaggle and was originally scraped from Zepto's official product listings.
Each row represents a unique SKU (Stock Keeping Unit) for a product. Duplicate product names exist because the same product may appear multiple times in different package sizes, weights, discounts, or categories to improve visibility — exactly how real catalog data looks.
🧾 Column Descriptions
ColumnDescriptionsku_idUnique identifier for each product entry (Synthetic Primary Key)nameProduct name as it appears on the appcategoryProduct category (e.g., Fruits, Snacks, Beverages)mrpMaximum Retail Price — originally in paise, converted to ₹discountPercentDiscount percentage applied on MRPdiscountedSellingPriceFinal price after discount — also converted to ₹availableQuantityNumber of units available in inventoryweightInGmsProduct weight in gramsoutOfStockBoolean flag indicating whether the product is out of stockquantityUnits per package (mixed with grams for loose produce)

🛠️ Tools & Technologies

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

🔍 Analysis Highlights

Identified and handled null values in pricing and quantity columns
Converted mrp and discountedSellingPrice from paise → ₹ for accurate analysis
Removed invalid SKUs with zero or negative pricing
Analyzed top revenue-generating categories
Found products with the highest discount percentages
Assessed stock availability across categories using outOfStock flag
Used window functions for ranking products within categories by price


📊 Sample Business Questions Answered

Which product categories have the most out-of-stock items?
What is the average discount offered per category?
Which SKUs generate the highest estimated revenue?
Are there pricing inconsistencies between MRP and discounted price?
What percentage of inventory is currently unavailable?


🗂️ Data Source

Platform: Kaggle
Origin: Scraped from Zepto's official product listings
Format: CSV


🙋‍♀️ Author
Poornima
MCA Student | Aspiring Data Analyst
LinkedIn • GitHub
