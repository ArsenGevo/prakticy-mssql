
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

 --alle Agregatfunktionen für jeder Kunde (NULL wurde nicht vermieden)
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


--alle Agregatfunktionen für eine Tabelle
SELECT
COUNT(b.BestellungID) AS Anzahl_Bestellungen,
    SUM(b.Betrag) AS Gesamtbetrag,
    AVG(b.Betrag) AS Durchschnittsbetrag,
    MIN(b.Betrag) AS Kleinster_Betrag,
    MAX(b.Betrag) AS Groesster_Betrag
FROM Bestellungen b;

--Regel GROUP BY
--Если ты хочешь общий итог по всей таблице, GROUP BY не нужен:
SELECT SUM(Betrag) AS Gesamtbetrag
FROM Bestellungen;
--Но если ты хочешь сумму по каждому клиенту, нужен GROUP BY:
SELECT 
    KundenID,
    SUM(Betrag) AS Gesamtbetrag
FROM Bestellungen
GROUP BY KundenID;

--WHERE фильтрует строки до группировки
SELECT 
    KundenID,
    SUM(Betrag) AS Gesamtbetrag
FROM Bestellungen
WHERE Betrag > 50
GROUP BY KundenID;

--HAVING фильтрует группы после группировки
--Сначала сгруппируй заказы по KundenID, оставь только группы, где сумма больше 100.
SELECT 
    KundenID,
    SUM(Betrag) AS Gesamtbetrag
FROM Bestellungen
GROUP BY KundenID
HAVING SUM(Betrag) > 50;
SELECT * From Bestellungen;
