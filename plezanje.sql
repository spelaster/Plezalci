
--
-- File generated with SQLiteStudio v3.2.1 on cet. nov. 28 09:46:17 2019
--
-- Text encoding used: System

PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: otrok
CREATE TABLE otrok (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ime TEXT,
    priimek TEXT,
    datum_rojstva DATE,
    leto_vpisa DATE
);    

-- Table: stars
CREATE TABLE stars (
    id INTEGER PRIMARY KEY,
    ime TEXT,
    priimek TEXT,
    mail TEXT,
    naslov TEXT,
    telefon TEXT
);

-- Table: skrbnik
CREATE TABLE skrbnik (
    dobiva_maile TEXT,
    otrok INTEGER REFERENCES otrok(id),
    stars INTEGER REFERENCES stars(id),
    PRIMARY KEY (otrok, stars)
);

-- Table: racun
CREATE TABLE racun (
    id INTEGER PRIMARY KEY NOT NULL,
    otrok INTEGER REFERENCES otrok(id),
    datum DATE NOT NULL,
    datum_placila DATE
    znesek DECIMAL(2),
    izlet REFERENCES izlet(id),
    UNIQUE (otrok, datum)
);

--Table: je_splezal
CREATE TABLE je_splezal (
    nacin TEXT,
    datum_preplezane_smeri DATE,
    otrok INTEGER REFERENCES otrok(id),
    smer INTEGER REFERENCES smer(id),
    PRIMARY KEY (otrok, smer)
);

-- Table: smer
CREATE TABLE smer (
    id INTEGER PRIMARY KEY,
    ime TEXT,
    tezavnost TEXT
    plezalisce INTEGER REFERENCES plezalisce(id)
);

-- Table: plezalisce
CREATE TABLE plezalisce (
    id INTEGER PRIMARY KEY,
    ime TEXT
);

--Table: kam
CREATE TABLE kam (
    plezalisce INTEGER REFERENCES plezalisce(id),
    izlet INTEGER REFERENCES izlet(id),
    PRIMARY KEY (plezalisce, izlet)
);

-- Table: izlet
CREATE TABLE izlet (
    id INTEGER PRIMARY KEY,
    datum DATE
);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;

