# hr-attrition
Analytics Project

This project analyzes employee attrition using SQL, Python and Power BI to identify key drivers behind employee turnover and propose strategic HR interventions.

Project Overview:

Employee attrition is a major challenge for organizations. This project explores a real-world HR dataset consisting of 3,233 employees, performs detailed statistical analysis, builds predictive models, and visualizes insights using Power BI.

The goal is to uncover why employees leave, identify high-risk groups, and provide data-backed recommendations.

Tools & Technologies:

Python (Pandas, NumPy, Scikit-Learn, Matplotlib)

MySQL Workbench (SQL analysis)

Power BI (Dashboard visualization)

Jupyter Notebook (EDA + ML)

DAX (Power BI Measures)

Project Structure

HR-Attrition-Analysis/
│
├── data/
│   └── hr_attrition_clean.csv
│
├── notebooks/
│   └── attrition_analysis.ipynb
│
├── sql/
│   └── hr_queries.sql
│
├── dashboard/
│   └── powerbi_dashboard.pbix
│
├── images/
│   ├── attrition_dashboard.png
│   ├── dept_wise_attrition.png
│   ├── salary_band_attrition.png
│   ├── age_group_attrition.png
│   └── model_feature_importance.png
│
└── README.md    ← (this file)


Key Analyses:

1) Department-wise Attrition

HR Department showed the highest attrition count (297).

Indicates workload pressure & policy-driven stress.


2) Salary Band-wise Attrition

Lower salary bands had the highest attrition rate.

Salary dissatisfaction is a key driver.


3) Age Group-wise Attrition

20–29 age group had the most resignations.

Younger employees seek growth & opportunities.

Machine Learning Model:

1) Two ML models were used:
2) Logistic Regression
3) Decision Tree Classifier


Top Predictive Factors:

OverTime
JobSatisfaction
MonthlyIncome
YearsAtCompany
EnvironmentSatisfaction
WorkLifeBalance

These were identified using feature importance plots.

Power BI Dashboard

The report contains:

- KPI Cards (Total Employees, Attrition Count, Attrition Rate, Avg Income)
- Attrition by Department
- Attrition by Job Role
- Attrition by Salary Band
- Attrition by Age Group
- Attrition by OverTime
- Tenure vs Attrition


SQL Queries Used:

1) Highest Attrition Department

SELECT Department, COUNT(*)
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY COUNT(*) DESC
LIMIT 1;

2) Attrition by Salary Band

SELECT SalaryBand,
       COUNT(*) AS TotalEmployees,
       SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS AttritionCount,
       ROUND(100.0 * SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*), 2) AS AttritionRate
FROM employees
GROUP BY SalaryBand;

3) Age Group with Highest Resignations

SELECT AgeGroup, COUNT(*)
FROM employees
WHERE Attrition = 'Yes'
GROUP BY AgeGroup;

Insights & Takeaways:

1) Employees in HR, low salary bands, and 20–29 age group are the most likely to leave.
2) Workload & overtime strongly correlate with resignations.
3) Job satisfaction & career advancement are key retention levers.

--Recommendations

1) Reduce workload & overtime through shift balancing.
2) Improve compensation strategies, especially for lower salary bands.
3) Implement career development and promotion roadmaps.
4) Enhance employee engagement and feedback loops.
5) Create retention programs for young employees.

- Author
Data Analyst (Internship Project)
Power BI | MySQL | Python | ML
