WITH sum_table AS (
  SELECT
    customers.id,
    customers.customer_name,
    sum(projects.cost) AS sum
  FROM customer_project
  INNER JOIN customers ON customer_project.customer_id = customers.id
  INNER JOIN projects ON customer_project.project_id = projects.id
  GROUP BY customers.id, customers.customer_name
)
SELECT customer_name, min(sum_table.sum) AS min
FROM sum_table
WHERE sum = (SELECT min(sum_table.sum) FROM sum_table)
GROUP BY customer_name;
