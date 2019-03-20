CREATE TABLE Physician_Assisstant (
  Employee_ID int NOT NULL,
  Service_Provider_ID int NOT NULL,
  PRIMARY KEY (Employee_ID, Service_Provider_ID),
  FOREIGN KEY (Employee_ID, Service_Provider_ID) REFERENCES Service_Provider(Employee_ID, Service_provider_ID)
);
