INSERT INTO abteilung (abtbez)
VALUES
('Personal'),
('Vertrieb'),
('Marketing'),
('Buchhaltung'),
('IT'),
('Entwicklung'),
('Produktion'),
('Einkauf'),
('Logistik'),
('Verwaltung');
GO


INSERT INTO arbeitszeitmodell (modell_code, az_bez)
VALUES
('ho', 'HomeOffice'),
('tz', 'Teilzeit'),
('vz', 'Vollzeit'),
('mm', 'Minijob');
GO


INSERT INTO familienstand (fam_bez)
VALUES
('ledig'),
('verheiratet'),
('geschieden'),
('verwitwet'),
('eingetr. Lebensgemeinschaft');
GO


INSERT INTO mitarbeiter
(nname, vname, str_hsnr, plz, ort, gebdatum, f_id, azm_id, abt_nr)
VALUES
('Fahrer', 'Bob', 'Mozartstr. 7', '90768', 'Fuerth', '1972-11-02', 5, 'vz', 7),
('Platz', 'Alexander', 'Lessingstr. 72', '91054', 'Erlangen', '1955-08-01', 2, 'vz', 7),
('Kreuz', 'Andreas', 'Ringstr. 40', '90765', 'Fuerth', '1974-04-26', 3, 'ho', 2),
('Geber', 'Ann', 'Schillerstr. 25', '90762', 'Fuerth', '1987-03-17', 3, 'vz', 10),
('Zug', 'Ann', 'Lindenweg 12', '90411', 'Nuernberg', '1996-03-20', 5, 'mm', 2),
('Bolika', 'Anna', 'Bahnhofstr. 142', '90425', 'Nuernberg', '1981-04-20', 5, 'vz', 6),
('Nass', 'Anna', 'Dorfstr. 18', '90409', 'Nuernberg', '1959-02-10', 2, 'ho', 5),
('Theke', 'Anna', 'Kirchplatz 60', '91052', 'Erlangen', '1964-01-23', 4, 'tz', 5),
('Höhle', 'Axel', 'Mühlgasse 94', '90766', 'Fuerth', '1969-08-04', 3, 'vz', 6),
('Diener', 'Bernhard', 'Mühlgasse 69', '90763', 'Fuerth', '1961-05-28', 5, 'vz', 3);




 
 