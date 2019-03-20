CREATE TABLE Initial_Assessment (
  Assessment_ID int NOT NULL,
  Medical_conditions varchar(256),
  Height float NOT NULL,
  Weight float NOT NULL,
  Temperature float NOT NULL,
  Nurse_ID int NOT NULL,
  Blood_pressure float NOT NULL,
  PRIMARY KEY (Assessment_ID),
  UNIQUE(Nurse_ID),
  FOREIGN KEY (Nurse_ID) REFERENCES Nurse(Employee_ID)
);