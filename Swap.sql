Q. Swap male and female values
UPDATE employees
SET gender = CASE
    WHEN gender = 'M' THEN 'F'
    WHEN gender = 'F' THEN 'M'
END;
