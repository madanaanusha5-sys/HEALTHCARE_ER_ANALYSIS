USE healthcare_db;
GO


-- 1. Total patient records
SELECT COUNT(*) AS Total_Patient_Records
FROM dbo.[Hospital ER];




-- 2. Patient age summary
SELECT
    MIN(Age) AS Minimum_Age,
    MAX(Age) AS Maximum_Age,
    AVG(CAST(Age AS DECIMAL(10,2))) AS Average_Age
FROM dbo.[Hospital ER];




-- 3. Gender distribution
SELECT
    Gender,
    COUNT(*) AS Total_Records,
    CAST(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM dbo.[Hospital ER])
        AS DECIMAL(5,2)
    ) AS Percentage
FROM dbo.[Hospital ER]
GROUP BY Gender
ORDER BY Total_Records DESC;




-- 4. Missing satisfaction scores
SELECT
    COUNT(*) AS Total_Records,
    COUNT(Satisfaction_Score) AS Recorded_Scores,
    SUM(
        CASE
            WHEN Satisfaction_Score IS NULL THEN 1
            ELSE 0
        END
    ) AS Missing_Scores,
    AVG(CAST(Satisfaction_Score AS DECIMAL(10,2)))
        AS Average_Satisfaction_Score
FROM dbo.[Hospital ER];




-- 5. Waiting time summary
SELECT
    MIN(Wait_Time) AS Minimum_Wait_Time,
    MAX(Wait_Time) AS Maximum_Wait_Time,
    AVG(CAST(Wait_Time AS DECIMAL(10,2)))
        AS Average_Wait_Time
FROM dbo.[Hospital ER];




-- 6. Patient records by department referral
SELECT
    Department_Referral,
    COUNT(*) AS Total_Records,
    CAST(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM dbo.[Hospital ER])
        AS DECIMAL(5,2)
    ) AS Percentage
FROM dbo.[Hospital ER]
GROUP BY Department_Referral
ORDER BY Total_Records DESC;




-- 7. Average waiting time by department
SELECT
    Department_Referral,
    COUNT(*) AS Total_Records,
    CAST(
        AVG(CAST(Wait_Time AS DECIMAL(10,2)))
        AS DECIMAL(10,2)
    ) AS Average_Wait_Time
FROM dbo.[Hospital ER]
GROUP BY Department_Referral
ORDER BY Average_Wait_Time DESC;




-- 8. Patient records by age
SELECT
    Age,
    COUNT(*) AS Total_Records
FROM dbo.[Hospital ER]
GROUP BY Age
ORDER BY Age;




-- 9. Patient records by satisfaction score
SELECT
    Satisfaction_Score,
    COUNT(*) AS Total_Records
FROM dbo.[Hospital ER]
GROUP BY Satisfaction_Score
ORDER BY Satisfaction_Score;




-- 10. Patient records by month
SELECT
    YEAR(CAST([Date] AS DATE)) AS Visit_Year,
    MONTH(CAST([Date] AS DATE)) AS Visit_Month,
    COUNT(*) AS Total_Records
FROM dbo.[Hospital ER]
GROUP BY
    YEAR(CAST([Date] AS DATE)),
    MONTH(CAST([Date] AS DATE))
ORDER BY Visit_Year, Visit_Month;




-- 11. Check duplicate Patient IDs
SELECT
    Patient_ID,
    COUNT(*) AS Number_Of_Records
FROM dbo.[Hospital ER]
GROUP BY Patient_ID
HAVING COUNT(*) > 1
ORDER BY Number_Of_Records DESC;




-- 12. Check missing satisfaction scores by gender
SELECT
    Gender,
    COUNT(*) AS Total_Records,
    SUM(
        CASE
            WHEN Satisfaction_Score IS NULL THEN 1
            ELSE 0
        END
    ) AS Missing_Satisfaction_Scores
FROM dbo.[Hospital ER]
GROUP BY Gender
ORDER BY Gender;