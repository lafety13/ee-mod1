/*DROP TABLE temporary_sums;*/

CREATE TEMPORARY TABLE IF NOT EXISTS temporary_sums (
  id            INT         NOT NULL,
  projects_name VARCHAR(50) NOT NULL,
  sum           REAL
);


INSERT INTO temporary_sums (
  SELECT
    projects.id,
    projects.project_name,
    sum(projects.cost)
  FROM project_developers
    INNER JOIN developers ON project_developers.developer_id = developers.id
    INNER JOIN projects ON project_developers.project_id = projects.id
  GROUP BY projects.id);


SELECT
  project_name,
  avg(developers.salary)
FROM project_developers
  INNER JOIN projects ON project_developers.project_id = projects.id AND project_developers.project_id = (
    SELECT id
    FROM (SELECT
            temporary_sums.id,
            temporary_sums.projects_name,
            min(sum)
          FROM temporary_sums
          GROUP BY temporary_sums.id, temporary_sums.projects_name
          LIMIT 1) AS b)
  INNER JOIN developers ON project_developers.developer_id = developers.id
GROUP BY project_name;



