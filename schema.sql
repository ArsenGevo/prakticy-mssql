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

