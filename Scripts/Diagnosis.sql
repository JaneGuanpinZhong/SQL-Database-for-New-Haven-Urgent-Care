CREATE TABLE Diagnosis (
  ICD_10_CM varchar(256) NOT NULL,
  Primary_service_provider_ID int NOT NULL, 
  Name varchar(256) NOT NULL,
  Employee_ID int NOT NULL,
  PRIMARY KEY (ICD_10_CM),
  UNIQUE(Employee_ID, Primary_service_provider_ID),
  FOREIGN KEY (Employee_ID, Primary_service_provider_ID) REFERENCES Service_Provider(Employee_ID, Service_provider_ID)
);