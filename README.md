# Blinkit Sales Dashboard 🎯

This project showcases a complete data analysis pipeline for retail item sales using SQL and Power BI. It includes data cleaning, time-based metrics, and interactive visualizations.

## 📊 Dashboard Features
- Total Sales, Average Sales per Item, Item Count
- Sales trends over time
- Segmentation by outlet type, location, and item fat content
- Year-over-year comparisons and moving totals
- Interactive filters for outlet size, item type, and more

## 🧠 SQL Logic
The SQL script uses CTEs and window functions to:
- Normalize item fat content
- Aggregate sales by year, item, and outlet
- Calculate moving totals and previous year comparisons
- Segment sales trends and compute % change

## 📁 Files
- `SQL/blinkit_sales_analysis.sql`: Full SQL logic
- `PowerBI/BlinkitDashboard.pbix`: Power BI dashboard file
- `Images/dashboard_preview.png`: Screenshot of the dashboard

## 🚀 How to Use
1. Run the SQL script on your Blinkit dataset
2. Load the processed data into Power BI
3. Open the `.pbix` file to explore the dashboard

---

Made with ❤️ by Mohamed — musician, data artist, and BI storyteller.
