CREATE TABLE Clerk (
  Employee_ID int NOT NULL,
  Clerk_id int NOT NULL,
  PRIMARY KEY (Employee_ID),
  UNIQUE(Clerk_id),
  FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);