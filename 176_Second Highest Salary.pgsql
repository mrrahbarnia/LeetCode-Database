-- Write your PostgreSQL query statement below
WITH highestSalary AS MATERIALIZED (
    SELECT max(salary) AS salary
    FROM Employee
)

SELECT max(salary) AS "SecondHighestSalary"
FROM Employee
WHERE salary < (SELECT * FROM highestSalary);