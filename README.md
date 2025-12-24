# Business-Anomaly-Revenue-Leakage-Analysis
I recently completed an end-to-end data analytics project focused on identifying business anomalies and revenue leakage in retail sales data.

Project Summary
Organizations often experience hidden revenue loss due to pricing errors, excessive discounts, negative-profit transactions, and operational inconsistencies. These issues are rarely visible in standard reports.
This project identifies such business anomalies and quantifies revenue leakage using structured SQL analysis and interactive Power BI dashboards.

🎯 Project Objectives
Detect abnormal transactions using rule-based logic
Quantify revenue leakage caused by pricing and discount issues
Identify high-risk categories, products, customers, and time periods
Present insights through an interactive Power BI dashboard

🗂️ Dataset Information
Dataset: Superstore Retail Sales (Kaggle)
Records: Retail transaction-level data
Key Fields:
Order Date, Ship Date, Sales, Profit, Quantity, Discount, Category, Product, Customer

🛠️ Tools & Technologies
SQL Server – Data cleaning, anomaly detection, leakage calculation
Excel – Initial data validation and preprocessing
Power BI – Interactive dashboard and business insights
DAX – KPI and metric creation

🔄 Project Workflow
1️⃣ Data Cleaning & Preparation
Cleaned raw sales data in Excel
Standardized date formats and numeric fields
Imported cleaned data into SQL Server
Created a working clean table (Cleaned)

2️⃣ SQL Data Cleaning
Fixed data types (DATE, DECIMAL, INT)
Removed duplicate records
Trimmed and standardized text columns
Flagged anomalies instead of deleting records

3️⃣ Anomaly Detection (SQL)
Rule-based anomaly detection logic:
Negative profit transactions
Free product sales (sales = 0, quantity > 0)
Excessive discount scenarios (> 40%)
Order date later than ship date

4️⃣ Revenue Leakage Calculation
Created a separate table (Revenue_leakage)
Calculated leakage amount using:
Leakage = ABS(Profit) for negative-profit orders
Added leakage flags for easy identification

5️⃣ Analysis & Insights
Total revenue leakage quantification
Category and sub-category level leakage analysis
Monthly revenue leakage trend analysis
Top loss-making products and customers
Root cause analysis using discount vs profit patterns

6️⃣ Power BI Dashboard
Connected SQL Server directly to Power BI
Created KPIs for total leakage and leakage orders
Built category-wise and monthly trend visuals
Added slicers for interactive analysis

📊 Dashboard highlights:
Total Revenue Leakage
Leakage by Category & Sub-Category
Monthly Leakage Trend
Discount vs Profit Analysis

📈 Key Business Insights
Excessive discounting is the primary driver of revenue leakage
Certain categories consistently generate negative-profit transactions
Revenue leakage increases during high-sales periods
Repeated loss-making customers indicate potential policy gaps

💡 Business Value
Enables organizations to identify hidden financial losses
Supports pricing and discount strategy optimization
Improves financial and operational decision-making
Demonstrates real-world data analyst problem-solving skills
