
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;


-- Table: otrok
CREATE TABLE otrok (
    id         INTEGER PRIMARY KEY AUTOINCREMENT,
    ime        TEXT,
    priimek    TEXT,
    rojstva    DATE,
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
    id            INTEGER PRIMARY KEY
                          NOT NULL,
    otrok         INTEGER REFERENCES otrok (id),
    datum         DATE    NOT NULL,
    datum_placila DATE,
    znesek        DECIMAL,
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
    plezalisce INTEGER REFERENCES plezalisce (id) 
);



-- Table: plezalisce
CREATE TABLE plezalisce (
    id  INTEGER PRIMARY KEY,
    ime TEXT
);




-- Table: izlet
CREATE TABLE izlet (
    id            INTEGER PRIMARY KEY,
    datum         DATE,
    plezališče_id INTEGER REFERENCES plezalisce (id),
    FOREIGN KEY (
        plezališče_id
    )
    REFERENCES plezalisce (id) 
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
    id                INTEGER PRIMARY KEY,
    ime               TEXT,
    stevilo_treningov INTEGER,
    trener            INTEGER REFERENCES trener (id) 
);



-- Table: pripada
CREATE TABLE pripada (
    otrok   INTEGER REFERENCES otrok (id),
    skupina INTEGER REFERENCES skupina (id),
    PRIMARY KEY (
        otrok,
        skupina
    )
);


-- Table: za
CREATE TABLE za (
    racun INTEGER REFERENCES racun (id) 
                  UNIQUE,
    izlet INTEGER REFERENCES izlet (id) 
);


COMMIT TRANSACTION;





