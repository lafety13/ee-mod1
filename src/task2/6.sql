
WITH sum_project AS (
SELECT
projects.id,
projects.project_name,
sum(projects.cost) AS sum
FROM project_developers
INNER JOIN developers ON project_developers.developer_id = developers.id
INNER JOIN projects ON project_developers.project_id = projects.id
GROUP BY projects.id
),
min_of_sum AS (
SELECT id, project_name, MIN(sum) AS min FROM sum_project WHERE sum = (SELECT MIN(sum) FROM sum_project) GROUP BY sum_project.id, sum_project.project_name
)
SELECT mos.project_name, developer_name, salary, AVG(salary) FROM project_developers
  CROSS JOIN min_of_sum mos
  INNER JOIN projects ON project_developers.project_id = projects.id AND project_developers.project_id = (SELECT id FROM min_of_sum)
  INNER JOIN developers ON project_developers.developer_id = developers.id
GROUP BY mos.project_name, developer_name, salary;