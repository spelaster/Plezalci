
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;


-- Table: otrok
CREATE TABLE otrok (
    otrok_id      INTEGER PRIMARY KEY AUTOINCREMENT,
    otrok_ime     TEXT,
    otrok_priimek TEXT,
    datum_rojstva DATE,
    leto_vpisa    DATE
);


-- Table: skrbnik
CREATE TABLE skrbnik (
    dobiva_maile TEXT,
    otrok        INTEGER REFERENCES otrok (otrok_id),
    stars        INTEGER REFERENCES stars (stars_id),
    PRIMARY KEY (
        otrok,
        stars
    )
);


-- Table: stars
CREATE TABLE stars (
    stars_id      INTEGER PRIMARY KEY,
    stars_ime     TEXT,
    stars_priimek TEXT,
    stars_mail    TEXT,
    stars_naslov  TEXT,
    stars_telefon TEXT
);

   

-- Table: racun
CREATE TABLE racun (
    racun_id      INTEGER PRIMARY KEY
                          NOT NULL,
    otrok         INTEGER REFERENCES otrok (otrok_id),
    racun_datum   DATE    NOT NULL,
    datum_placila DATE,
    znesek        DECIMAL,
    UNIQUE (
        otrok,
        racun_datum
    )
);

--Table: vadnina
CREATE TABLE vadnina (
    racun INTEGER REFERENCES racun (racun_id) 
                  UNIQUE,
    otrok INTEGER REFERENCES otrok (otrok_id) 
);

--Table: je_splezal
CREATE TABLE je_splezal (
    nacin                  TEXT,
    datum_preplezane_smeri DATE,
    otrok                  INTEGER REFERENCES otrok (otrok_id),
    smer                   INTEGER REFERENCES smer (smer_id),
    PRIMARY KEY (
        otrok,
        smer
    )
);


-- Table: smer
CREATE TABLE smer (
    smer_id    INTEGER PRIMARY KEY,
    smer_ime   TEXT,
    tezavnost  TEXT    REFERENCES plezalisce (plezalisce_id),
    plezalisce INTEGER REFERENCES plezalisce (plezalisce_id) 
);


--Table: se nahaja
CREATE TABLE se_nahaja (
    smer       INTEGER REFERENCES smer (smer_id) 
                       UNIQUE,
    plezalisce INTEGER REFERENCES plezalisce (plezalisce_id) 
);


-- Table: plezalisce
CREATE TABLE plezalisce (
    plezalisce_id  INTEGER PRIMARY KEY,
    plezalisce_ime TEXT
);


--Table: kam
CREATE TABLE kam (
    plezalisce INTEGER REFERENCES plezalisce (plezalisce_id),
    izlet      INTEGER REFERENCES izlet (izlet_id),
    PRIMARY KEY (
        plezalisce,
        izlet
    )
);


-- Table: izlet
CREATE TABLE izlet (
    izlet_id    INTEGER PRIMARY KEY,
    izlet_datum DATE,
    plezalisce  INTEGER,
    FOREIGN KEY (
        plezalisce
    )
    REFERENCES plezalisce (id) 
);

-- Table: trener
CREATE TABLE trener (
    trener_id      INTEGER PRIMARY KEY,
    trener_ime     TEXT,
    trener_priimek TEXT,
    trener_mail    TEXT,
    trener_naslov  TEXT,
    trener_telefon TEXT
);

-- Table: vodi
CREATE TABLE vodi (
    skupina  REFERENCES skupina (skupina_id) 
             UNIQUE,
    trener   REFERENCES trener (trener_id) 
);

-- Table: skupina
CREATE TABLE skupina (
    skupina_id        INTEGER PRIMARY KEY,
    skupina_ime       TEXT,
    stevilo_treningov INTEGER,
    trener            INTEGER REFERENCES trener (trener_id) 
);

-- Table: pripada
CREATE TABLE pripada (
    otrok   INTEGER REFERENCES otrok (otrok_id),
    skupina INTEGER REFERENCES skupina (skupina_id),
    PRIMARY KEY (
        otrok,
        skupina
    )
);

-- Table: za
CREATE TABLE za (
    racun INTEGER REFERENCES racun (racun_id) 
                  UNIQUE,
    izlet INTEGER REFERENCES izlet (izlet_id) 
);

COMMIT TRANSACTION;













