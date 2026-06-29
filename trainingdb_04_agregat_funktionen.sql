SELECT *FROM Bestellungen;
SELECT SUM(Betrag) FROM Bestellungen;
SELECT COUNT(*) AS Anzahl FROM Bestellungen;
SELECT COUNT(*) AS Anzahl FROM Bestellungen WHERE Betrag = 120;