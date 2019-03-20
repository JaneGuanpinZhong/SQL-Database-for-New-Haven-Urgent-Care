CREATE TABLE Follow_up_order (
  ICD_10_PCS varchar(256) NOT NULL,
  PID int NOT NULL,
  Name varchar(256) NOT NULL,
  location varchar(256),
  Telephone_number int,
  PRIMARY KEY (ICD_10_PCS),
  UNIQUE(PID),
  FOREIGN KEY (PID) REFERENCES Patient(PID)
);