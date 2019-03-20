CREATE TABLE Diagnose (
  Record_ID int NOT NULL,
  Employee_ID int NOT NULL,
  Service_Provider_ID int NOT NULL,
  PRIMARY KEY (Record_ID, Employee_ID, Service_Provider_ID),
  FOREIGN KEY (Record_ID) REFERENCES Medical_record(Record_ID),
  FOREIGN KEY (Employee_ID, Service_Provider_ID) REFERENCES Doctor(Employee_ID, Service_Provider_ID)
);
