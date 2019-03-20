SET SQL_SAFE_UPDATES = 0;
set foreign_key_checks=0;
DELETE FROM Insurance_information;
INSERT INTO Insurance_information (Insurance_order_ID, Start_DATETIME, End_DATETIME, PID)
VALUES (1287564, '2001-07-03 00:00:00', '2014-05-04 00:00:00', 1);
INSERT INTO Insurance_information (Insurance_order_ID, Start_DATETIME, End_DATETIME, PID)
VALUES (7462848, '2014-05-05 00:00:00', '2019-03-04 00:00:00', 1);
SET foreign_key_checks=1;
SET SQL_SAFE_UPDATES = 1;
