SHOW TABLES;
USE hr_project;
SELECT COUNT(*) FROM employees;
SELECT Department,
	COUNT(*) AS Attrition_Count
FROM employees
WHERE LOWER(TRIM(Attrition))='yes'
GROUP BY Department
ORDER BY Attrition_Count DESC
LIMIT 1;
USE hr_project;
SHOW TABLES;
SELECT SalaryBand,
       COUNT(*) AS Total_Employees,
       SUM(CASE WHEN LOWER(TRIM(Attrition)) = 'yes' THEN 1 ELSE 0 END) AS Attrition_Count,
       ROUND(100.0 * SUM(CASE WHEN LOWER(TRIM(Attrition)) = 'yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Attrition_Rate_pct
FROM employees
GROUP BY SalaryBand
ORDER BY Attrition_Rate_pct DESC;
SELECT 
    CASE
        WHEN Age < 30 THEN '20-29'
        WHEN Age BETWEEN 30 AND 39 THEN '30-39'
        WHEN Age BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50+'
    END AS AgeGroup,
    COUNT(*) AS Attrition_Count
FROM employees
WHERE LOWER(TRIM(Attrition)) = 'yes'
GROUP BY AgeGroup
ORDER BY Attrition_Count DESC;