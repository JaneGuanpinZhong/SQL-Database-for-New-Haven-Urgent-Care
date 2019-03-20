SET SQL_SAFE_UPDATES = 0;
set foreign_key_checks=0;
DELETE FROM Department;
DELETE FROM Employee;
DELETE FROM Medical_provider;
DELETE FROM Nurse;
DELETE FROM Initial_Assessment;
DELETE FROM Patient;
DELETE FROM Guardian_informations;
INSERT INTO Department (Dept_ID) VALUES (1);
INSERT INTO Department (Dept_ID) VALUES (2);
INSERT INTO Department (Dept_ID) VALUES (3);
INSERT INTO Employee (Employee_ID, Name, Dept_ID) VALUES (1, 'Ryan Gosling', 1);
INSERT INTO Employee (Employee_ID, Name, Dept_ID) VALUES (2, 'Emma Stone', 2);
INSERT INTO Employee (Employee_ID, Name, Dept_ID) VALUES (3, 'Andrew Garfield', 3);
INSERT INTO Medical_provider (Employee_ID) VALUES (1);
INSERT INTO Medical_provider (Employee_ID) VALUES (2);
INSERT INTO Medical_provider (Employee_ID) VALUES (3);
INSERT INTO Nurse (Employee_ID) VALUES (1);
INSERT INTO Nurse (Employee_ID) VALUES (2);
INSERT INTO Initial_Assessment(Assessment_ID, Height, Weight, Temperature, Nurse_ID, Blood_pressure)
VALUES (1, 5.4, 113, 66, 1, 112);
INSERT INTO Initial_Assessment(Assessment_ID, Height, Weight, Temperature, Nurse_ID, Blood_pressure)
VALUES (2, 5.5, 130, 67, 2, 120);
-- under 18 no guardian
INSERT INTO Patient (PID, DATE_of_birth, Emergence_contact_info, Phone_number, 18_or_not, Address, Name, Assessment_Id)
VALUES (1, '2001-07-03', '(272)-375-3506', 123, 1, '9113 Highbrook Drive, Dunedin, Marlborough, 84498', 'Quinn Jackson', 1);
INSERT INTO Patient (PID, DATE_of_birth, Emergence_contact_info, Phone_number, 18_or_not, Address, Name, Assessment_Id)
VALUES (2, '2003-08-03', '(613)-554-3096', 124, 1, '8217 Fatih Sultan Mehmet Cd, Bolu, Bilecik, 85598', 'Louisa Gonzalez', 2);
INSERT INTO Patient (PID, DATE_of_birth, Emergence_contact_info, Phone_number, 18_or_not, Address, Name)
VALUES (3, '2005-07-11', '(283)-746-3029', 125, 1, '7485 Spring Hill Rd, West Valley, Kansas, 83498', 'Chad Hall');
-- above 18 no guardian
INSERT INTO Patient (PID, DATE_of_birth, Emergence_contact_info, Phone_number, 18_or_not, Address, Name)
VALUES (4, '1995-07-11', '(283)-743-3029', 455, 0, '7485 Spring Hill Rd, West Valley, Kansas, 83498', 'Chad Hall');
-- under 18 has guardian
INSERT INTO Patient (PID, DATE_of_birth, Emergence_contact_info, Phone_number, 18_or_not, Address, Name, Guardian_ID)
VALUES (5, '2005-07-11', '(283)-746-5675', 125, 1, '8217 Fatih Sultan Mehmet Cd, Bolu, Bilecik, 85598', 'Quinn Jackson', 1);
-- above 18 has guardian
INSERT INTO Patient (PID, DATE_of_birth, Emergence_contact_info, Phone_number, 18_or_not, Address, Name, Guardian_ID)
VALUES (6, '1992-07-11', '(283)-746-5675', 125, 0, '8217 Fatih Sultan Mehmet Cd, Bolu, Bilecik, 85598', 'Katty May', 2);
INSERT INTO Guardian_informations (Guardian_ID, PID, Name, Address, Relation_with_patient, Contact_info)
VALUES (1, 5, 'Jack Jackson', '8217 Fatih Sultan Mehmet Cd, Bolu, Bilecik, 85598', 'Father', '384-123-3324');
INSERT INTO Guardian_informations (Guardian_ID, PID, Name, Address, Relation_with_patient, Contact_info)
VALUES (2, 6, 'Tom May', '8217 Fatih Sultan Mehmet Cd, Bolu, Bilecik, 85598', 'Father', '384-123-3457');
SELECT Patient.Guardian_ID, Patient.PID
FROM Guardian_informations JOIN Patient ON Guardian_informations.PID = Patient.PID
WHERE Patient.18_or_not = 0;
SET foreign_key_checks=1;