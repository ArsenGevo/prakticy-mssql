USE TrainingDB;
GO 

INSERT INTO kunden (KundenID, Vorname, Nachname, Stadt)
VALUES 
(3, 'Maria', 'Schmidt', 'Berlin'),
(4, 'Peter', 'Weber', 'Nürnberg'),
(5, 'Olena', 'Koval', 'Hamburg'),
(6, 'Andreas', 'Fischer', 'München');

SELECT Vorname, Stadt FROM kunden;
SELECT *FROM kunden ORDER BY Nachname ASC;
SELECT Vorname, Nachname, Stadt FROM kunden WHERE Stadt = 'Nürnberg' ORDER BY Nachname;
UPDATE kunden SET Stadt = 'Augsburg' Where KundenID = 2;
DELETE FROM kunden WHERE KundenID = 6;
SELECT Vorname FROM kunden WHERE Stadt = 'Nürnberg';
UPDATE kunden SET Stadt = 'Nürnberg' WHERE KundenID = 3;
SELECT *FROM kunden;


CREATE TABLE mein_test3 (ad INT IDENTITY(100,2) PRIMARY KEY, vorname varchar(10));

INSERT INTO mein_test3 VALUES ('Kermit'), ('Gunzo'), ('Riz-zo'), (null), ('null'), ('Waldorf'), ('Waldorf');
SELECT *FROM mein_test3;
DELETE FROM mein_test3 WHERE vorname is NULL;
DELETE FROM mein_test3 WHERE vorname = 'null';
