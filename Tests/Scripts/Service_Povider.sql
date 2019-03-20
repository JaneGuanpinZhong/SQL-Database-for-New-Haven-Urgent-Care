CREATE TABLE Service_Provider (
  Employee_ID int NOT NULL,
  Service_provider_ID int NOT NULL,
  name varchar(256) NOT NULL,
  PRIMARY KEY (Employee_ID, Service_provider_ID),
  FOREIGN KEY (Employee_ID) REFERENCES Medical_provider(Employee_ID)
);