--
-- File generated with SQLiteStudio v3.2.1 on cet. nov. 28 09:46:17 2019
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: izlet
CREATE TABLE izlet (
    id         INTEGER PRIMARY KEY,
    datum      DATE,
    plezalisce INTEGER NOT NULL
                       REFERENCES plezalisce (id) 
);


-- Table: otrok
CREATE TABLE otrok (
    id            INTEGER PRIMARY KEY AUTOINCREMENT,
    ime           TEXT,
    priimek       TEXT,
    datum_rojstva DATE,
    datum_vpisa   DATE
);


-- Table: placilo
CREATE TABLE placilo (
    racun INTEGER PRIMARY KEY
                  REFERENCES racun (id),
    stars INTEGER REFERENCES stars (id),
    datum DATE    NOT NULL
);


-- Table: plezalisce
CREATE TABLE plezalisce (
    id  INTEGER PRIMARY KEY,
    ime TEXT
);


-- Table: racun
CREATE TABLE racun (
    otrok  INTEGER     REFERENCES otrok (id),
    datum  DATENOT,
    znesek DECIMAL (2),
    izlet              REFERENCES izlet (id),
    id     INTEGER     PRIMARY KEY
                       NOT NULL,
    UNIQUE (
        otrok,
        datum
    )
);


-- Table: skrbnik
CREATE TABLE skrbnik (
    otrok INTEGER REFERENCES otrok (id),
    stars INTEGER REFERENCES stars (id),
    PRIMARY KEY (
        otrok,
        stars
    )
);


-- Table: stars
CREATE TABLE stars (
    id      INTEGER PRIMARY KEY,
    ime     TEXT,
    priimek TEXT,
    mail    TEXT,
    naslov  TEXT,
    telefon TEXT
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
