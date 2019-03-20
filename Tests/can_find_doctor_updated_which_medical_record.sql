SET SQL_SAFE_UPDATES = 0;
set foreign_key_checks=0;
DELETE FROM Diagnose;
DELETE FROM Doctor;
DELETE FROM Medical_record;
INSERT INTO Doctor (Employee_ID, Service_provider_ID) VALUES (1, 12345);
INSERT INTO Doctor (Employee_ID, Service_provider_ID) VALUES (2, 23456);
INSERT INTO Diagnose (Record_ID, Employee_ID, Service_Provider_ID) VALUES (1, 1, 12345);
INSERT INTO Diagnose (Record_ID, Employee_ID, Service_Provider_ID) VALUES (2, 1, 12345);
INSERT INTO Diagnose (Record_ID, Employee_ID, Service_Provider_ID) VALUES (3, 2, 23456);
INSERT INTO Diagnose (Record_ID, Employee_ID, Service_Provider_ID) VALUES (4, 2, 23456);
INSERT INTO Diagnose (Record_ID, Employee_ID, Service_Provider_ID) VALUES (5, 3, 34567);
INSERT INTO Diagnose (Record_ID, Employee_ID, Service_Provider_ID) VALUES (6, 2, 23456);
INSERT INTO Medical_record(Record_ID, PID, Copays, Total_cost, Date_time, Clerk_id) VALUES (1, 1, 5, 300, '2018-03-04 10:00:00', 1);
INSERT INTO Medical_record(Record_ID, PID, Copays, Total_cost, Date_time, Clerk_id) VALUES (2, 1, 5, 400, '2018-05-14 14:00:00', 2);
INSERT INTO Medical_record(Record_ID, PID, Copays, Total_cost, Date_time, Clerk_id) VALUES (3, 2, 5, 200, '2017-02-04 10:00:00', 1);
INSERT INTO Medical_record (Record_ID, PID, Copays, Total_cost, Date_time, Clerk_id) VALUES (5, 2, 10, 500, '2017-02-04 11:00:00', 1);
INSERT INTO Medical_record (Record_ID, PID, Copays, Total_cost, Date_time, Clerk_id) VALUES (6, 2, 10, 700, '2017-02-04 13:00:00', 1);
INSERT INTO Medical_record(Record_ID, PID, Copays, Total_cost, Date_time, Clerk_id) VALUES (4, 3, 3, 10, '2018-02-04 11:00:00', 3);

SELECT DISTINCT PID, Doctor.Service_provider_ID
FROM Doctor, Diagnose, Medical_record
WHERE Doctor.Service_provider_ID = Diagnose.Service_Provider_ID
AND Diagnose.Record_ID = Medical_record.Record_ID AND Medical_record.PID = 2
UNION
SELECT DISTINCT PID, Physician_Assisstant.Service_Provider_ID
FROM Physician_Assisstant, Diagnose, Medical_record
WHERE Physician_Assisstant.Service_Provider_ID = Diagnose.Service_Provider_ID
AND Diagnose.Record_ID = Medical_record.Record_ID AND Medical_record.PID = 2;
SET foreign_key_checks=1;
SET SQL_SAFE_UPDATES = 1;
