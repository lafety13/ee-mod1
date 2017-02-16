/* //////////////////////////////////////////////// */

INSERT INTO developers (developer_name) VALUES ('Vadim');
INSERT INTO developers (developer_name) VALUES ('Ivan');
INSERT INTO developers (developer_name) VALUES ('Paul');
INSERT INTO developers (developer_name) VALUES ('John');
INSERT INTO developers (developer_name) VALUES ('Igor');
INSERT INTO developers (developer_name) VALUES ('Pavel');

/* //////////////////////////////////////////////// */

INSERT INTO skills (skills_name) VALUES ('C++');
INSERT INTO skills (skills_name) VALUES ('Java');
INSERT INTO skills (skills_name) VALUES ('C');
INSERT INTO skills (skills_name) VALUES ('Python');
INSERT INTO skills (skills_name) VALUES ('PHP');
INSERT INTO skills (skills_name) VALUES ('Perl');
INSERT INTO skills (skills_name) VALUES ('Delphi');
INSERT INTO skills (skills_name) VALUES ('Scale');
INSERT INTO skills (skills_name) VALUES ('JavaScript');
INSERT INTO skills (skills_name) VALUES ('Ruby');

/* //////////////////////////////////////////////// */

INSERT INTO projects (project_name) VALUES ('project 1');
INSERT INTO projects (project_name) VALUES ('project 2');
INSERT INTO projects (project_name) VALUES ('project 3');
INSERT INTO projects (project_name) VALUES ('project 4');
INSERT INTO projects (project_name) VALUES ('project 5');
INSERT INTO projects (project_name) VALUES ('project 6');
INSERT INTO projects (project_name) VALUES ('project 7');
INSERT INTO projects (project_name) VALUES ('project 8');

/* //////////////////////////////////////////////// */

INSERT INTO companies (company_name) VALUES ('company 1');
INSERT INTO companies (company_name) VALUES ('company 2');
INSERT INTO companies (company_name) VALUES ('company 3');
INSERT INTO companies (company_name) VALUES ('company 4');
INSERT INTO companies (company_name) VALUES ('company 5');
INSERT INTO companies (company_name) VALUES ('company 6');

/* //////////////////////////////////////////////// */

INSERT INTO customers (customer_name) VALUES ('customer 1');
INSERT INTO customers (customer_name) VALUES ('customer 2');
INSERT INTO customers (customer_name) VALUES ('customer 3');
INSERT INTO customers (customer_name) VALUES ('customer 4');
INSERT INTO customers (customer_name) VALUES ('customer 5');
INSERT INTO customers (customer_name) VALUES ('customer 6');

/* //////////////////////////////////////////////// */
/* //////////////////////////////////////////////// */

INSERT INTO developer_skills VALUES (4, 4);
INSERT INTO developer_skills VALUES (4, 1);
INSERT INTO developer_skills VALUES (1, 1);
INSERT INTO developer_skills VALUES (2, 1);
INSERT INTO developer_skills VALUES (3, 4);

/* //////////////////////////////////////////////// */

INSERT INTO company_developers VALUES (1, 1);
INSERT INTO company_developers VALUES (1, 2);
INSERT INTO company_developers VALUES (1, 3);
INSERT INTO company_developers VALUES (1, 4);
INSERT INTO company_developers VALUES (2, 5);
INSERT INTO company_developers VALUES (3, 6);

/* //////////////////////////////////////////////// */

INSERT INTO company_projects VALUES (1, 1);
INSERT INTO company_projects VALUES (1, 2);
INSERT INTO company_projects VALUES (1, 3);
INSERT INTO company_projects VALUES (3, 4);
INSERT INTO company_projects VALUES (2, 5);

/* //////////////////////////////////////////////// */

INSERT INTO project_developers VALUES (1, 1);
INSERT INTO project_developers VALUES (1, 2);
INSERT INTO project_developers VALUES (1, 3);
INSERT INTO project_developers VALUES (3, 4);
INSERT INTO project_developers VALUES (2, 5);
INSERT INTO project_developers VALUES (2, 6);

/* //////////////////////////////////////////////// */

INSERT INTO customer_project VALUES (1, 1);
INSERT INTO customer_project VALUES (1, 2);
INSERT INTO customer_project VALUES (1, 3);
INSERT INTO customer_project VALUES (3, 4);
INSERT INTO customer_project VALUES (2, 5);