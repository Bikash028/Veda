# Regional Manager Performance Analysis Dashboard

## 📊 Project Overview
This project analyzes regional manager performance using multiple business KPIs instead of relying only on total sales.
A Superstore Sales dataset containing 9,994 records was analyzed using Power BI to compare regional performance across:

- Total Sales
- Total Profit
- Total Orders
- Average Order Value (AOV)
- Sales Growth
- Manager Rank

The project was adapted to Regional Manager Performance Analysis because the dataset did not contain individual salesperson information.

## 🎯 Objectives
- Compare regional managers using multiple KPIs
- Analyze sales and profitability
- Calculate Average Order Value
- Measure year-over-year sales growth
- Rank regional managers
- Build an interactive Power BI dashboard
- Identify business insights and recommendations

## 👥 Regional Manager Mapping

| Regional Manager | Region |
|---|---|
| Sadie Pawthorne | West |
| Chuck Magee | East |
| Roxanne Rodriguez | Central |
| Fred Suzuki | South |

## 🛠️ Tools Used
- Power BI
- DAX
- Excel
- Superstore Dataset

### Total Sales

```DAX
Total Sales =
SUM('Superstore'[Sales])

Total Profit
Total Profit =
SUM('Superstore'[Profit])

Total Orders
Total Orders =
DISTINCTCOUNT('Superstore'[Order ID])

AOV
AOV =
DIVIDE(
    [Total Sales],
    [Total Orders],
    0
)

Sales Growth %
Sales Growth % =
DIVIDE(
    [Total Sales] - [Sales LY],
    [Sales LY],
    0
)

Manager Rank
Manager Rank =
RANKX(
    ALL('Manager Mapping'),
    [Total Sales],
    ,
    DESC,
    DENSE
)
```
📊 Dashboard
The Power BI dashboard includes:
- KPI Cards
- Sales by Regional Manager
- Profit by Regional Manager
- Manager Performance Comparison
- Region Slicer
- Sales Growth
- AOV
- Manager Ranking
  
📈 Key Results
Manager	Region	Sales	Profit	AOV	Growth	Rank
Sadie Pawthorne	West	₹725,457.82	₹108,418.45	₹450.32	52.62%	1
Chuck Magee	East	₹678,781.24	₹91,522.78	₹484.50	45.76%	2
Roxanne Rodriguez	Central	₹501,239.89	₹39,706.36	₹426.59	41.54%	3
Fred Suzuki	South	₹391,721.91	₹46,749.43	₹476.55	45.72%	4


💡 Business Insights
1. West recorded the highest sales and profit.
2. East recorded the highest AOV.
3. West recorded the highest reported sales growth.
4. Central has relatively low profit compared with its sales volume.
5. Sales ranking and AOV ranking are different, showing the importance of multiple performance measures.
   
📌 Recommendations
- Analyze factors contributing to West's strong performance.
- Investigate East's high AOV.
- Review Central's discounts, product mix and profitability.
- Identify opportunities to increase South's sales volume.
- Monitor multiple KPIs rather than relying only on sales.
