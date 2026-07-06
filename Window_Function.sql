A window function in SQL performs calculations across a set of rows related to the current row without grouping the rows into a single result. Unlike GROUP BY, it returns a value for every row.

Syntax
function_name() OVER (
    PARTITION BY column_name
    ORDER BY column_name
)
OVER(): Defines the window.
PARTITION BY: Divides rows into groups (optional).
ORDER BY: Specifies the order within each partition (optional for some functions).
  --------------------------------------------------------------------------------------------------------------------
Common Window Functions
1. ROW_NUMBER()
Assigns a unique number to each row.

Example:

SELECT
    employee_name,
    department,
    salary,
    ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rn
FROM employees;

Output:

Name	Department	Salary	rn
A	IT	90000	1
B	IT	85000	2
C	HR	70000	1
D	HR	65000	2
  
2. RANK()
Assigns the same rank to ties, skipping subsequent ranks.

SELECT
    employee_name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS rank
FROM employees;

Example:

Salary	Rank
100	1
90	2
90	2
80	4
  
3. DENSE_RANK()
Like RANK(), but does not skip ranks.

Salary	Dense Rank
100	1
90	2
90	2
80	3
  
4. NTILE()
Divides rows into a specified number of groups.

SELECT
    employee_name,
    salary,
    NTILE(4) OVER (ORDER BY salary DESC) AS quartile
FROM employees;

5. LAG()
Returns the previous row's value.

SELECT
    month,
    sales,
    LAG(sales) OVER (ORDER BY month) AS previous_sales
FROM sales_data;

Output:

Month	Sales	Previous Sales
Jan	100	NULL
Feb	120	100
Mar	140	120
6. LEAD()

Returns the next row's value.

SELECT
    month,
    sales,
    LEAD(sales) OVER (ORDER BY month) AS next_sales
FROM sales_data;

7. SUM() OVER()
Calculates a running total.

SELECT
    month,
    sales,
    SUM(sales) OVER (ORDER BY month) AS running_total
FROM sales_data;

Output:

Month	Sales	Running Total
Jan	100	100
Feb	120	220
Mar	140	360
  
8. AVG() OVER()
SELECT
    employee_name,
    salary,
    AVG(salary) OVER (PARTITION BY department) AS avg_salary
FROM employees;

Each employee sees the average salary of their department.
