```sql
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
```
This query might cause an unexpected outcome if there are no employees in department 10 with a salary greater than 100000.  It won't throw an error, but it will return an empty result set, which might be misinterpreted as a problem with the query itself rather than with the data.