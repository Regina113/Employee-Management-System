# Employee-Management-System
# 📊 Employee Management System – SQL + Power BI Project

This project simulates a real-world **Employee Management System** designed for a fictional company, **Nexora Tech Ltd.** It includes a full database schema, SQL queries to answer business questions, and visual analytics created in Power BI.

---

## 🧩 Project Overview

As a Junior Database Analyst for Nexora Tech, I was tasked with:
- Designing and implementing a relational database to manage employees, departments, positions, leaves, and performance reviews.
- Writing SQL queries to answer HR-related business questions.
- Connecting the database to Power BI and visualizing the insights.

---

## 🏗️ Database Schema

The system consists of 5 core tables:

| Table               | Description                                 |
|---------------------|---------------------------------------------|
| `Departments`       | Stores department names                     |
| `Positions`         | Stores job titles and associated salaries   |
| `Employees`         | Stores employee details and FK relationships|
| `LeaveRecords`      | Tracks employee leave requests              |
| `PerformanceReviews`| Stores performance evaluation data          |

Relationships are established via foreign keys to ensure data integrity and support analytics.

---

## 📥 Sample Data

Each table has been populated with sample entries to simulate a functioning business environment. This includes realistic employee records, leave entries, and performance ratings.

---

## 🧠 Business Questions Answered

1. **Employee Department Overview**  
   _List employees with their department, job title, salary, and hire date._

2. **Staff Leave Report**  
   _All leave records by employee, including reason and status._

3. **Top 3 Employees by Performance**  
   _Based on average performance ratings this year._

4. **Gender Diversity by Department**  
   _Count of male and female employees in each department._

5. **Recent Hires**  
   _Employees hired within the last 6 months._

Additional analysis includes:
- Departmental salary budgets
- Employee retention analysis
- Identification of inactive employees

---

## 📈 Power BI Dashboard

I connected the SQL database to Power BI Desktop and created interactive reports for:
- Employee overview and filtering by department
- Leave status and tracking
- Performance leaderboard
- Gender diversity visualizations
- Recent hiring trends

**Tools Used**:
- SQL Server (or compatible DBMS)
- Power BI Desktop
- DAX (for calculated fields and measures)

---

## 📂 Repository Contents

