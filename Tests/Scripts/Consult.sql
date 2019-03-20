CREATE TABLE Consult (
  Employee_ID int NOT NULL,
  Service_provider_ID int NOT NULL,
  PID int NOT NULL,
  PRIMARY KEY (Employee_ID, PID),
  UNIQUE(Service_provider_ID),
  FOREIGN KEY (PID) REFERENCES Patient(PID),
  FOREIGN KEY (Employee_ID, Service_provider_ID) REFERENCES Doctor(Employee_ID, Service_provider_ID)
);