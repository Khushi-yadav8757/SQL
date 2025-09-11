Q.Get student names with their class names.

SELECT s.name, c.class_name
FROM Students s
INNER JOIN Classes c
ON s.class_id = c.class_id;
