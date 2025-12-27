Q.Find records in table1 not in table2
SELECT *
FROM table1
WHERE id NOT IN (SELECT id FROM table2);
