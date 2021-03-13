
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