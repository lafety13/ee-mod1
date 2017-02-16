SELECT
  project_name,
  avg(developers.salary)
FROM project_developers
  INNER JOIN projects ON project_developers.project_id = projects.id AND project_developers.project_id = (
    SELECT id
    FROM (SELECT
            Atemporary_sums.id,
            Atemporary_sums.project_name,
            min(sum)
          FROM (SELECT
                  projects.id,
                  projects.project_name,
                  sum(projects.cost) AS sum
                FROM project_developers
                  INNER JOIN developers ON project_developers.developer_id = developers.id
                  INNER JOIN projects ON project_developers.project_id = projects.id
                GROUP BY projects.id)  AS Atemporary_sums
          GROUP BY Atemporary_sums.id, Atemporary_sums.project_name
          LIMIT 1) AS b)
  INNER JOIN developers ON project_developers.developer_id = developers.id

GROUP BY project_name;

