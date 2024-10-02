-- Write your PostgreSQL query statement below
WITH highest_salary AS (
    SELECT departmentId, MAX(Salary) AS Salary
    FROM Employee 
    GROUP BY departmentId
)

SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM Employee e
JOIN Department d
ON e.departmentId=d.id
JOIN highest_salary h
ON e.departmentId=h.departmentId AND e.salary=h.Salary