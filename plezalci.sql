
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;
-- ustvarimo tabele

-- Table: otrok
CREATE TABLE otrok (
    id         INTEGER PRIMARY KEY AUTOINCREMENT,
    ime        TEXT,
    priimek    TEXT,
    datum_rojstva    DATE,
    leto_vpisa DATE
);


-- Table: skrbnik
CREATE TABLE skrbnik (
    dobiva_maile BOOLEAN,
    otrok        INTEGER REFERENCES otrok (id),
    stars        INTEGER REFERENCES stars (id),
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

   

-- Table: racun
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




--Table: je_splezal
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



-- Table: smer
CREATE TABLE smer (
    id         INTEGER PRIMARY KEY,
    ime        TEXT,
    plezalisce INTEGER REFERENCES plezalisce (id),
    tezavnost  TEXT
);


-- Table: plezalisce
CREATE TABLE plezalisce (
    id  INTEGER PRIMARY KEY,
    ime TEXT
);


-- Table: izlet
CREATE TABLE izlet (
    id         INTEGER PRIMARY KEY,
    datum      DATE,
    plezalisce INTEGER REFERENCES plezalisce (id),
    ime        TEXT
);


-- Table: trener
CREATE TABLE trener (
    id      INTEGER PRIMARY KEY,
    ime     TEXT,
    priimek TEXT,
    mail    TEXT,
    naslov  TEXT,
    telefon TEXT
);


-- Table: skupina
CREATE TABLE skupina (
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    ime               TEXT,
    stevilo_treningov INTEGER,
    trener            INTEGER REFERENCES trener (id) 
);


-- Table: pripada
CREATE TABLE pripada (
    otrok   INTEGER REFERENCES otrok (id),
    skupina INTEGER REFERENCES skupina (id) 
);


COMMIT TRANSACTION;
