# Day 20 – HR Employee Attrition Dashboard

## Project Overview
This project analyzes employee attrition using the IBM HR Analytics Employee Attrition & Performance dataset.
The objective was to understand employee attrition patterns across:
- Departments
- Job roles
- Employee tenure
A Power BI dashboard was created to present key HR metrics and attrition rates in an interactive and easy-to-understand format.

## Dataset
**Dataset:** IBM HR Analytics Employee Attrition & Performance
- Total Employees: 1,470
- Total Columns: 35
- Employees Who Left: 237

## Tools Used
- Microsoft Excel
- Power BI
- DAX
- Data Visualization
- Basic HR Analytics

## Key KPIs

| KPI | Value |
|---|---:|
| Total Employees | 1,470 |
| Employees Left | 237 |
| Overall Attrition Rate | 16.12% |

## Analysis Performed
### 1. Department-wise Attrition
Attrition rate was calculated for each department.
| Department | Employees | Employees Left | Attrition Rate |
|---|---:|---:|---:|
| Human Resources | 63 | 12 | 19.05% |
| Research & Development | 961 | 133 | 13.84% |
| Sales | 446 | 92 | 20.63% |

### 2. Job Role-wise Attrition
Attrition was analyzed across different job roles.
| Job Role | Employees | Employees Left | Attrition Rate |
|---|---:|---:|---:|
| Sales Representative | 83 | 33 | 39.76% |
| Laboratory Technician | 259 | 62 | 23.94% |
| Human Resources | 52 | 12 | 23.08% |
| Sales Executive | 326 | 57 | 17.48% |
| Research Scientist | 292 | 47 | 16.10% |
| Manufacturing Director | 145 | 10 | 6.90% |
| Healthcare Representative | 131 | 9 | 6.87% |
| Manager | 102 | 5 | 4.90% |
| Research Director | 80 | 2 | 2.50% |

### 3. Tenure-wise Attrition
Employees were grouped according to their years at the company:
- 0–2 Years
- 3–5 Years
- 6–10 Years
- 11–15 Years
- 16+ Years

Attrition rates were visualized using Power BI to identify differences across employee tenure groups.

## Dashboard
The Power BI dashboard contains:
1. Total Employees KPI
2. Employees Left KPI
3. Overall Attrition Rate KPI
4. Attrition Rate by Department
5. Attrition Rate by Job Role
6. Attrition Rate by Tenure
7. Key HR Insights

## Key Insights
- The overall employee attrition rate is **16.12%**.
- Department-level attrition rates differ across the organization.
- Job-role-level attrition rates also show substantial variation.
- Attrition varies across employee tenure groups.
- Attrition rates should be considered together with employee population size when interpreting HR patterns.

## DAX Measures
### Employees Left

```DAX
Employees Left =
CALCULATE(
    COUNTROWS('Cleaned Data'),
    'Cleaned Data'[Attrition] = "Yes"
)
Total Employees
Total Employees =
COUNTROWS('Cleaned Data')
Attrition Rate
Attrition Rate =
DIVIDE(
    [Employees Left],
    [Total Employees]
)
Tenure Group
Tenure Group =
SWITCH(
    TRUE(),
    'Cleaned Data'[YearsAtCompany] <= 2, "0–2 Years",
    'Cleaned Data'[YearsAtCompany] <= 5, "3–5 Years",
    'Cleaned Data'[YearsAtCompany] <= 10, "6–10 Years",
    'Cleaned Data'[YearsAtCompany] <= 15, "11–15 Years",
    "16+ Years"
)
