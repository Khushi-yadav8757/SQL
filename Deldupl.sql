- - Delete duplicate records

DELETE FROM emp
WHERE id NOT IN (
  SELECT MIN(id)
  FROM emp
  GROUP BY name
);
