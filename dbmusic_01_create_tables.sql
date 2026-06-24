USE MusicDB;
GO

CREATE TABLE genre (
g_id INT IDENTITY(1,1) Primary KEY,
genre VARCHAR(30),
);

CREATE TABLE interpret (
i_id INT IDENTITY(1,1) PRIMARY KEY,
name VARCHAR(30)
);

CREATE TABLE titel (
t_id INT IDENTITY(1,1) PRIMARY KEY,
titel VARCHAR(200),
interpretID INT,
genreID INT,
FOREIGN KEY (interpretID) REFERENCES interpret(i_id),
FOREIGN KEY (genreID) REFERENCES genre(g_id)
);

--teil2 table ort;
CREATE TABLE ort (
o_id INT IDENTITY (1,1) PRIMARY KEY,
o_name VARCHAR(50)
);

--teil2 table veranst;
CREATE TABLE inVer (
z_i_nr INT, 
z_v_nr INT, 
datum_von DATE, 
datum_bis DATE,
FOREIGN KEY (z_i_nr) REFERENCES interpret(i_id),
FOREIGN KEY (z_v_nr) REFERENCES ort(o_id)
);
