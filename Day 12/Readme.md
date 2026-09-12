# Day 12 – Titanic Data Cleaning & Analysis

## 📌 Project Overview

This project focuses on **data cleaning and basic exploratory analysis** using the Titanic dataset.

The main objective was to identify missing values, calculate their percentages, handle missing data appropriately, and perform basic analysis to understand passenger survival patterns based on gender and passenger class.

## 🎯 Objectives

- Identify missing values in the dataset.
- Calculate the percentage of missing values.
- Decide appropriate methods for handling missing data.
- Create a cleaned version of the dataset.
- Verify that missing values were successfully handled.
- Calculate overall survival rate.
- Analyze survival based on gender.
- Analyze survival based on passenger class.
- Analyze survival based on gender and passenger class.
- Create visualizations to communicate the findings.

## 📂 Dataset

**Dataset:** Titanic Dataset
**Number of records:** 891 passengers
**Number of columns:** 12

### Columns
| Column | Description |
|---|---|
| PassengerId | Unique passenger ID |
| Survived | Survival status (0 = No, 1 = Yes) |
| Pclass | Passenger class |
| Name | Passenger name |
| Sex | Passenger gender |
| Age | Passenger age |
| SibSp | Number of siblings/spouses aboard |
| Parch | Number of parents/children aboard |
| Ticket | Ticket number |
| Fare | Ticket fare |
| Cabin | Cabin number |
| Embarked | Port of embarkation |

## 🔍 Missing Value Analysis
The initial dataset contained missing values in three columns:
| Column | Missing Count | Missing % |
|---|---:|---:|
| Age | 177 | 19.87% |
| Cabin | 687 | 77.10% |
| Embarked | 2 | 0.22% |

All other columns contained no missing values.

## 🧹 Missing Value Handling
Different approaches were used depending on the type and amount of missing data.
### Age
Age is a numerical column.
Missing values were replaced using the **median age**.
**Median Age:** 28
### Cabin
Cabin contained a very high percentage of missing values.
Instead of guessing cabin numbers, missing values were replaced with:
`Unknown`

### Embarked
Embarked is a categorical column with only two missing values.
The missing values were replaced using the **mode**:
`S`

## 📊 Analysis Performed
### 1. Overall Survival Rate
The overall survival rate was calculated using the `Survived` column.
Since:
- `1` = Survived
- `0` = Did not survive
the average of the column represents the survival rate.

### 2. Survival by Gender
Survival rates were calculated separately for female and male passengers.
The analysis showed that **female passengers had a substantially higher survival rate than male passengers**.

### 3. Survival by Passenger Class
| Passenger Class | Survival Rate |
|---|---:|
| 1st Class | 62.96% |
| 2nd Class | 47.28% |
| 3rd Class | 24.24% |

The survival rate decreased from 1st class to 3rd class.

### 4. Survival by Gender and Passenger Class
| Passenger Class | Female Survival Rate | Male Survival Rate |
|---|---:|---:|
| 1st Class | 96.81% | 36.89% |
| 2nd Class | 92.11% | 15.74% |
| 3rd Class | 50.00% | 13.54% |

This comparison shows a strong difference in survival rates between genders across passenger classes.

## 📈 Visualizations
The project includes a chart showing:
**Survival Rate by Gender and Passenger Class**
The visualization makes it easier to compare survival rates across the different passenger groups.

## 💡 Key Findings

1. The **Cabin** column had the highest amount of missing data at **77.10%**.
2. **Age** had **19.87%** missing values.
3. **Embarked** had only **0.22%** missing values.
4. Female passengers had higher survival rates than male passengers across all passenger classes.
5. 1st-class passengers had the highest overall survival rate.
6. 3rd-class passengers had the lowest overall survival rate.
7. **1st-class females had the highest survival rate at 96.81%**.
8. **3rd-class males had the lowest survival rate at 13.54%**.

## 🛠️ Tools Used

- Microsoft Excel
- Excel formulas
- Data Cleaning
- Data Analysis
- Charts & Visualization

### Excel Functions Used

```text
COUNTBLANK()
MEDIAN()
AVERAGE()
AVERAGEIF()
AVERAGEIFS()
COUNTIF()
UNIQUE()
