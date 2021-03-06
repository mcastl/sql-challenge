CREATE TABLE Departments 
(
dept_no VARCHAR(4),
dept_name VARCHAR(50),
PRIMARY KEY (dept_no)
);

CREATE TABLE Titles 
(
title_id VARCHAR(5),
title VARCHAR (50),
PRIMARY KEY (title_id)
);

CREATE TABLE Employees 
(
emp_no INTEGER NOT NULL,
emp_title VARCHAR(5) NOT NULL,
birth_date VARCHAR(10) NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
sex VARCHAR(1)NOT NULL,
hire_date VARCHAR(10) NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title) REFERENCES Titles (title_id)
);

CREATE TABLE Dept_emp 
(
emp_no INTEGER NOT NULL,
dept_no VARCHAR(4) NOT NULL,
FOREIGN Key (dept_no) REFERENCES Departments(dept_no), 
FOREIGN Key (emp_no) REFERENCES Employees(emp_no) 
);

CREATE TABLE Dept_Manager 
(
dept_no VARCHAR(4) NOT NULL,
emp_no INTEGER NOT NULL,
FOREIGN Key (dept_no) REFERENCES Departments(dept_no),
FOREIGN Key (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Salaries 
(
emp_no INTEGER,
salary INTEGER,
Foreign Key (emp_no) References Employees(emp_no)
);