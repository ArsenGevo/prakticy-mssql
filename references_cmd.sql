
CREATE TABLE Bestellungen1 (
    BestellungID INT PRIMARY KEY,
    KundenID INT,

    CONSTRAINT FK_Bestellungen_Kunden
    FOREIGN KEY (KundenID) REFERENCES Kunden(KundenID)
);
