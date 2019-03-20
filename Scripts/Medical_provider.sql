CREATE TABLE Medical_provider (
  Employee_ID int NOT NULL,
  PRIMARY KEY (Employee_ID),
  FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);