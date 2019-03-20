CREATE TABLE Uses (
 Record_ID int NOT NULL,
 Employee_ID int NOT NULL,
 PRIMARY KEY (Record_ID, Employee_ID),
 FOREIGN KEY (Record_ID) REFERENCES Medical_record(Record_ID),
 FOREIGN KEY (Employee_ID) REFERENCES Nurse(Employee_ID)
);