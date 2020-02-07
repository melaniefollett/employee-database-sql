CREATE TABLE departments (
	dept_no VARCHAR(255) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	gender VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(255) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(255) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INTEGER NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL

);

CREATE TABLE titles (
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	title VARCHAR(255) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
);