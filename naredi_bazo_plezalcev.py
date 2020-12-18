import json
import os
import sqlite3


conn = sqlite3.connect('plezalci.db')
cur = conn.cursor()


def ustvari_tabelo_otrok(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS otrok (
        id         INTEGER PRIMARY KEY AUTOINCREMENT,
        ime        TEXT,
        priimek    TEXT,
        datum_rojstva    DATE,
        leto_vpisa DATE
    );
    '''
    conn.execute(sql)

def napolni_tabelo_otrok(conn, plezalci):
    #print(plezalci["otrok"])
    for otrok in plezalci["otrok"]:
        sql = '''
            INSERT or REPLACE INTO otrok
            (id, ime, priimek, datum_rojstva, leto_vpisa)
            VALUES
            (?, ?, ?, ?, ?)
            '''
        parametri = [
            otrok['id'],
            otrok['ime'],
            otrok['priimek'],
            otrok['datum_rojstva'],
            otrok['leto_vpisa'],
        ]
        conn.execute(sql, parametri)
    
def ustvari_tabelo_stars(conn):
     sql = '''
        CREATE TABLE IF NOT EXISTS stars (
        id      INTEGER PRIMARY KEY,
        ime     TEXT,
        priimek TEXT,
        mail    TEXT,
        naslov  TEXT,
        telefon TEXT
        );
    '''   
     conn.execute(sql)

def napolni_tabelo_stars(conn, plezalci):
    for stars in plezalci["stars"]:
        sql = '''
        INSERT or REPLACE INTO stars
        (id, ime, priimek, mail, naslov, telefon)
        VALUES
        (?, ?, ?, ?, ?, ?)
        '''
        parametri = [
            stars['id'],
            stars['ime'],
            stars['priimek'],
            stars['mail'],
            stars['naslov'],
            stars['telefon'],
        ]
        conn.execute(sql, parametri) 


def ustvari_tabelo_plezalisce(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS plezalisce (
        id  INTEGER PRIMARY KEY,
        ime TEXT
    );
        '''
    conn.execute(sql)

def napolni_tabelo_plezalisce(conn, plezalci):
    for plezalisce in plezalci["plezalisce"]:
        if "id" in plezalisce.keys():
            sql = '''
            INSERT or REPLACE INTO plezalisce
            (id, ime)
            VALUES
            (?, ?)
            '''
            parametri = [
                plezalisce['id'],
                plezalisce['ime']
            ]
            conn.execute(sql, parametri)
        

def ustvari_tabelo_izlet(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS izlet (
        id      INTEGER PRIMARY KEY,
        datum   DATE,
        plezalisce INTEGER REFERENCES plezalisce (id),
        ime        TEXT
    );
    '''
    conn.execute(sql)

def napolni_tabelo_izlet(conn, plezalci):
    for izlet in plezalci["izlet"]:
        if "id" in izlet.keys():
            sql = '''
            INSERT or REPLACE INTO izlet
            (id, datum, plezalisce, ime)
            VALUES
            (?, ?, ?, ?)
            '''
            parametri = [
                izlet['id'],
                izlet['datum'],
                izlet['plezalisce'],
                izlet['ime']
            ]
            conn.execute(sql, parametri)


def ustvari_tabelo_je_splezal(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS je_splezal (
        nacin                  TEXT,
        datum_preplezane_smeri DATE,
        otrok                  INTEGER REFERENCES otrok (id),
        smer                   INTEGER REFERENCES smer (id),
        PRIMARY KEY (
            otrok,
            smer
        )
    );

    '''
    conn.execute(sql)


def napolni_tabelo_je_splezal(conn, plezalci):
    for je_splezal in plezalci["je_splezal"]:
        sql = '''
            INSERT or REPLACE INTO je_splezal
            (nacin, datum_preplezane_smeri, otrok, smer)
            VALUES
            (?, ?, ?, ?)
            '''
        parametri = [
            je_splezal['nacin'],
            je_splezal['datum_preplezane_smeri'],
            je_splezal['otrok'],
            je_splezal['smer']
        ]
        conn.execute(sql, parametri)
        
            


def ustvari_tabelo_pripada(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS pripada (
            otrok   INTEGER REFERENCES otrok (id),
            skupina INTEGER REFERENCES skupina (id)
        );
        '''
    conn.execute(sql)

def napolni_tabelo_pripada(conn, plezalci):
    for pripada in plezalci["pripada"]:
        sql = '''
            INSERT or REPLACE INTO pripada
            (otrok, skupina)
            VALUES
            (?, ?)
            '''
        parametri = [
            pripada['otrok'],
            pripada['skupina']
        ]
        conn.execute(sql, parametri)
        
    
def ustvari_tabelo_racun(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS racun (
            id      INTEGER PRIMARY KEY
                                NOT NULL,
            otrok         INTEGER REFERENCES otrok (id),
            datum   DATE    NOT NULL,
            placano BOOLEAN,
            znesek        DECIMAL,
            UNIQUE (
                otrok,
                datum
            )
        );

        '''
    conn.execute(sql)


def napolni_tabelo_racun(conn, plezalci):
    for racun in plezalci["racun"]:
        sql = '''
            INSERT or REPLACE INTO racun
            (id, otrok, datum, placano, znesek)
            VALUES
            (?, ?, ?, ?, ?)
            '''
        parametri = [
            racun['id'],
            racun['otrok'],
            racun['datum'],
            racun['placano'],
            racun['znesek'],
        ]
        conn.execute(sql, parametri)



def ustvari_tabelo_skrbnik(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS skrbnik (
            dobiva_maile BOOLEAN,
            otrok        INTEGER REFERENCES otrok (id),
            stars        INTEGER REFERENCES stars (id),
            PRIMARY KEY (
                otrok,
                stars
            )
        );
        '''
    conn.execute(sql)


def napolni_tabelo_skrbnik(conn, plezalci):
    for skrbnik in plezalci["skrbnik"]:
        sql = '''
            INSERT or REPLACE INTO skrbnik
            (dobiva_maile, otrok, stars)
            VALUES
            (?, ?, ?)
            '''
        parametri = [
            skrbnik['dobiva_maile'],
            skrbnik['otrok'],
            skrbnik['stars']
        ]
        conn.execute(sql, parametri)
            

def ustvari_tabelo_skupina(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS skupina (
            id                INTEGER PRIMARY KEY AUTOINCREMENT,
            ime               TEXT,
            stevilo_treningov INTEGER,
            trener            INTEGER REFERENCES trener (id) 

        );
        '''
    conn.execute(sql)


def napolni_tabelo_skupina(conn, plezalci):
    for skupina in plezalci["skupina"]:
        sql = '''
            INSERT or REPLACE INTO skupina
            (id, ime, stevilo_treningov, trener)
            VALUES
            (?, ?, ?,?)
            '''
        parametri = [
            skupina['id'],
            skupina['ime'],
            skupina['stevilo_treningov'],
            skupina['trener']
        ]
        conn.execute(sql, parametri)


def ustvari_tabelo_smer(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS smer (
            id         INTEGER PRIMARY KEY,
            ime        TEXT,
            plezalisce INTEGER REFERENCES plezalisce (id),
            tezavnost  TEXT 
        );
        '''
    conn.execute(sql)

def napolni_tabelo_smer(conn, plezalci):
    for smer in plezalci["smer"]:
        sql = '''
            INSERT or REPLACE INTO smer
            (id, ime, plezalisce, tezavnost)
            VALUES
            (?, ?, ?, ?)
            '''
        parametri = [
            smer['id'],
            smer['ime'],
            smer['plezalisce'],
            smer['tezavnost']
        ]
        conn.execute(sql, parametri)
    


def ustvari_tabelo_trener(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS trener (
            id      INTEGER PRIMARY KEY,
            ime     TEXT,
            priimek TEXT,
            mail    TEXT,
            naslov  TEXT,
            telefon TEXT
        );
        '''
    conn.execute(sql)

def napolni_tabelo_trener(conn, plezalci):
    for trener in plezalci["trener"]:
        if "trener_id" in trener.keys():
            sql = '''
                INSERT or REPLACE INTO trener
                (id, ime, priimek, mail, naslov, telefon)
                VALUES
                (?, ?, ?, ?, ?, ?)
                '''
            parametri = [
                trener['id'],
                trener['ime'],
                trener['priimek'],
                trener['mail'],
                trener['naslov'],
                trener['telefon'],
            ]
            conn.execute(sql, parametri)


 



def ustvari_tabele(conn):
    ustvari_tabelo_otrok(conn)
    ustvari_tabelo_stars(conn)
    ustvari_tabelo_plezalisce(conn)
    ustvari_tabelo_izlet(conn)
    ustvari_tabelo_je_splezal(conn)
    ustvari_tabelo_pripada(conn)
    ustvari_tabelo_racun(conn)
    ustvari_tabelo_skrbnik(conn)
    ustvari_tabelo_skupina(conn)
    ustvari_tabelo_smer(conn)
    ustvari_tabelo_trener(conn)
    print('TABELE USTVARJENE')

def napolni_tabele(conn, plezalci):
    napolni_tabelo_otrok(conn, plezalci)
    napolni_tabelo_stars(conn, plezalci)
    napolni_tabelo_plezalisce(conn, plezalci)
    napolni_tabelo_izlet(conn, plezalci)
    napolni_tabelo_je_splezal(conn, plezalci)
    napolni_tabelo_pripada(conn, plezalci)
    napolni_tabelo_racun(conn, plezalci)
    napolni_tabelo_skrbnik(conn, plezalci)
    napolni_tabelo_skupina(conn, plezalci)
    napolni_tabelo_smer(conn, plezalci)
    napolni_tabelo_trener(conn, plezalci)
    conn.commit() # da se vse zabeleži v database
    print('TABELE NAPOLNJENE')



def naredi_bazo_plezalcev(ime_json_datoteke, ime_sqlite_datoteke):
    with open(ime_json_datoteke) as json_datoteka:
        plezalci = json.load(json_datoteka)
    conn = sqlite3.connect(ime_sqlite_datoteke)
    ustvari_tabele(conn) # potrebuje samo dostop do baze = conn
    napolni_tabele(conn, plezalci) # potrebuje dostop do baze in podatke

naredi_bazo_plezalcev('plezalci_json.json', 'plezalci_novi.sqlite')






