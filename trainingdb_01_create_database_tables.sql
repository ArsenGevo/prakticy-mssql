CREATE DATABASE TrainingDB;
GO
USE TrainingDB;
GO 

CREATE TABLE Kunden (
KundenID INT PRIMARY KEY, 
Vorname NVARCHAR(30), 
Nachname NVARCHAR(30), 
Stadt NVARCHAR(30)
);

CREATE TABLE Bestellungen (
    BestellungID INT IDENTITY(1,1) PRIMARY KEY,
    KundenID INT NOT NULL,
    Bestelldatum DATE,
    Betrag DECIMAL(10,2),

    CONSTRAINT FK_Bestellungen_Kunden
    FOREIGN KEY (KundenID) REFERENCES Kunden(KundenID)
);
GO