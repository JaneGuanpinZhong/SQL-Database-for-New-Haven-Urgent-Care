CREATE TABLE Receives (
  PID int NOT NULL,
  ICD_10_CM varchar(256) NOT NULL,
  Notes varchar(256),
  Primary_service_provider_ID int NOT NULL,
  PRIMARY KEY (PID, ICD_10_CM),
  FOREIGN KEY (ICD_10_CM) REFERENCES Diagnosis(ICD_10_CM),
  FOREIGN KEY (PID) REFERENCES Patient(PID)
);
