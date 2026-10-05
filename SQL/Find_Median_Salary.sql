WITH ranked AS (
    SELECT 
        salary,
        ROW_NUMBER() OVER (ORDER BY salary) AS rn,
        COUNT(*) OVER () AS total_count
    FROM employees
)
SELECT AVG(salary) AS median_salary
FROM ranked
WHERE rn IN (
    FLOOR((total_count + 1) / 2),
    FLOOR((total_count + 2) / 2)
);
