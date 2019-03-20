CREATE TABLE Doctor (
    Employee_ID int NOT NULL,
    Service_provider_ID int NOT NULL,
    PRIMARY KEY (Employee_ID, Service_provider_ID),
    FOREIGN KEY (Employee_ID, Service_provider_ID) REFERENCES Service_Provider(Employee_ID, Service_provider_ID)
);
