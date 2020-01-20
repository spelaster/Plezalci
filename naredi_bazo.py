import csv

with open(preglednica_podatki) as dat:
    for vrstica in csv.DictReader(dat):
        conn.execute('INSERT ... ? ? ? ', [vrstica['Ime in priimek'], vrstica['telefon'], ...])