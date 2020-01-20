import csv

def dodaj_skupino(conn, oznaka_skupine):
    sql = '''
    INSERT INTO oznaka_skupine
    (id)
    VALUES
    (?)
    '''
    parametri = [
        oznaka_skupine,
    ]
    cur = conn.execute(sql, parametri)
    id_skupine = cur.lastrowid
    return id_skupine

with open('preglednica_podatki.csv') as datoteka:
    podatki = csv.DictReader(datoteka) # zapiše posamezno vrstico kot slovar, kjer je ključ besedilo iz posameznega stolpca prve vrstice, 
    # vrednost pa besedilo pripadajočega stolpca trenutne vrstice
    skupine = {}
    for vrstica in podatki:
        oznaka_skupine = vrstica['skupina']
        if oznaka_skupine in skupine:
            id_skupine = skupine[oznaka_skupine]
        else:
            id_skupine = dodaj_skupino(conn, oznaka_skupine)
            skupine[oznaka_skupine] = id_skupine
        sql = '''
            INSERT INTO otrok (id, ime, priimek, datum_rojstva, leto_vpisa)
            VALUES (?, ?, ?, ?, ?)
        '''
        parametri = [
            vrstica['id'],
            vrstica['ime'],
            vrstica['priimek'],
            vrstica['datum_rojstva'],
            vrstica['leto_vpisa'],
        ])
        cur = conn.execute(sql, parametri)
        id_otroka = cur.lastrowid
        sql = '''
            INSERT INTO pripada (otrok, skupina) 
            VALUES (?, ?)
            '''
        parametri = [
            vrstica['otrok_id'],
            vrstica['skupina_id'],
        ]

        
    conn.commit()