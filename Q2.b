CREATE TABLE StudentMaster (
Std_ID INT NOT NULL AUTO_INCREMENT, 
FirstName VARCHAR(50), 
LastName VARCHAR(50), 
Address VARCHAR(500), City VARCHAR(50), 
PRIMARY KEY(Std_ID));
INSERT INTO StudentMaster (FirstName,LastName,Address,City)
VALUE ("Vedant", "Gorule", "Chinchwad", "pune");
INSERT INTO StudentMaster (FirstName,LastName,Address,City) 
VALUE ("Pranav", "Khandagle", "Chinchwad", "Pune"); 
INSERT INTO StudentMaster (FirstName,LastName,Address,City)
VALUE ("Mayur", "Thakur", "Mulashi", "Pune");
INSERT INTO StudentMaster (FirstName,LastName,Address,City) 
VALUE ("Shreeyash", "Garde", "Panchavati", "Nashik");
INSERT INTO StudentMaster (FirstName,LastName,Address,City) 
VALUE ("Sujal", "Koli", "Kurduwadi", "Solapur");
SELECT * FROM StudentMaster;
CREATE INDEX student_index
ON StudentMaster (Std_ID, FirstName, LastName, Address, City);
CREATE VIEW vw_student_master AS SELECT FirstName, LastName, City FROM StudentMaster;
SELECT * FROM vw_student_master;
SELECT * FROM StudentMaster WHERE City = 'Pune';
UPDATE StudentMaster SET City = "Kolhapur" WHERE Std_ID = 1;
SELECT * FROM StudentMaster;
DELETE FROM StudentMaster WHERE Std_ID = 4;
SELECT * FROM StudentMaster;
INSERT INTO StudentMaster (FirstName,LastName,Address,City) 
VALUE ("Maihul","Ligade", "Moshi", "Pune");
SELECT * FROM StudentMaster;
UPDATE StudentMaster SET Address = "Jarag Nagar" WHERE Std_ID = 1;
SELECT * FROM StudentMaster;
DELETE FROM StudentMaster WHERE Address = 'Moshi';
SELECT * FROM StudentMaster;
DELETE FROM StudentMaster WHERE Address != 'Jarag Nagar';
SELECT * FROM StudentMaster;
SELECT ROUND(3.14159265, 2);
SELECT CONCAT('Hello', ' ', 'World');
SELECT DATEDIFF('2023-10-15', '2023-10-01');
SELECT REPLACE('Hello, World', 'World', 'MySQL');
CREATE TABLE setop (
UserID INT PRIMARY KEY, FavoriteColors VARCHAR(255));
INSERT INTO setop (UserID, FavoriteColors)
VALUES
(1, 'Red,Blue'),
(2, 'Green,Yellow,Blue'),
(3, 'Red');
SELECT UserID
FROM setop
WHERE FIND_IN_SET('Blue', FavoriteColors) > 0;

