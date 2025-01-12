# Unexpected Empty Result Set from SQL Query

This repository demonstrates a common, yet subtle, issue in SQL queries: the silent return of an empty result set when no matching rows are found.  This can be difficult to debug because it doesn't produce an error, leading developers to potentially misinterpret the query's logic or the data's integrity.

The `bug.sql` file contains the problematic query. The `bugSolution.sql` file provides a more robust approach that handles the case where no matching rows exist.

## Bug Description
The provided SQL query intends to retrieve employees from department 10 with salaries exceeding 100000. However, if no such employees exist, the query returns an empty result set without any indication of whether the query itself is flawed or there's simply no data to retrieve.

## Solution
The solution involves using a `COUNT(*)` function to explicitly check for the presence of matching rows.  This allows for more controlled error handling and clearer interpretation of the query's outcome.