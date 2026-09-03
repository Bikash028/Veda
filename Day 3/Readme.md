## 📊 Simple Sales Dashboard

### 📌 Project Overview

This project is a simple interactive sales dashboard created as part
of the Data Analytics Internship at Veda Technology.

The dashboard converts sales data into an interactive visual report
that helps stakeholders understand sales performance across products,
regions, and time.

---

### 🎯 Objective

The main objective of this project is to transform raw sales data into
an easy-to-understand interactive dashboard.

The dashboard helps answer questions such as:

- What are the total sales and total profit?
- How many products were sold?
- What is the overall profit margin?
- How are sales changing over time?
- Which product category has the highest sales?
- Which region performs best in terms of sales?
- How does performance change when different filters are applied?

---

### 🗂️ Dataset

The project uses the **Sample Superstore Dataset**.

The dataset contains information about:

- Order Date
- Ship Mode
- Segment
- Country
- City
- State
- Region
- Category
- Sub-Category
- Sales
- Quantity
- Discount
- Profit

---

### 🛠️ Tools Used

- Power BI
- Microsoft Excel / CSV
- DAX
- Data Visualization

---

### 📈 Dashboard Components

#### KPI Cards

The dashboard contains four key performance indicators:

1. **Total Sales**
2. **Total Profit**
3. **Total Quantity**
4. **Profit Margin**

These KPIs provide a quick overview of overall business performance.

---

#### 📅 Monthly Sales Trend

A line chart is used to visualize sales performance over time.

**Purpose:**

To identify increases, decreases, and changes in sales performance
across different months.

---

#### 🛍️ Sales by Category

A bar/column chart compares sales across product categories.

**Purpose:**

To identify which product category contributes the most to total sales.

---

#### 🌎 Sales by Region

A bar chart compares sales performance across different regions.

**Purpose:**

To identify the strongest and weakest regions based on sales.

---

### 🎛️ Interactive Filters

The dashboard includes slicers/filters for:

- Region
- Category
- Segment

These filters allow users to interact with the dashboard and analyze
specific portions of the dataset.

For example, selecting a particular region updates the KPI cards and
charts to show the corresponding sales performance.

---

### 🧮 DAX Measure

The dashboard uses a calculated measure for profit margin:

```DAX
Profit Margin =
DIVIDE(
    SUM('Superstore'[Profit]),
    SUM('Superstore'[Sales])
)
