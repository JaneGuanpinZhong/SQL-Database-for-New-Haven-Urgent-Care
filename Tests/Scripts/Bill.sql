CREATE TABLE Bill (
  Bill_id int NOT NULL,
  PID int NOT NULL,
  Used_item_ID int NOT NULL,
  Dept_ID int NOT NULL,
  PRIMARY KEY (Bill_id),
  FOREIGN KEY (PID) REFERENCES Patient(PID),
  FOREIGN KEY (Used_item_ID) REFERENCES Equipment(Item_identifing_ID),
  FOREIGN KEY (Dept_ID) REFERENCES Billing_Department(Dept_ID)
);