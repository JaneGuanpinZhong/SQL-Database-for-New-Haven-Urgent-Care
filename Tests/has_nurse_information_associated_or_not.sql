SET SQL_SAFE_UPDATES = 0;
set foreign_key_checks=0;
DELETE FROM Nurse;
DELETE FROM Initial_Assessment;
INSERT INTO Nurse (Employee_ID) VALUES (1);
INSERT INTO Nurse (Employee_ID) VALUES (2);
INSERT INTO Initial_Assessment(Assessment_ID, Height, Weight, Temperature, Nurse_ID, Blood_pressure)
VALUES (1, 5.4, 113, 66, 1, 112);
INSERT INTO Initial_Assessment(Assessment_ID, Height, Weight, Temperature, Nurse_ID, Blood_pressure)
VALUES (2, 5.5, 130, 67, 2, 120);
SELECT * 
FROM Nurse JOIN Initial_Assessment ON Nurse.Employee_ID = Initial_Assessment.Nurse_ID;
SET foreign_key_checks=1;
SET SQL_SAFE_UPDATES = 1;
