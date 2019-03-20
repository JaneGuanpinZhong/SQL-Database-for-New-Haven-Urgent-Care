CREATE TABLE Employee (
  Employee_ID int NOT NULL,
  Name varchar(256) NOT NULL,
  Dept_ID int,
  PRIMARY KEY (Employee_ID),
  FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);