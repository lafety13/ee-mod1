CREATE TEMPORARY TABLE IF NOT EXISTS temporary_table (
  id           INT         NOT NULL,
  project_name VARCHAR(50) NOT NULL,
  sum          REAL
);


INSERT INTO temporary_table (
  SELECT
    projects.id,
    projects.project_name,
    sum(developers.salary)
  FROM project_developers
    INNER JOIN developers ON project_developers.developer_id = developers.id
    INNER JOIN projects ON project_developers.project_id = projects.id
  GROUP BY projects.id
);


SELECT
  project_name,
  max(sum)
FROM temporary_table
GROUP BY project_name
LIMIT 1;
