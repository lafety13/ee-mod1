CREATE TABLE IF NOT EXISTS developers (
  id             SERIAL      NOT NULL PRIMARY KEY,
  developer_name VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS skills (
  id           SERIAL      NOT NULL PRIMARY KEY,
  skills_name  VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS projects (
  id SERIAL NOT NULL PRIMARY KEY,
  project_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS companies (
  id SERIAL NOT NULL PRIMARY KEY,
  company_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE  IF NOT EXISTS customers (
  id SERIAL NOT NULL PRIMARY KEY,
  customer_name VARCHAR(50) NOT NULL UNIQUE
);

/* /////////////////////////////////////////////////// */

CREATE TABLE IF NOT EXISTS company_developers (
  company_id INT NOT NULL,
  developer_id INT NOT NULL UNIQUE,

  FOREIGN KEY (company_id) REFERENCES companies(id),
  FOREIGN KEY (developer_id) REFERENCES developers(id)
);

CREATE TABLE IF NOT EXISTS company_projects (
  company_id INT NOT NULL,
  project_id INT NOT NULL UNIQUE,

  FOREIGN KEY (company_id) REFERENCES companies(id),
  FOREIGN KEY (project_id) REFERENCES projects(id)
);

CREATE TABLE IF NOT EXISTS project_developers (
  project_id INT NOT NULL,
  developer_id INT NOT NULL UNIQUE,

  FOREIGN KEY (project_id) REFERENCES projects(id),
  FOREIGN KEY (developer_id) REFERENCES developers(id)
);

CREATE TABLE IF NOT EXISTS developer_skills (
  developer_id INT NOT NULL,
  skill_id INT NOT NULL,

  FOREIGN KEY (developer_id) REFERENCES developers(id),
  FOREIGN KEY (skill_id) REFERENCES skills(id)
);

CREATE TABLE IF NOT EXISTS customer_project (
  customer_id INT NOT NULL,
  project_id INT NOT NULL UNIQUE,

  FOREIGN KEY (customer_id) REFERENCES customers(id),
  FOREIGN KEY (project_id) REFERENCES projects(id)
);

