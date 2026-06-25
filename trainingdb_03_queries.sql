USE TrainingDB;
GO 

SELECT Vorname, Stadt FROM kunden;
SELECT *FROM kunden ORDER BY Nachname ASC;
SELECT Vorname, Nachname, Stadt FROM kunden WHERE Stadt = 'Nürnberg' ORDER BY Nachname;
UPDATE kunden SET Stadt = 'Augsburg' Where KundenID = 2;
DELETE FROM kunden WHERE KundenID = 6;
SELECT Vorname FROM kunden WHERE Stadt = 'Nürnberg';
UPDATE kunden SET Stadt = 'Nürnberg' WHERE KundenID = 3;
SELECT *FROM kunden;

DELETE FROM mein_test3 WHERE vorname is NULL;
DELETE FROM mein_test3 WHERE vorname = 'null';

--Показать всё:
SELECT *
FROM Kunden;

--Показать только нужные столбцы:
SELECT Vorname, Nachname, Stadt
FROM Kunden;

--Фильтр:
SELECT *
FROM Kunden
WHERE Stadt = 'Nürnberg';

--Сортировка:
SELECT *
FROM Kunden
ORDER BY Nachname;

--Изменение данных:
UPDATE Kunden
SET Stadt = 'Augsburg'
WHERE KundenID = 2;

--Удаление:
DELETE FROM Kunden
WHERE KundenID = 6;

--JOIN Чтобы увидеть не просто KundenID, а имя клиента:
SELECT 
k.Vorname,
k.Nachname,
b.Bestelldatum,
b.Betrag
FROM Kunden k
INNER JOIN Bestellungen b
ON k.KundenID = b.KundenID;

--LEFT JOIN показать всех клиентов(левая табл) и их заказы (правая табл). 
--Если заказы отсутствуют(данные в правой табл) то все равно показать клиентов (данные из левой табл) 
SELECT 
k.Vorname,
k.Nachname,
b.Bestelldatum,
b.Betrag
From Kunden k
LEFT JOIN Bestellungen b
ON k.KundenID = b.KundenID;

--Все заказы с именами клиентов
SELECT 
    k.KundenID,
    k.Vorname,
    k.Nachname,
    k.Stadt,
    b.BestellungID,
    b.Bestelldatum,
    b.Betrag
FROM Kunden k
INNER JOIN Bestellungen b
ON k.KundenID = b.KundenID;

--Только заказы клиентов из Nürnberg
SELECT 
    k.KundenID,
    k.Vorname,
    k.Nachname,
    k.Stadt,
    b.BestellungID,
    b.Bestelldatum,
    b.Betrag
FROM Kunden k
INNER JOIN Bestellungen b
ON k.KundenID = b.KundenID
WHERE k.Stadt = 'Nürnberg';

--Покажи клиентов, для которых не нашлось заказа.
SELECT 
    k.KundenID,
    k.Vorname,
    k.Nachname
FROM Kunden k
LEFT JOIN Bestellungen b
ON k.KundenID = b.KundenID
WHERE b.BestellungID IS NULL;


SELECT 
    k.KundenID,
    k.Vorname,
    k.Nachname,
    COUNT(b.BestellungID) AS Anzahl_Bestellungen
FROM Kunden k
LEFT JOIN Bestellungen b
ON k.KundenID = b.KundenID
GROUP BY 
    k.KundenID,
    k.Vorname,
    k.Nachname;

--Сумма заказов по каждому клиенту
SELECT 
    k.KundenID,
    k.Vorname,
    k.Nachname,
    SUM(b.Betrag) AS Gesamtbetrag
FROM Kunden k
LEFT JOIN Bestellungen b
ON k.KundenID = b.KundenID
GROUP BY 
    k.KundenID,
    k.Vorname,
    k.Nachname;

--Чтобы вместо NULL было 0, используем ISNULL:
SELECT 
    k.KundenID,
    k.Vorname,
    k.Nachname,
    ISNULL(SUM(b.Betrag), 0) AS Gesamtbetrag
FROM Kunden k
LEFT JOIN Bestellungen b
ON k.KundenID = b.KundenID
GROUP BY 
    k.KundenID,
    k.Vorname,
    k.Nachname;

--Покажи всех клиентов, количество их заказов и общую сумму заказов. Отсортируй по сумме от большей к меньшей.
SELECT 
    k.KundenID,
    k.Vorname,
    k.Nachname,
    COUNT(b.BestellungID) AS Anzahl_Bestellungen,
    ISNULL(SUM(b.Betrag), 0) AS Gesamtbetrag
FROM Kunden k
LEFT JOIN Bestellungen b
ON k.KundenID = b.KundenID
GROUP BY 
    k.KundenID,
    k.Vorname,
    k.Nachname
ORDER BY Gesamtbetrag DESC;

--сколько клиентов в каждом городе
SELECT
    Stadt,
    COUNT(*) AS Anzahl_Kunden
    FROM Kunden
    GROUP BY Stadt;

--Сумма заказов по городам:
SELECT 
    k.Stadt,
    COUNT(b.BestellungID) AS Anzahl_Bestellungen,
    ISNULL(SUM(b.Betrag), 0) AS Gesamtbetrag
FROM Kunden k
LEFT JOIN Bestellungen b
ON k.KundenID = b.KundenID
GROUP BY k.Stadt
ORDER BY Gesamtbetrag DESC;



