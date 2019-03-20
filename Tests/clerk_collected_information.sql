SET SQL_SAFE_UPDATES = 0;
set foreign_key_checks=0;
DELETE FROM Patient;
DELETE FROM Medical_record;
INSERT INTO Patient (PID, DATE_of_birth, Emergence_contact_info, Phone_number, 18_or_not, Address, Name, Assessment_Id)
VALUES (1, '2001-07-03', '(272)-375-3506', 123, 1, '9113 Highbrook Drive, Dunedin, Marlborough, 84498', 'Quinn Jackson', 1);
INSERT INTO Patient (PID, DATE_of_birth, Emergence_contact_info, Phone_number, 18_or_not, Address, Name, Assessment_Id)
VALUES (2, '2003-08-03', '(613)-554-3096', 124, 1, '8217 Fatih Sultan Mehmet Cd, Bolu, Bilecik, 85598', 'Louisa Gonzalez', 2);
INSERT INTO Patient (PID, DATE_of_birth, Emergence_contact_info, Phone_number, 18_or_not, Address, Name)
VALUES (3, '2005-07-11', '(283)-746-3029', 125, 1, '7485 Spring Hill Rd, West Valley, Kansas, 83498', 'Chad Hall');
INSERT INTO Medical_record(Record_ID, PID, Copays, Total_cost, Date_time, Clerk_id) VALUES (1, 1, 5, 300, '2018-03-04 10:00:00', 1);
INSERT INTO Medical_record(Record_ID, PID, Copays, Total_cost, Date_time, Clerk_id) VALUES (2, 1, 5, 400, '2018-05-14 14:00:00', 2);
INSERT INTO Medical_record(Record_ID, PID, Copays, Total_cost, Date_time, Clerk_id) VALUES (3, 2, 5, 200, '2017-02-04 10:00:00', 1);
INSERT INTO Medical_record (Record_ID, PID, Copays, Total_cost, Date_time, Clerk_id) VALUES (5, 2, 10, 500, '2017-02-04 11:00:00', 1);
INSERT INTO Medical_record (Record_ID, PID, Copays, Total_cost, Date_time, Clerk_id) VALUES (6, 2, 10, 700, '2017-02-04 13:00:00', 1);
INSERT INTO Medical_record(Record_ID, PID, Copays, Total_cost, Date_time, Clerk_id) VALUES (4, 3, 3, 10, '2018-02-04 11:00:00', 3);
SELECT * FROM Patient NATURAL JOIN Medical_record;
SET foreign_key_checks=1;
SET SQL_SAFE_UPDATES = 1;
