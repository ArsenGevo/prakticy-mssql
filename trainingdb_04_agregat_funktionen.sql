SELECT *FROM Bestellungen;
SELECT SUM(Betrag) FROM Bestellungen;
SELECT COUNT(*) AS Anzahl FROM Bestellungen;
SELECT COUNT(*) AS Anzahl FROM Bestellungen WHERE Betrag = 120;

SELECT *FROM Kunden;
SELECT *FROM Bestellungen;

SELECT
    k.Nachname,
    COUNT(b.BestellungID) AS Anzahl_Bestellungen
FROM Kunden k
LEFT JOIN Bestellungen b
ON k.KundenID = b.KundenID
GROUP BY k.KundenID, k.Nachname;

SELECT 
    k.KundenID,
    k.Vorname,
    COUNT(b.BestellungID) AS Anzahl_Bestellungen
FROM Kunden k
LEFT JOIN Bestellungen b
ON k.KundenID = b.KundenID
GROUP BY k.KundenID, k.Vorname;

