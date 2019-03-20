SET SQL_SAFE_UPDATES = 0;
set foreign_key_checks=0;
DELETE FROM Department;
DELETE FROM Employee;
INSERT INTO Department (Dept_ID) VALUES (1);
INSERT INTO Department (Dept_ID) VALUES (2);
INSERT INTO Department (Dept_ID) VALUES (3);
INSERT INTO Employee (Employee_ID, Name, Dept_ID) VALUES (1, 'Ryan Gosling', 1);
INSERT INTO Employee (Employee_ID, Name, Dept_ID) VALUES (2, 'Emma Stone', 2);
INSERT INTO Employee (Employee_ID, Name, Dept_ID) VALUES (3, 'Andrew Garfield', 3);
SELECT Department.Dept_ID, COUNT(*) AS Num_of_Employee
	FROM Department JOIN Employee ON
	Department.Dept_ID = Employee.Dept_ID
	GROUP BY Department.Dept_ID;
SET foreign_key_checks=1;
SET SQL_SAFE_UPDATES = 1;
