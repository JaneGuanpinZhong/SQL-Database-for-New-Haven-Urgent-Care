SET SQL_SAFE_UPDATES = 0;
set foreign_key_checks=0;
DELETE FROM Follow_up_order;
INSERT INTO Follow_up_order(ICD_10_PCS, PID, Name, location, Telephone_number)
VALUES ('047K0ZZ', 1, "Smell Test", "Mayo Clinic", 123);
-- Error Code: 1062. Duplicate entry '1' for key 'PID'
INSERT INTO Follow_up_order(ICD_10_PCS, PID, Name, location, Telephone_number)
VALUES ('048K0ZZ', 1, "Echocardiography", "Hennepin Health Center", 123);

INSERT INTO Follow_up_order(ICD_10_PCS, PID, Name, location, Telephone_number)
VALUES ('049K0ZZ', 2, "Colonoscopy", "Hennepin Health Center", 123);
SET foreign_key_checks=1;
SET SQL_SAFE_UPDATES = 1;
