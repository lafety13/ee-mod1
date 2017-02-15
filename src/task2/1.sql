ALTER TABLE developers
  ADD salary REAL;

UPDATE developers
SET salary = 1000
WHERE id = 1;
UPDATE developers
SET salary = 5000
WHERE id = 2;
UPDATE developers
SET salary = 3000
WHERE id = 3;
UPDATE developers
SET salary = 6000
WHERE id = 4;