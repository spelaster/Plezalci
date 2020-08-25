import json
import os
import sqlite3


conn = sqlite3.connect('plezalci.db')
cur = conn.cursor()


def ustvari_tabelo_otrok(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS otrok (
        otrok_id      INTEGER PRIMARY KEY, 
        otrok_ime     TEXT,
        otrok_priimek TEXT,
        datum_rojstva DATE,
        leto_vpisa    DATE
    );
    '''
    conn.execute(sql)

def napolni_tabelo_otrok(conn, plezalci):
    for otrok in plezalci:
        sql = '''
        INSERT or REPLACE INTO otrok
        (otrok_id, otrok_ime, otrok_priimek, datum_rojstva, leto_vpisa)
        VALUES
        (?, ?, ?, ?, ?)
        '''
        parametri = [
            otrok['otrok_id'],
            otrok['otrok_ime'],
            otrok['otrok_priimek'],
            otrok['datum_rojstva'],
            otrok['leto_vpisa'],
        ]
        conn.execute(sql, parametri)
    
def ustvari_tabelo_stars(conn):
     sql = '''
        CREATE TABLE IF NOT EXISTS stars (
        stars_id      INTEGER PRIMARY KEY,
        stars_ime     TEXT,
        stars_priimek TEXT,
        stars_mail    TEXT,
        stars_naslov  TEXT,
        stars_telefon TEXT
        );
    '''   
     conn.execute(sql)

def napolni_tabelo_stars(conn, plezalci):
    for stars in plezalci:
        sql = '''
        INSERT or REPLACE INTO stars
        (stars_id, stars_ime, stars_priimek, stars_mail, stars_naslov, stars_telefon)
        VALUES
        (?, ?, ?, ?, ?, ?)
        '''
        parametri = [
            stars['stars_id'],
            stars['stars_ime'],
            stars['stars_priimek'],
            stars['stars_mail'],
            stars['stars_naslov'],
            stars['stars_telefon'],
        ]
        conn.execute(sql, parametri) 


def ustvari_tabelo_plezalisce(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS plezalisce (
        plezalisce_id  INTEGER PRIMARY KEY,
        plezalisce_ime TEXT
    );
        '''
    conn.execute(sql)

def napolni_tabelo_plezalisce(conn, plezalci):
    for plezalisce in plezalci:
        if "plezalisce_id" in plezalisce.keys():
            sql = '''
            INSERT or REPLACE INTO plezalisce
            (plezalisce_id, plezalisce_ime)
            VALUES
            (?, ?)
            '''
            parametri = [
                plezalisce['plezalisce_id'],
                plezalisce['plezalisce_ime']
            ]
            conn.execute(sql, parametri)
        

def ustvari_tabelo_izlet(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS izlet (
        izlet_id      INTEGER PRIMARY KEY,
        izlet_datum   DATE,
        plezalisce_id INTEGER REFERENCES plezalisce (plezalisce_id),
        FOREIGN KEY (
            plezalisce_id
        )
        REFERENCES plezalisce (id) 
    );
    '''
    conn.execute(sql)

def napolni_tabelo_izlet(conn, plezalci):
    for izlet in plezalci:
        if "izlet_id" in izlet.keys():
            sql = '''
            INSERT or REPLACE INTO izlet
            (izlet_id, izlet_datum, plezalisce_id)
            VALUES
            (?, ?, ?)
            '''
            parametri = [
                izlet['izlet_id'],
                izlet['izlet_datum'],
                izlet['plezalisce_id']
            ]
            conn.execute(sql, parametri)


def ustvari_tabelo_je_splezal(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS je_splezal (
        nacin                  TEXT,
        datum_preplezane_smeri DATE,
        otrok                  INTEGER REFERENCES otrok (otrok_id),
        smer                   INTEGER REFERENCES smer (smer_id),
        PRIMARY KEY (
            otrok,
            smer
        )
    );

    '''
    conn.execute(sql)


def napolni_tabelo_je_splezal(conn, plezalci):
    for je_splezal in plezalci:
        if "nacin" in je_splezal.keys():
            sql = '''
                INSERT or REPLACE INTO je_splezal
                (nacin, datum_preplezane_smeri, otrok, smer)
                VALUES
                (?, ?, ?, ?)
                '''
            parametri = [
                je_splezal['nacin'],
                je_splezal['datum_preplezane_smeri'],
                je_splezal['otrok_id'],
                je_splezal['smer_id']
            ]
            conn.execute(sql, parametri)
        elif "smer_id" in je_splezal.keys():
            sql = '''
                INSERT or REPLACE INTO je_splezal
                (datum_preplezane_smeri, otrok, smer)
                VALUES
                (?, ?, ?)
                '''
            parametri = [
                je_splezal['datum_preplezane_smeri'],
                je_splezal['otrok_id'],
                je_splezal['smer_id']
            ]
            conn.execute(sql, parametri)
        else:
            sql = '''
                INSERT or REPLACE INTO je_splezal
                (datum_preplezane_smeri, otrok)
                VALUES
                (?, ?)
                '''
            parametri = [
                je_splezal['datum_preplezane_smeri'],
                je_splezal['otrok_id']
            ]
            conn.execute(sql, parametri)
            
def ustvari_tabelo_kam(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS kam (
            plezalisce INTEGER REFERENCES plezalisce (plezalisce_id),
            izlet      INTEGER REFERENCES izlet (izlet_id),
            PRIMARY KEY (
                plezalisce,
                izlet
            )
        );

    '''
    conn.execute(sql)    

def napolni_tabelo_kam(conn, plezalci):
    for kam in plezalci:
        if "izlet_id" in kam.keys():
            sql = '''
            INSERT or REPLACE INTO kam
            (izlet, plezalisce)
            VALUES
            (?, ?)
            '''
            parametri = [
                kam['izlet_id'],
                kam['plezalisce_id']
            ]
            conn.execute(sql, parametri)
        elif "plezalisce_id" in kam.keys():
            sql = '''
            INSERT or REPLACE INTO kam
            (plezalisce)
            VALUES
            (?)
            '''
            parametri = [
                kam['plezalisce_id']
            ]
            conn.execute(sql, parametri)

def ustvari_tabelo_pripada(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS pripada (
            otrok   INTEGER REFERENCES otrok (otrok_id),
            skupina INTEGER REFERENCES skupina (skupina_id),
            PRIMARY KEY (
                otrok,
                skupina
            )
        );
        '''
    conn.execute(sql)

def napolni_tabelo_pripada(conn, plezalci):
    for pripada in plezalci:
        if "skupina_id" in pripada.keys():
            sql = '''
            INSERT or REPLACE INTO pripada
            (otrok, skupina)
            VALUES
            (?, ?)
            '''
            parametri = [
                pripada['otrok_id'],
                pripada['skupina_id']
            ]
            conn.execute(sql, parametri)
        else: 
            sql = '''
            INSERT or REPLACE INTO pripada
            (otrok)
            VALUES
            (?)
            '''
            parametri = [
                pripada['otrok_id']
            ]
            conn.execute(sql, parametri)

    
def ustvari_tabelo_racun(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS racun (
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

        '''
    conn.execute(sql)


def napolni_tabelo_racun(conn, plezalci):
    for racun in plezalci:
        sql = '''
            INSERT or REPLACE INTO racun
            (racun_id, otrok, racun_datum, datum_placila, znesek)
            VALUES
            (?, ?, ?, ?, ?)
            '''
        parametri = [
            racun['racun_id'],
            racun['otrok_id'],
            racun['racun_datum'],
            racun['datum_placila'],
            racun['znesek'],
        ]
        conn.execute(sql, parametri)

def ustvari_tabelo_se_nahaja(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS se_nahaja (
            smer       INTEGER REFERENCES smer (smer_id) 
                            UNIQUE,
            plezalisce INTEGER REFERENCES plezalisce (plezalisce_id) 
        );
        '''
    conn.execute(sql)

def napolni_tabelo_se_nahaja(conn, plezalci):
    for se_nahaja in plezalci:
        if "plezalisce_id" in se_nahaja.keys():
            sql = '''
                INSERT or REPLACE INTO se_nahaja
                (smer, plezalisce)
                VALUES
                (?, ?)
                '''
            parametri = [
                se_nahaja['smer_id'],
                se_nahaja['plezalisce_id'],
            ]
            conn.execute(sql, parametri)
        elif "smer_id" in se_nahaja.keys():
            sql = '''
                INSERT or REPLACE INTO se_nahaja
                (smer)
                VALUES
                (?)
                '''
            parametri = [
                se_nahaja['smer_id'],
            ]
            conn.execute(sql, parametri)


def ustvari_tabelo_skrbnik(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS skrbnik (
            dobiva_maile TEXT,
            otrok        INTEGER REFERENCES otrok (otrok_id),
            stars        INTEGER REFERENCES stars (stars_id),
            PRIMARY KEY (
                otrok,
                stars
            )
        );
        '''
    conn.execute(sql)


def napolni_tabelo_skrbnik(conn, plezalci):
    for skrbnik in plezalci:
        sql = '''
            INSERT or REPLACE INTO skrbnik
            (dobiva_maile, otrok, stars)
            VALUES
            (?, ?, ?)
            '''
        parametri = [
            skrbnik['dobiva_maile'],
            skrbnik['otrok_id'],
            skrbnik['stars_id']
        ]
        conn.execute(sql, parametri)
            

def ustvari_tabelo_skupina(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS skupina (
            skupina_id        INTEGER PRIMARY KEY,
            skupina_ime       TEXT,
            stevilo_treningov INTEGER,
            trener            INTEGER REFERENCES trener (trener_id) 
        );
        '''
    conn.execute(sql)


def napolni_tabelo_skupina(conn, plezalci):
    for skupina in plezalci:
        if "trener_id" in skupina.keys():
            sql = '''
                INSERT or REPLACE INTO skupina
                (skupina_id, skupina_ime, stevilo_treningov, trener)
                VALUES
                (?, ?, ?,?)
                '''
            parametri = [
                skupina['skupina_id'],
                skupina['skupina_ime'],
                skupina['stevilo_treningov'],
                skupina['trener_id']
            ]
            conn.execute(sql, parametri)
        elif "skupina_id" in skupina.keys():
            sql = '''
                INSERT or REPLACE INTO skupina
                (skupina_id, skupina_ime, stevilo_treningov)
                VALUES
                (?, ?, ?)
                '''
            parametri = [
                skupina['skupina_id'],
                skupina['skupina_ime'],
                skupina['stevilo_treningov'],
            ]
            conn.execute(sql, parametri)

def ustvari_tabelo_smer(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS smer (
            smer_id    INTEGER PRIMARY KEY,
            smer_ime   TEXT,
            plezalisce INTEGER REFERENCES plezalisce (plezalisce_id) 
        );
        '''
    conn.execute(sql)

def napolni_tabelo_smer(conn, plezalci):
    for smer in plezalci:
        if "plezalisce_id" in smer.keys():
            sql = '''
                INSERT or REPLACE INTO smer
                (smer_id, smer_ime, plezalisce)
                VALUES
                (?, ?, ?)
                '''
            parametri = [
                smer['smer_id'],
                smer['smer_ime'],
                smer['plezalisce_id']
            ]
            conn.execute(sql, parametri)
        elif "smer_id" in smer.keys():
            sql = '''
                INSERT or REPLACE INTO smer
                (smer_id, smer_ime)
                VALUES
                (?, ?)
                '''
            parametri = [
                smer['smer_id'],
                smer['smer_ime'],
            ]
            conn.execute(sql, parametri)


def ustvari_tabelo_trener(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS trener (
            trener_id      INTEGER PRIMARY KEY,
            trener_ime     TEXT,
            trener_priimek TEXT,
            trener_mail    TEXT,
            trener_naslov  TEXT,
            trener_telefon TEXT
        );
        '''
    conn.execute(sql)

def napolni_tabelo_trener(conn, plezalci):
    for trener in plezalci:
        if "trener_id" in trener.keys():
            sql = '''
                INSERT or REPLACE INTO trener
                (trener_id, trener_ime, trener_priimek, trener_mail, trener_naslov, trener_telefon)
                VALUES
                (?, ?, ?, ?, ?, ?)
                '''
            parametri = [
                trener['trener_id'],
                trener['trener_ime'],
                trener['trener_priimek'],
                trener['trener_mail'],
                trener['trener_naslov'],
                trener['trener_telefon'],
            ]
            conn.execute(sql, parametri)

def ustvari_tabelo_vadnina(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS vadnina (
            racun INTEGER REFERENCES racun (racun_id) 
                        UNIQUE,
            otrok INTEGER REFERENCES otrok (otrok_id) 
        );

        '''
    conn.execute(sql)

def napolni_tabelo_vadnina(conn, plezalci):
    for vadnina in plezalci:
        sql = '''
            INSERT or REPLACE INTO vadnina
            (racun, otrok)
            VALUES
            (?, ?)
            '''
        parametri = [
            vadnina['racun_id'],
            vadnina['otrok_id']
        ]
        conn.execute(sql, parametri) 


def ustvari_tabelo_vodi(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS vodi (
            skupina  REFERENCES skupina (skupina_id) 
                    UNIQUE,
            trener   REFERENCES trener (trener_id) 
        );
        '''
    conn.execute(sql)

def napolni_tabelo_vodi(conn, plezalci):
    for vodi in plezalci:
        if "trener_id" in vodi.keys():
            sql = '''
                INSERT or REPLACE INTO vodi
                (skupina, trener)
                VALUES
                (?, ?)
                '''
            parametri = [
                vodi['skupina_id'],
                vodi['trener_id']
            ]
            conn.execute(sql, parametri) 
        elif "skupina_id" in vodi.keys():
            sql = '''
                INSERT or REPLACE INTO vodi
                (skupina)
                VALUES
                (?)
                '''
            parametri = [
                vodi['skupina_id']
            ]
            conn.execute(sql, parametri) 


def ustvari_tabelo_za(conn):
    sql = '''
        CREATE TABLE IF NOT EXISTS za (
            racun INTEGER REFERENCES racun (racun_id) 
                        UNIQUE,
            izlet INTEGER REFERENCES izlet (izlet_id) 
        );
        '''
    conn.execute(sql)

def napolni_tabelo_za(conn, plezalci):
    for za in plezalci:
        if "izlet_id" in za.keys():
            sql = '''
                INSERT or REPLACE INTO za
                (racun, izlet)
                VALUES
                (?, ?)
                '''
            parametri = [
                za['racun_id'],
                za['izlet_id']
            ]
            conn.execute(sql, parametri) 
        else:
            sql = '''
                INSERT or REPLACE INTO za
                (racun)
                VALUES
                (?)
                '''
            parametri = [
                za['racun_id']
            ]
            conn.execute(sql, parametri) 

def ustvari_tabele(conn):
    ustvari_tabelo_otrok(conn)
    ustvari_tabelo_stars(conn)
    ustvari_tabelo_plezalisce(conn)
    ustvari_tabelo_izlet(conn)
    ustvari_tabelo_je_splezal(conn)
    ustvari_tabelo_kam(conn)
    ustvari_tabelo_pripada(conn)
    ustvari_tabelo_racun(conn)
    ustvari_tabelo_se_nahaja(conn)
    ustvari_tabelo_skrbnik(conn)
    ustvari_tabelo_skupina(conn)
    ustvari_tabelo_smer(conn)
    ustvari_tabelo_trener(conn)
    ustvari_tabelo_vadnina(conn)
    ustvari_tabelo_vodi(conn)
    ustvari_tabelo_za(conn)
    print('TABELE USTVARJENE')

def napolni_tabele(conn, plezalci):
    napolni_tabelo_otrok(conn, plezalci)
    napolni_tabelo_stars(conn, plezalci)
    napolni_tabelo_plezalisce(conn, plezalci)
    napolni_tabelo_izlet(conn, plezalci)
    napolni_tabelo_je_splezal(conn, plezalci)
    napolni_tabelo_kam(conn, plezalci)
    napolni_tabelo_pripada(conn, plezalci)
    napolni_tabelo_racun(conn, plezalci)
    napolni_tabelo_se_nahaja(conn, plezalci)
    napolni_tabelo_skrbnik(conn, plezalci)
    napolni_tabelo_skupina(conn, plezalci)
    napolni_tabelo_smer(conn, plezalci)
    napolni_tabelo_trener(conn, plezalci)
    napolni_tabelo_vadnina(conn, plezalci)
    napolni_tabelo_vodi(conn, plezalci)
    napolni_tabelo_za(conn, plezalci)
    conn.commit() # da se vse zabeleži v database
    print('TABELE NAPOLNJENE')



def naredi_bazo_plezalcev(ime_json_datoteke, ime_sqlite_datoteke):
    #neki
    with open(ime_json_datoteke) as json_datoteka:
        plezalci = json.load(json_datoteka)
    conn = sqlite3.connect(ime_sqlite_datoteke)
    ustvari_tabele(conn) # potrebuje samo dostop do baze = conn
    napolni_tabele(conn, plezalci) # potrebuje dostop do baze in podatke

naredi_bazo_plezalcev('plezalci_json.json', 'plezalci-ustvarjeni.sqlite')




# def napolni_tabele(conn, plezalci):
#     for plezalec in plezalci:
#         dodaj_otroka(conn, plezalec['otrok'])
#         dodaj_starsa(conn, plezalec['stars'])
#         dodaj_trenerja(conn, plezalec['trener'])
#         dodaj_skupino(conn, plezalec['skupina'])
#         dodaj_plezalisce(conn, plezalec['plezalisce'])
#         dodaj_racun(conn, plezalec['racun'])
#         dodaj_izlet(conn, plezalec['izlet'])
#         dodaj_smer(conn, plezalec['smer'])
#         dodaj_je_splezal(conn, plezalec['je_splezal'])
#         dodaj_skrbnika(conn, plezalec['skrbnik'])

#         dodaj_podatke_plezalca(conn, plezalec)
#     conn.commit()


    

# def naredi_bazo_plezalcev(pobrisi_ce_obstaja=False):
#     IME_DATOTEKE_Z_BAZO = '../plezalci.sqlite'
#     IME_DATOTEKE_Z_SQL_UKAZI = 'plezalci.sql'
#     IME_DATOTEKE_S_PODATKI = 'plezalci_json.json' #, encoding="utf8" # 'plezalci_json.json'
#     # Naredimo prazno bazo
#     if os.path.exists(IME_DATOTEKE_Z_BAZO):
#         if pobrisi_ce_obstaja:
#             os.remove(IME_DATOTEKE_Z_BAZO)
#         else:
#             print('Baza že obstaja in je ne bom spreminjal.')
#             return
#     conn = sqlite3.connect(IME_DATOTEKE_Z_BAZO)
#     # Ustvarimo tabele iz DDL datoteke
#     with open(IME_DATOTEKE_Z_SQL_UKAZI) as datoteka_z_sql_ukazi:
#         ddl = datoteka_z_sql_ukazi.read()
#         conn.executescript(ddl)
#     # Naložimo podatke o plezalcih
#     with open(IME_DATOTEKE_S_PODATKI,encoding='cp1252') as datoteka_s_podatki:
#         plezalci = json.load(datoteka_s_podatki)
#     napolni_tabele(conn, plezalci)
#     conn.execute('VACUUM')


# naredi_bazo_plezalcev(pobrisi_ce_obstaja=True)





