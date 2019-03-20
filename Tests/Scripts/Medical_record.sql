CREATE TABLE Medical_record (
  Record_ID int NOT NULL,
  PID int NOT NULL,
  Copays int,
  Total_cost int,
  Date_time DATETIME NOT NULL,
  Clerk_id int,
  PRIMARY KEY (Record_ID),
  FOREIGN KEY (PID) REFERENCES Patient(PID)
);