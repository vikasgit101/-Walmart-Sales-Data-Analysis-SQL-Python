# 🛒 Walmart Sales Analysis | SQL + Python

> 📊 A complete end-to-end data analytics project combining **SQL** for data querying and **Python** for EDA & visualization. The goal: uncover hidden insights from Walmart transactional sales data and build metrics that drive business decisions.

---

## 📚 Table of Contents

- [📌 Project Overview](#-project-overview)
- [🎯 STAR-Based Summary](#-star-based-summary)
- [📁 Dataset](#-dataset)
- [🎯 Objectives](#-objectives)
- [🛠️ Tools & Technologies](#-tools--technologies)
- [📊 KPIs & SQL Logic](#-kpis--sql-logic)
- [📈 Python EDA Highlights](#-python-eda-highlights)
- [🧠 Key Skills Used](#-key-skills-used)
- [📁 Project Structure](#-project-structure)
- [💡 Business Insights](#-business-insights)
- [📣 Keywords & Hashtags](#-keywords--hashtags)
- [🙋‍♂️ Author](#-author)

---

## 📌 Project Overview

This project analyzes Walmart's point-of-sale transaction data using **advanced SQL queries** and **Python-based data analysis**. It helps uncover trends across branches, payment methods, revenue segments, and customer behavior.

---

## 🎯 STAR-Based Summary

**S – Situation:**  
Walmart needed insights into sales trends, customer habits, and store performance across its branches.

**T – Task:**  
Use SQL to extract KPIs from raw transactional data and Python to visualize those metrics.

**A – Action:**  
- Cleaned & formatted raw `.csv` data  
- Queried KPIs using SQL: revenue, ratings, branch performance, payment type  
- Used CTEs and window functions (`RANK()`, `CASE`, `GROUP BY`)  
- Visualized key findings using Python (`pandas`, `seaborn`, `matplotlib`)

**R – Result:**  
- Delivered insights on store-level sales, best-selling times, revenue drops  
- Identified top-performing branches, peak hours, and customer feedback trends  
- Built a clear Python+SQL pipeline for business analytics

---

## 📁 Dataset

- **File:** `orders.csv`  
- **Source:** Simulated Walmart retail transactions  
- **Fields:**  
  - Invoice ID, Date, Time, Branch, City  
  - Customer Type, Product Line, Payment Method  
  - Unit Price, Quantity, Total, Tax, Rating

---

## 🎯 Objectives

- Find top branches and product lines by sales  
- Analyze payment method trends  
- Visualize time-based sales behavior (hour/day)  
- Track YoY revenue performance  
- Summarize ratings and customer experience by segment

---

## 🛠️ Tools & Technologies

| Tool / Language | Use Case |
|-----------------|----------|
| SQL (MySQL)     | Query building, joins, aggregations, KPI extraction |
| Python          | EDA, Visualization, Data Wrangling |
| Pandas          | Data loading, transformation |
| Seaborn / Matplotlib | Charts & Plotting |
| Jupyter Notebook | Code execution & documentation |

---

## 📊 KPIs & SQL Logic

- ✅ **Total Revenue per Branch**:
```sql
SELECT Branch, SUM(Total) AS Revenue
FROM orders
GROUP BY Branch;
```

- ✅ **Top Product Categories by Quantity Sold**:
```sql
SELECT Product_line, SUM(Quantity) AS Total_Units
FROM orders
GROUP BY Product_line
ORDER BY Total_Units DESC;
```

- ✅ **Payment Method Trends**:
```sql
SELECT Payment, COUNT(*) AS Count
FROM orders
GROUP BY Payment;
```

- ✅ **YoY Revenue Drop by Branch** (using CTEs + CASE):
```sql
WITH revenue_by_year AS (
  SELECT Branch, YEAR(date) AS year, SUM(Total) AS revenue
  FROM orders
  GROUP BY Branch, YEAR(date)
)
SELECT 
  Branch,
  ROUND(((MAX(revenue) - MIN(revenue)) / MAX(revenue)) * 100, 2) AS YoY_Drop_Percent
FROM revenue_by_year
GROUP BY Branch;
```

---

## 📈 Python EDA Highlights

- Line plots for monthly revenue trends  
- Heatmaps showing peak hours and days  
- Bar charts for ratings by product category  
- Pie charts for payment method share  
- Scatter plots for Unit Price vs Rating correlation

---

## 🧠 Key Skills Used

- SQL Querying & CTEs  
- Window Functions (`RANK`, `LAG`)  
- Python Data Visualization  
- Business-Oriented KPI Development  
- Data Cleaning & Transformation

---

## 📁 Project Structure

```
📦 Walmart-Sales-Analysis
├── 📄 orders.csv              # Raw dataset
├── 🐘 sdfs.sql                # SQL script with all queries
├── 🧪 SQL + Python.ipynb      # EDA and visual analysis
├── 📄 README.md               # Project documentation
```

---

## 💡 Business Insights

- 🏆 Branch B had the highest total revenue  
- 📅 Peak sales occurred during weekends and evenings  
- 💳 E-wallet and Credit Card were the top payment methods  
- 📉 Branch C saw the largest YoY revenue drop (12.3%)  
- ⭐ Highest ratings came from "Health and Beauty" product line

---

## 📣 Keywords & Hashtags

**Keywords:**  
Retail Data Analysis, SQL Project, Python EDA, Business Intelligence, Revenue Analysis, Walmart Dashboard, Customer Analytics

**Hashtags:**  
#SQL #Python #EDA #RetailAnalytics #DataAnalyticsProject #WalmartInsights  
#GitHubPortfolio #VikasKumarProjects #BusinessIntelligence

---

## 🙋‍♂️ Author

**Vikas Kumar**  
📧 Email: vk328696@gmail.com  
🔗 LinkedIn: [linkedin.com/in/vikas-ku](https://linkedin.com/in/vikas-ku)  
📂 GitHub: [github.com/vikasgit101](https://github.com/vikasgit101)

> ⭐ *If you liked this project, give it a star and let's connect!*
