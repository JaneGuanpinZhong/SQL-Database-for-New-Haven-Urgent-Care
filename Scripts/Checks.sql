CREATE TABLE Checks (
  Employee_ID int NOT NULL,
  Record_ID int NOT NULL,
  PRIMARY KEY (Employee_ID, Record_ID),
  FOREIGN KEY (Record_ID) REFERENCES Medical_record(Record_ID),
  FOREIGN KEY (Employee_ID) REFERENCES Clerk(Employee_ID)
);