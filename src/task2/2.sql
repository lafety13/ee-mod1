WITH sum_table AS (
SELECT project_name, sum(salary) as sum FROM project_developers
INNER JOIN projects ON project_developers.project_id = projects.id
INNER JOIN developers ON project_developers.developer_id = developers.id
GROUP BY project_name)
SELECT sum_table.project_name, max(sum_table.sum) AS max FROM sum_table WHERE sum = (SELECT max(sum_table.sum) FROM sum_table) GROUP BY sum_table.project_name;