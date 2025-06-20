# 🛒 Walmart Sales Data Analysis | SQL + Python

Welcome to the **Walmart Sales Data Analysis** project! This project dives into Walmart's retail data to uncover key business insights using a blend of **SQL** and **Python**. The goal is to analyze sales trends, customer behavior, and operational performance to drive data-backed decisions.

---

## 📌 Project Objective

The aim of this project is to:

- Understand **sales performance** across different branches and payment methods.
- Analyze **customer behavior** through product categories, time of purchase, and ratings.
- Identify **high-performing segments** and **areas of improvement** using SQL aggregations and visualizations in Python.
- Generate meaningful **business insights** from raw data.

---

## 🧰 Tools & Technologies

| Technology | Purpose |
|-----------|---------|
| **SQL (MySQL)** | Data cleaning, transformation, and analysis |
| **Python (Pandas, Matplotlib, Seaborn)** | Visualization and exploratory data analysis |
| **Jupyter Notebook** | Code execution and reporting |
| **Excel/CSV** | Raw data source (`orders.csv`) |

---

## 📂 Project Structure

```bash
├── orders.csv                # Dataset containing Walmart sales data
├── sdfs.sql                  # SQL queries for business insights
├── SQL + Python.ipynb        # Python notebook for visualizations
├── README.md                 # Project documentation
```
## 🔍 Key Questions Solved (SQL Queries)

1.Payment Method Analysis: Which payment method is most commonly used?

2.Sales Quantity by Payment Type: What is the quantity sold per payment method?

3.Busiest Day per Branch: On which day of the week does each branch receive the most transactions?

4.Product Ratings: Analyze min, max, and avg ratings by city and category.

5.Total Revenue & Profit: What’s the total revenue and profit by product category?

6.Branch Performance: Which branch has seen a drop in revenue year over year?

7.Time-based Analysis: How does transaction volume vary throughout the day (morning, afternoon, evening)?

## 📈 Python Visualizations (EDA)

In the Jupyter Notebook, we complement SQL analysis with Python by:

Loading the orders.csv dataset using Pandas

Creating bar charts and pie charts for category and payment distribution

Plotting heatmaps to understand sales intensity

Analyzing correlation between revenue, quantity, and customer feedback


# 🧠 Insights Extracted

🔸 Credit Card is the most used payment method across branches.

🔸 Branch A sees the highest sales during weekends, especially on Saturdays.

🔸 Electronic Accessories and Home & Lifestyle are top revenue-generating categories.

🔸 There's a drop in revenue in 2023 for certain branches compared to 2022.

🔸 Most transactions happen during the Afternoon, hinting at peak operational hours.

## ▶️ How to Run the Project

1. Clone this repository:
git clone https://github.com/your-username/walmart-sales-analysis.git
cd walmart-sales-analysis


2.Open and run the Jupyter Notebook:
jupyter notebook "SQL + Python.ipynb"

3.To execute SQL scripts, use any MySQL-compatible environment and load the orders.csv data into a table named walmart.



## 👨‍💻 Author
Vikas Kumar
vk328696@gmail.com | www.linkedin.com/in/vikas-ku

Connect with me on LinkedIn for collaborations and data discussions!
