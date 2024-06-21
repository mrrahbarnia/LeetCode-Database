-- Write your PostgreSQL query statement below
WITH unique_nums AS (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING count(num) = 1
)

SELECT max(num) AS num FROM unique_nums