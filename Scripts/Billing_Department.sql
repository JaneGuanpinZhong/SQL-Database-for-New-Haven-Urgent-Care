CREATE TABLE Billing_Department (
  Dept_ID int NOT NULL,
  PRIMARY KEY (Dept_ID),
  FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);