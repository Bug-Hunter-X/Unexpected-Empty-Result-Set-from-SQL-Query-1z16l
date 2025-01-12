```sql
-- Check if any employees meet the criteria
SELECT COUNT(*) FROM employees WHERE department_id = 10 AND salary > 100000;

-- If the count is greater than 0, then proceed with the original query
IF EXISTS (SELECT * FROM employees WHERE department_id = 10 AND salary > 100000) THEN
    SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
ELSE
    SELECT 'No employees found matching the criteria' AS Message;
END IF;
```