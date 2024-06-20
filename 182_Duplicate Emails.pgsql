-- Write your PostgreSQL query statement below
SELECT P.email FROM Person P
GROUP BY P.email
HAVING COUNT(P.email) > 1