--Query1
SELECT 
    employees.emp_no, 
    employees.last_name, 
    employees.first_name,
    departments.dept_name
FROM 
    employees 
INNER JOIN 
    dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN 
    departments ON departments.dept_no = dept_emp.dept_no
WHERE 
    departments.dept_name = 'Sales';

--Query-2
SELECT 
    emp_no,
    last_name,
    first_name,
    gender,
    birth_date,
    hire_date
FROM 
    employees
WHERE 
    DATE_PART('year', hire_date) = 1986
ORDER BY 
    emp_no;

--Query-3
SELECT 
    dept_managers.dept_no, 
    departments.dept_name,
    dept_managers.emp_no,
    employees.last_name, 
    employees.first_name
FROM 
    dept_managers
LEFT JOIN 
    departments ON dept_managers.dept_no = departments.dept_no
LEFT JOIN 
    employees ON dept_managers.emp_no = employees.emp_no
ORDER BY 
    emp_no;

--Query-4
SELECT
    employees.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
FROM 
    employees 
INNER JOIN 
    dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN 
    departments ON departments.dept_no = dept_emp.dept_no
ORDER BY 
    emp_no;

--Query-5
SELECT 
    emp_no, 
    first_name, 
    last_name, 
    gender, 
    birth_date, 
    hire_date
FROM 
    employees
WHERE 
    first_name = 'Hercules' 
    AND last_name LIKE 'B%';

--Query-6
SELECT 
    employees.emp_no, 
    employees.last_name, 
    employees.first_name,
    departments.dept_name
FROM 
    employees 
INNER JOIN 
    dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN 
    departments ON departments.dept_no = dept_emp.dept_no
WHERE 
    departments.dept_name = 'Sales';

--Query-7
SELECT 
    employees.emp_no, 
    employees.last_name, 
    employees.first_name,
    departments.dept_name
FROM 
    employees 
INNER JOIN 
    dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN 
    departments ON departments.dept_no = dept_emp.dept_no
WHERE 
    departments.dept_name IN ('Sales', 'Development');

--Query-8
SELECT 
    last_name, 
    COUNT(*) AS freq_count
FROM 
    employees
GROUP BY 
    last_name
ORDER BY 
    freq_count DESC;





