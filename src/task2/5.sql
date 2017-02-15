CREATE TEMPORARY TABLE IF NOT EXISTS temporary_min (
  id            INT         NOT NULL,
  customer_name VARCHAR(50) NOT NULL,
  sum           REAL
);


INSERT INTO temporary_min (
  SELECT
    customers.id,
    customers.customer_name,
    sum(projects.cost)
  FROM customer_project
    INNER JOIN customers ON customer_project.customer_id = customers.id
    INNER JOIN projects ON customer_project.project_id = projects.id
  GROUP BY customers.id, customers.customer_name);

SELECT
  customer_name,
  min(sum)
FROM temporary_min
GROUP BY customer_name
LIMIT 1;

