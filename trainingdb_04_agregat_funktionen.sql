
SELECT SUM(Betrag) FROM Bestellungen;

--Zeigt Anzahl von Bestellungen (Menge von DATENSÄTZE der Tabelle "Bestellungen")
SELECT COUNT(*) AS Anzahl FROM Bestellungen;

SELECT COUNT(*) AS Anzahl FROM Bestellungen WHERE Betrag = 120;

--Zeigt ALLE Kunden und ihre Anzahl von Bestellungen (LEFT JOIN)
SELECT
    k.Nachname,
    COUNT(b.BestellungID) AS Anzahl_Bestellungen
FROM Kunden k
LEFT JOIN Bestellungen b
ON k.KundenID = b.KundenID
GROUP BY k.Nachname;


SELECT *FROM Kunden;
SELECT *FROM Bestellungen;

--Zeigt NUR Kunden die Bestellungen haben und ihre Anzahl von Bestellungen (INNER JOIN)
SELECT k.Vorname, k.Nachname,
COUNT(b.BestellungID) AS Anzahl_von_bestellungen
FROM Kunden k
INNER JOIN Bestellungen b
ON k.KundenID = b.KundenID
GROUP BY k.Nachname, k.Vorname;

--Сумма по каждому клиенту, NULL whenn ein Kunde keine Bestellung hat
SELECT 
    k.KundenID,
    k.Vorname,
    k.Nachname,
    SUM(b.Betrag) AS Gesamtbetrag
FROM Kunden k
LEFT JOIN Bestellungen b
ON k.KundenID = b.KundenID
GROUP BY k.KundenID, k.Vorname, k.Nachname;

--ISNULL(SUM(),0) um NULL zu vermeiden wenn ein Kunde keine Bestellung hat
SELECT 
 k.KundenID,
 k.Vorname,
 k.Nachname,
 ISNULL(SUM(b.Betrag),0) AS Gesamtbetrag
FROM Kunden k
LEFT JOIN Bestellungen b
ON k.KundenID = b.KundenID
GROUP BY k.KundenID, k.Vorname, k.Nachname;

--AVG berechnet den Durchschnitt.
SELECT AVG(Bestellungen.Betrag) AS b_durchschnitt 
FROM Bestellungen;

--Bestellungsdurchschnittsumme jeder Kunden
SELECT 
 k.KundenID,
 k.Vorname,
 k.Nachname,
 AVG(b.Betrag) AS ku_bdurchschnitt
 FROM Kunden k
 INNER JOIN Bestellungen b
 ON k.KundenID = b.KundenID
 GROUP BY k.KundenID, k.Vorname, k.Nachname;

--MIN gibt den kleinsten Wert zurück.
SELECT MIN(Betrag) AS Kleinster_Betrag FROM Bestellungen;

--kleinsten Betrag jeder Kunde
SELECT 
 k.KundenID,
 k.Vorname,
 k.Nachname,
 ISNULL(MIN(b.Betrag), 0) AS Kleinster_Betrag
 FROM Kunden k
 LEFT JOIN Bestellungen b
 ON k.KundenID = b.KundenID
 GROUP BY k.KundenID, k.Vorname, k.Nachname;

 SELECT 
 k.KundenID,
 k.Vorname,
 k.Nachname,
    COUNT(b.BestellungID) AS Anzahl_Bestellungen,
    SUM(b.Betrag) AS Gesamtbetrag,
    AVG(b.Betrag) AS Durchschnittsbetrag,
    MIN(b.Betrag) AS Kleinster_Betrag,
    MAX(b.Betrag) AS Groesster_Betrag
FROM Kunden K
LEFT JOIN Bestellungen b
ON k.KundenID = b.KundenID
GROUP BY k.KundenID, k.Vorname, k.Nachname;



SELECT
COUNT(b.BestellungID) AS Anzahl_Bestellungen,
    SUM(b.Betrag) AS Gesamtbetrag,
    AVG(b.Betrag) AS Durchschnittsbetrag,
    MIN(b.Betrag) AS Kleinster_Betrag,
    MAX(b.Betrag) AS Groesster_Betrag
FROM Bestellungen b;

