CREATE TABLE Patient (
  PID int NOT NULL,
  DATE_of_birth DATE NOT NULL,
  Emergence_contact_info varchar(256) NOT NULL,
  Phone_number int NOT NULL,
  18_or_not bool NOT NULL,
  Address varchar(256) NOT NULL,
  Name varchar(256) NOT NULL,
  Guardian_ID int,
  Assessment_Id int,
  PRIMARY KEY (PID),
  UNIQUE(Assessment_Id),
  FOREIGN KEY (Assessment_ID) REFERENCES Initial_Assessment(Assessment_ID)
);
