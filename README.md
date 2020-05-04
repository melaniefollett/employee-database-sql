# Employee Database: A Mystery in Two Parts

This is a research project on mock data for employees of a corporation from the 1980s and 1990s. All that remained of the database of employees from that period were six CSV files.
I performed data modeling, engineering, and analysis on the employee data.  Specifically, I designed tables to hold the data in the CSVs, imported the CSVs into a SQL database, and analyzed the data in order to answer questions.

# Data Modeling
I sketched out an ERD of the tables I planned to use to store the data (ERD-Code.sql, ERD-Image.png)

# Data Engineering
I created a table schema for each of the six CSV files, specifying data types, primary keys, foreign keys, and other constraints (table-schemata.sql). Then I imported each CSV file into the corresponding SQL table.

# Data Analysis
Finally I queried the database to determine the following (queries.sql):
- List the following details of each employee: employee number, last name, first name, gender, and salary.
- List employees who were hired in 1986.
- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
- List the department of each employee with the following information: employee number, last name, first name, and department name.
- List all employees whose first name is "Hercules" and last names begin with "B."
- List all employees in the Sales department, including their employee number, last name, first name, and department name.
- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

# Additional Analysis
To determine the authenticity of the data, I loaded the SQL database into a Jupyter Notebook (Bonus.ipynb) so I could investigate it forther with Pandas.  I created a histogram to visualize the most common salary ranges for employees.  I also created a bar chart of average salary by title.  I found that staff and senior staff employees had higher salaries than higher level positions like managers and senior engineers.  This suggests that the data is falsified.
