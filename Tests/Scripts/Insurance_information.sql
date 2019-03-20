CREATE TABLE Insurance_information (
  Insurance_order_ID int NOT NULL,
  Start_DATETIME  DATETIME NOT NULL,
  End_DATETIME  DATETIME NOT NULL,
  PID int NOT NULL,
  PRIMARY KEY (Insurance_order_ID),
  UNIQUE(PID),
  FOREIGN KEY (PID) REFERENCES Patient(PID)
);