-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO retirement_titles
FROM emp_title_info as e
WHERE (e.to_date = '9999-01-01')
ORDER BY emp_no;

SELECT * FROM retirement_titles