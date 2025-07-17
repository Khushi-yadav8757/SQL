 SQL Basics

1. What is SQL?

SQL stands for Structured Query Language.

 It is a standard language used to communicate with relational databases.

SQL is used to:

- Create databases and tables
- Insert, update, and delete data
- Retrieve specific data
- Control access to the database

Example:

SELECT * FROM Students;

This command means: Show all records from the "Students" table.

> SQL is not case-sensitive, so "select", "SELECT", and "SeLeCt" all mean the same thing.

 2. Types of SQL Commands

There are 5 main categories of SQL commands:

| Command Type | Full Form                    | Purpose                                |
| ------------ | ---------------------------- | -------------------------------------- |
| DDL          | Data Definition Language     | Defines structure (tables, schemas)    |
| DML          | Data Manipulation Language   | Manage data (insert, update, delete)   |
| DCL          | Data Control Language        | Control access (grant, revoke)         |
| TCL          | Transaction Control Language | Manage transactions (commit, rollback) |
| DQL          | Data Query Language          | Query data (select)                    |

1. DDL (Data Definition Language)

Used to define and manage structure of database.

| Command    | Use                                        |
| ---------- | ------------------------------------------ |
| `CREATE`   | Create a table or database                 |
| `ALTER`    | Modify structure (add column, change type) |
| `DROP`     | Delete a table or database                 |
| `TRUNCATE` | Delete all records (faster than DELETE)    |

 Example:
CREATE TABLE Employees (
  ID INT,
  Name VARCHAR(100),
  Salary FLOAT
);

2. DML (Data Manipulation Language)

Used to manage data inside tables.

| Command  | Use                  |
| -------- | -------------------- |
| `INSERT` | Add new data         |
| `UPDATE` | Modify existing data |
| `DELETE` | Remove data          |

Example:
INSERT INTO Employees VALUES (1, 'Khushi', 50000);

3. DCL (Data Control Language)

Used to control permissions and access.

| Command  | Use                      |
| -------- | ------------------------ |
| `GRANT`  | Give access to users     |
| `REVOKE` | Remove access from users |

 Example:

GRANT SELECT ON Employees TO user123;

4. TCL (Transaction Control Language)

Used to manage transactions (group of SQL commands).

| Command     | Use                           |
| ----------- | ----------------------------- |
| `COMMIT`    | Save changes permanently      |
| `ROLLBACK`  | Undo changes                  |
| `SAVEPOINT` | Set a point to rollback later |

Example:


BEGIN;
UPDATE Employees SET Salary = 60000 WHERE ID = 1;
ROLLBACK; -- Undo changes

5. DQL (Data Query Language)

Used to retrieve data.

| Command  | Use        |
| -------- | ---------- |
| `SELECT` | Query data |

Example:
SELECT Name, Salary FROM Employees WHERE Salary > 30000;

3. SQL Syntax Rules

Some basic rules of writing SQL:

1. SQL keywords like `SELECT`, `FROM`, `WHERE` are usually written in uppercase (not necessary, but good practice).
2. Statements end with a semicolon `;`
3. String values are enclosed in single quotes:

   WHERE Name = 'Khushi'

4.Column names and table names should be meaningful and consistent.
5. SQL ignores spaces and line breaks, so formatting is just for readability.

  
4. Database vs Table vs Schema

Database

 A container that stores data in organized form (like a big folder).
 It contains schemas, tables, and other objects.
 One database can have many tables.

🗂️ *Think of it like a school: the school is the database.*

---

#### 🔸 **Table**

* A **collection of rows and columns** to store data.
* Each table stores **specific types** of data.
* Like a spreadsheet.

📊 *Think of it like a classroom in the school, storing student data.*

> 📌 Example:

```sql
CREATE TABLE Students (
  RollNo INT,
  Name VARCHAR(50),
  Age INT
);
```

---

#### 🔸 **Schema**

* A **logical structure** that groups related tables, views, and procedures.
* Useful for organizing large databases.

🧱 *Think of it as a section in a school (e.g., “Science section”), grouping classrooms (tables).*

> 📌 Example:

```sql
CREATE SCHEMA School;
```

---

### 📌 Summary Chart:

| Concept      | Description                    | Example             |
| ------------ | ------------------------------ | ------------------- |
| **Database** | Collection of schemas & tables | `CollegeDB`         |
| **Schema**   | Logical grouping of objects    | `LibrarySchema`     |
| **Table**    | Stores data in rows & columns  | `Books`, `Students` |

---

💡 Quick Memory Tip (DDL, DML, DCL... Trick):

> **"Dr. DeCoT Said SELECT"
> 🔸 **Dr** → **D**DL & **D**ML
> 🔸 **Co** → **C**ontrol = DCL
> 🔸 **T** → Transaction = TCL
> 🔸 **SELECT** = DQL

---

Would you like this in a **PDF format** or need **practice questions** for this module too?
