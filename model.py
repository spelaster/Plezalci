import baza
import sqlite3
from geslo import sifriraj_geslo, preveri_geslo

conn = sqlite3.connect('plezalci.db')
baza.ustvari_bazo_ce_ne_obstaja(conn)
conn.execute('PRAGMA foreign_keys = ON')

uporabnik = baza.pripravi_tabele(conn)

class LoginError(Exception):
    """
    Napaka ob napačnem uporabniškem imenu ali geslu.
    """
    pass

class Uporabnik:
    """
    Razred za uporabnika.
    """

    insert = uporabnik.dodajanje(["ime", "zgostitev", "sol"])

    def __init__(self, ime, id=None):
        """
        Konstruktor uporabnika.
        """
        self.id = id
        self.ime = ime

    def __str__(self):
        """
        Znakovna predstavitev uporabnika.

        Vrne uporabniško ime.
        """
        return self.ime

    @staticmethod
    def prijava(ime, geslo):
        """
        Preveri, ali sta uporabniško ime geslo pravilna.
        """
        sql = """
            SELECT ime, zgostitev, sol FROM uporabnik
            WHERE ime = ?
        """
        # SELECT id, zgostitev
        try:
            #id, zgostitev
            ime, zgostitev, sol = conn.execute(sql, [ime]).fetchone()
            if preveri_geslo(geslo, zgostitev, sol):
                return Uporabnik(ime, ime) #(ime, id)
        except TypeError:
            pass
        raise LoginError(ime)

    def dodaj_v_bazo(self, geslo):
        """
        V bazo doda uporabnika s podanim geslom.
        """
        assert self.id is None
        zgostitev, sol = sifriraj_geslo(geslo)
        with conn:
            self.id = uporabnik.dodaj_vrstico(
                [self.ime, zgostitev, sol],
                self.insert
            )
class Stars:
    def __init__(self, ime, priimek, id = None):
        """Konstruktor stars"""
        self.ime = ime
        self.priimek = priimek

    def __str__(self):
        """ Znakovna predstavitev starsa, njegovo ime in priimek. """
        return self.ime + " " + self.priimek


class Otrok:

    def __init__(self, ime, id=None):
        """
        Konstruktor otroka.
        """
        self.id = id
        self.ime = ime
    

    def __str__(self):
        """
        Znakovna predstavitev otroka.

        Vrne ime otroka
        """
        return self.ime

    
    @staticmethod
    def po_crkah(crka):
        
        '''Vrne otroke na isto črko. '''
        sql = """SELECT ime
                FROM otrok
                WHERE ime LIKE ? """
        for ime in conn.execute(sql, [crka + '%']):
            yield Otrok(ime = ime)
            

    @staticmethod
    def tab_crk():
        "Vrne niz zacetnic imen otrok"
        tab = []
        sql = """SELECT SUBSTR(ime, 1, 1) 
                FROM otrok
                GROUP BY SUBSTR(ime, 1, 1);"""
        for crka in conn.execute(sql):
            tab.append(crka[0])       
        return tab

    @staticmethod
    def stevilo_otrok(): 
        sql = 'SELECT COUNT(*) FROM otrok'
        (st_otrok,) = conn.execute(sql).fetchone()
        return st_otrok

    @staticmethod
    def seznam_otrok(): 
        otroci = []
        sql = 'SELECT ime, priimek FROM otrok'
        for ime, priimek in conn.execute(sql):
            otroci.append(ime)
        return otroci

    @staticmethod
    def poisci_otroka(niz): 
        sql = 'SELECT ime FROM otrok WHERE ime LIKE ?'
        for ime in conn.execute(sql, ['%' + niz + '%']):
            yield Otrok(ime = ime)

class Skupina:

    def __init__(self, ime, id=None):
        """
        Konstruktor skupine.
        """
        self.id = id
        self.ime = ime
    

    def __str__(self):
        """
        Znakovna predstavitev skupine.

        Vrne ime skupine
        """
        return self.ime

    
    @staticmethod
    def po_crkah(crka):
        
        '''Vrne skupine na isto črko. '''
        sql = """SELECT ime
                FROM skupina
                WHERE ime LIKE ? """
        for ime in conn.execute(sql, [crka + '%']):
            yield Skupina(ime = ime)
            

    @staticmethod
    def tab_crk():
        "Vrne niz zacetnic imen skupin"
        tab = []
        sql = """SELECT SUBSTR(ime, 1, 1) 
                FROM skupina
                GROUP BY SUBSTR(ime, 1, 1);"""
        for crka in conn.execute(sql):
            tab.append(crka[0])       
        return tab

    @staticmethod
    def stevilo_skupin(): 
        sql = 'SELECT COUNT(*) FROM skupina'
        (st_skupin,) = conn.execute(sql).fetchone()
        return st_skupin

    @staticmethod
    def seznam_skupin(): 
        skupine = []
        sql = 'SELECT ime FROM skupina'
        for ime in conn.execute(sql):
            skupine.append(ime) 
        return skupine
    
    @staticmethod
    def podatki_skupine(niz):
        
        '''Vrne podatke o otrocih dane skupine. '''
        sql = """SELECT ime, priimek, datum_rojstva, leto_vpisa
                FROM otrok
                JOIN pripada ON (otrok.id = pripada.otrok)
                JOIN skupina ON (skupina.id = pripada.skupina)
                WHERE skupina.ime LIKE ? """
        for ime in conn.execute(sql, [niz + '%']):
            yield Skupina(ime = ime)
    

    @staticmethod
    def poisci_skupino(niz): 
        sql = 'SELECT ime FROM skupina WHERE ime LIKE ?'
        for ime in conn.execute(sql, ['%' + niz + '%']):
            yield Skupina(ime = ime)

