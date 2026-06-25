USE TrainingDB;
GO 

SELECT *FROM Kunden;
SELECT *FROM Bestellungen;

INSERT INTO Kunden (KundenID, Vorname, Nachname, Stadt)
VALUES
(1, 'Anna', 'Müller', 'Nürnberg'),
(2, 'Ivan', 'Petrenko', 'München'),
(3, 'Maria', 'Schmidt', 'Berlin'),
(4, 'Peter', 'Weber', 'Nürnberg'),
(5, 'Olena', 'Koval', 'Hamburg'),
(6, 'Andreas', 'Fischer', 'München');

INSERT INTO Bestellungen (KundenID, Bestelldatum, Betrag)
VALUES
(1, '2026-06-22', 49.99),
(1, '2026-06-23', 19.90),
(2, '2026-06-24', 120.00),
(3, '2026-06-25', 75.50);











