CREATE TABLE Guardian_informations (
  Guardian_ID int NOT NULL,
  PID int NOT NULL,
  Name varchar(256),
  Address varchar(256),
  Relation_with_patient varchar(256),
  Contact_info varchar(256),
  PRIMARY KEY (Guardian_ID, PID),
  FOREIGN KEY (PID) REFERENCES Patient(PID)
);
