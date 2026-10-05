SELECT customer_id
FROM sales
GROUP BY customer_id
HAVING COUNT(DISTINCT category_id) = (
    SELECT COUNT(DISTINCT category_id)
    FROM sales
);
