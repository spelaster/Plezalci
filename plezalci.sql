--
-- File generated with SQLiteStudio v3.2.1 on sre. dec. 16 12:26:20 2020
--
-- Text encoding used: UTF-8
--
--PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: izlet
DROP TABLE IF EXISTS izlet;

CREATE TABLE izlet (
    id         INTEGER PRIMARY KEY,
    datum      DATE,
    plezalisce INTEGER REFERENCES plezalisce (id),
    ime        TEXT
);


-- Table: je_splezal
DROP TABLE IF EXISTS je_splezal;

CREATE TABLE je_splezal (
    nacin                  TEXT,
    datum_preplezane_smeri DATE,
    otrok                  INTEGER REFERENCES otrok (id),
    smer                   INTEGER REFERENCES smer (id),
    PRIMARY KEY (
        otrok,
        smer
    )
);


-- Table: otrok
DROP TABLE IF EXISTS otrok;

CREATE TABLE otrok (
    id            INTEGER PRIMARY KEY AUTOINCREMENT, --IDENTITY(1, 1),
    ime           TEXT,
    priimek       TEXT,
    datum_rojstva DATE,
    leto_vpisa    DATE
);



-- Table: plezalisce
DROP TABLE IF EXISTS plezalisce;

CREATE TABLE plezalisce (
    id  INTEGER PRIMARY KEY,
    ime TEXT
);


-- Table: pripada
DROP TABLE IF EXISTS pripada;

CREATE TABLE pripada (
    otrok   INTEGER REFERENCES otrok (id),
    skupina INTEGER REFERENCES skupina (id) 
);


-- Table: racun
DROP TABLE IF EXISTS racun;

CREATE TABLE racun (
    id      INTEGER PRIMARY KEY
                    NOT NULL,
    otrok   INTEGER REFERENCES otrok (id),
    datum   DATE    NOT NULL,
    placano BOOLEAN,
    znesek  DECIMAL,
    UNIQUE (
        otrok,
        datum
    )
);



-- Table: skrbnik
DROP TABLE IF EXISTS skrbnik;

CREATE TABLE skrbnik (
    dobiva_maile BOOLEAN,
    otrok        INTEGER REFERENCES otrok (id),
    stars        INTEGER REFERENCES stars (id),
    PRIMARY KEY (
        otrok,
        stars
    )
);



-- Table: skupina
DROP TABLE IF EXISTS skupina;

CREATE TABLE skupina (
    id                INTEGER PRIMARY KEY AUTOINCREMENT, --IDENTITY(1, 1),
    ime               TEXT,
    stevilo_treningov INTEGER,
    trener            INTEGER REFERENCES trener (id) 
);



-- Table: smer
DROP TABLE IF EXISTS smer;

CREATE TABLE smer (
    id         INTEGER PRIMARY KEY,
    ime        TEXT,
    plezalisce INTEGER REFERENCES plezalisce (id),
    tezavnost  TEXT
);



-- Table: stars
DROP TABLE IF EXISTS stars;

CREATE TABLE stars (
    id      INTEGER PRIMARY KEY,
    ime     TEXT,
    priimek TEXT,
    mail    TEXT,
    naslov  TEXT,
    telefon TEXT
);



-- Table: trener
DROP TABLE IF EXISTS trener;

CREATE TABLE trener (
    id      INTEGER PRIMARY KEY,
    ime     TEXT,
    priimek TEXT,
    mail    TEXT,
    naslov  TEXT,
    telefon TEXT
);

-- Table_ uporabnik
--CREATE TABLE uporabnik (
--    ime TEXT,
--    zgostitev TEXT,
--    sol TEXT
--);

COMMIT TRANSACTION;
--PRAGMA foreign_keys = on;
