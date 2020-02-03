--List employee number, last name, first name, gender, and salary
-- SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
-- FROM employees AS e
-- LEFT JOIN salaries AS s
-- ON e.emp_no = s.emp_no;

--List employees who were hired in 1986
-- SELECT emp_no, last_name, first_name, hire_date
-- FROM employees
-- WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name,
--and start and end employment dates
-- SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
-- FROM dept_manager AS dm
-- LEFT JOIN departments AS d
-- ON dm.dept_no = d.dept_no
-- LEFT JOIN employees As e
-- ON dm.emp_no = e.emp_no;

--List the department of each employee with the following information:
--employee number, last name, first name, and department name
-- SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
-- FROM dept_emp AS de
-- LEFT JOIN departments AS d
-- ON de.dept_no = d.dept_no
-- LEFT JOIN employees As e
-- ON de.emp_no = e.emp_no;

--List all employees whose first name is "Hercules" and last names begin with "B."
-- SELECT first_name, last_name
-- FROM employees
-- WHERE first_name='Hercules' AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number,
--last name, first name, and department name.
-- SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
-- FROM employees AS e
-- LEFT JOIN dept_emp AS de
-- ON e.emp_no = de.emp_no
-- LEFT JOIN departments as d
-- ON de.dept_no = d.dept_no
-- WHERE dept_name='Sales';

--List all employees in the Sales and Development departments,
--including their employee number, last name, first name, and department name.
-- SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
-- FROM employees AS e
-- LEFT JOIN dept_emp AS de
-- ON e.emp_no = de.emp_no
-- LEFT JOIN departments as d
-- ON de.dept_no = d.dept_no
-- WHERE dept_name='Sales' OR dept_name='Development';

--In descending order, list the frequency count of employee last names
-- SELECT last_name, COUNT(last_name) as "Employee Count"
-- FROM employees
-- GROUP BY last_name
-- ORDER BY "Employee Count" DESC;

