# 🗄️ SQL Practice Repository

This repository contains my **SQL practice files** created while learning and revising SQL concepts for **Data Analyst / Business Analyst interviews**.

It is a growing collection of **topic-wise SQL queries** written with a focus on **clarity, logic, and interview relevance**.

---

## 📌 What This Repository Covers

The repository includes SQL queries related to:

* ✅ SELECT, WHERE, ORDER BY
* ✅ GROUP BY & HAVING
* ✅ Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)
* ✅ Joins (basic to intermediate)
* ✅ Subqueries
* ✅ Common interview-style problems

Each `.sql` file focuses on **one concept** with multiple examples.

---

## 📂 Repository Structure

```bash
SQL/
│
├── Group_By.sql
├── Where.sql
├── Order_By.sql
├── Joins.sql
├── Aggregate_Functions.sql
├── Subqueries.sql
└── Other_Practice_Questions.sql
```

*(File names may grow as more concepts are added)*

---

## 🎯 Purpose of This Repo

* 📘 Practice SQL concepts regularly
* 💼 Prepare for SQL interviews
* 🧠 Improve logical thinking using queries
* 📈 Build a strong SQL foundation for analytics roles

---

## 🧪 Sample Query

```sql
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
```

---

## 🛠️ How to Use

1. Open any `.sql` file
2. Read the problem / logic
3. Execute queries in:

   * MySQL Workbench
   * pgAdmin
   * SQLite
4. Modify queries and practice variations

---

## 🚀 Future Plan

* Add more interview-level questions
* Company-wise SQL problems
* Advanced joins & window functions

---

## ⭐ Support

If you find this repository useful, feel free to **star ⭐ the repo**.

---

### 👤 Author

**Khushi Yadav**
Aspiring Data Analyst | SQL Learner

---

Happy Querying! 🚀
