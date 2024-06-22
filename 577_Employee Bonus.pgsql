-- Write your PostgreSQL query statement below
SELECT name, b.bonus FROM Employee e
LEFT JOIN bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL