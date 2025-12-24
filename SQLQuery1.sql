CReate Database SuperstoreDB;
use SuperstoreDB
select * from CleanedDatasets
select * into Cleaned 
from CleanedDatasets


-- Check total records
SELECT COUNT(*) AS total_records FROM Cleaned;

SELECT COUNT(*) AS leakage_records FROM Revenue_leakage;

--Negative Profit Orders (Loss-making sales)
SELECT *
FROM Cleaned
WHERE profit < 0;

--Excessive Discount Orders (High Risk)
SELECT *
FROM Cleaned
WHERE discount > 0.40;

--Revenue Leakage Table Validation
SELECT COUNT(*) AS total_leakage_rows
FROM Revenue_leakage;

--Leakage Amount Calculation (If not already done)
UPDATE Revenue_leakage
SET leakage_amount =
    CASE
        WHEN profit < 0 THEN ABS(profit)
        ELSE 0
    END;

SELECT order_id, sales, profit, leakage_amount
FROM Revenue_leakage
ORDER BY leakage_amount DESC;

--Total Revenue Leakage
SELECT
    SUM(leakage_amount) AS total_revenue_leakage
FROM Revenue_leakage;

--Category-wise Revenue Leakage
SELECT
    category,
    SUM(leakage_amount) AS leakage
FROM Revenue_leakage
GROUP BY category
ORDER BY leakage DESC;

--Sub-Category-wise Leakage
SELECT
    sub_category,
    SUM(leakage_amount) AS leakage
FROM Revenue_leakage
GROUP BY sub_category
ORDER BY leakage DESC;

