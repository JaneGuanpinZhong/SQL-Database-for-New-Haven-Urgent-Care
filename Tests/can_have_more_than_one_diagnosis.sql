SET SQL_SAFE_UPDATES = 0;
set foreign_key_checks=0;
DELETE FROM Diagnosis;
DELETE FROM Receives;
INSERT INTO Diagnosis (ICD_10_CM, Primary_service_provider_ID, Name, Employee_ID) VALUES
('C51-C58', 12345, 'Malignant neoplasms of female genital organs', 1);
INSERT INTO Diagnosis (ICD_10_CM, Primary_service_provider_ID, Name, Employee_ID) VALUES
('C43-C44', 23456, 'Melanoma and other malignant neoplasms of skin', 2);
INSERT INTO Diagnosis (ICD_10_CM, Primary_service_provider_ID, Name, Employee_ID) VALUES
('G71.0', 34567, 'Muscular dystrophy', 3);
INSERT INTO Receives (PID, ICD_10_CM, Primary_service_provider_ID) VALUES (1, 'C51-C58', 1);
INSERT INTO Receives (PID, ICD_10_CM, Primary_service_provider_ID) VALUES (1, 'C51-C58', 2);
INSERT INTO Receives (PID, ICD_10_CM, Primary_service_provider_ID) VALUES (3, 'G71.0', 3);
-- Error Code: 1062. Duplicate entry '1-C51-C58' for key 'PRIMARY'
INSERT INTO Receives (PID, ICD_10_CM, Primary_service_provider_ID) VALUES (2, 'C43-C44', 2);
INSERT INTO Receives (PID, ICD_10_CM, Primary_service_provider_ID) VALUES (3, 'C43-C44', 2);
SET foreign_key_checks=1;
SET SQL_SAFE_UPDATES = 1;
