/* SQL CHALLENGE DB */

-- drop table titles if it exists
DROP TABLE IF EXISTS "titles";

-- create titles table
CREATE TABLE "titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

-- drop table employees if it exists
DROP TABLE IF EXISTS "employees" CASCADE;

-- create employees table
CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

-- drop table departments if it exists
DROP TABLE IF EXISTS "departments";

-- create departments table
CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

-- drop table dept_manager if it exists
DROP TABLE IF EXISTS "dept_manager";

-- create dept_manager table
CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

-- drop table dept_emp if it exists
DROP TABLE IF EXISTS "dept_emp";

-- create dept_emp table
CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

-- drop table salaries if it exists
DROP TABLE IF EXISTS "salaries";

-- create salaries table
CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

-- add foreign key constraints
ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

-- checking tables
SELECT * FROM titles;

SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM dept_manager;

SELECT * FROM dept_emp;

SELECT * FROM salaries;


-- Importing data from csv files locally. FUll path for reference.

COPY employees
FROM 'C:\Users\Oswaldo Moreno\Desktop\homework\sql-challenge\data\employees.csv'
DELIMITER ','
CSV HEADER;

COPY departments
FROM 'C:\Users\Oswaldo Moreno\Desktop\homework\sql-challenge\data\departments.csv'
DELIMITER ','
CSV HEADER;

COPY dept_emp
FROM 'C:\Users\Oswaldo Moreno\Desktop\homework\sql-challenge\data\dept_emp.csv'
DELIMITER ','
CSV HEADER;

COPY dept_manager
FROM 'C:\Users\Oswaldo Moreno\Desktop\homework\sql-challenge\data\dept_manager.csv'
DELIMITER ','
CSV HEADER;

COPY salaries
FROM 'C:\Users\Oswaldo Moreno\Desktop\homework\sql-challenge\data\salaries.csv'
DELIMITER ','
CSV HEADER;

COPY titles
FROM 'C:\Users\Oswaldo Moreno\Desktop\homework\sql-challenge\data\titles.csv'
DELIMITER ','
CSV HEADER;