CREATE TABLE Nurse (
  Employee_ID int NOT NULL,
  PRIMARY KEY (Employee_ID),
  FOREIGN KEY (Employee_ID) REFERENCES Medical_provider(Employee_ID)
);
