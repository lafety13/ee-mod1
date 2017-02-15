ALTER TABLE projects
  ADD cost REAL;

UPDATE projects
SET cost = 1500
WHERE id = 1;

UPDATE projects
SET cost = 2222
WHERE id = 2;

UPDATE projects
SET cost = 3000
WHERE id = 3;

UPDATE projects
SET cost = 3333
WHERE id = 4;

UPDATE projects
SET cost = 3333
WHERE id = 5;