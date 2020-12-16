--
-- File generated with SQLiteStudio v3.2.1 on sre. dec. 16 12:26:20 2020
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: izlet
DROP TABLE IF EXISTS izlet;

CREATE TABLE izlet (
    id         INTEGER PRIMARY KEY,
    datum      DATE,
    plezalisce INTEGER REFERENCES plezalisce (id),
    ime        TEXT
);

INSERT INTO izlet (
                      id,
                      datum,
                      plezalisce,
                      ime
                  )
                  VALUES (
                      501,
                      '4/10/18',
                      701,
                      'Popoldanski izlet v Preddvor'
                  );

INSERT INTO izlet (
                      id,
                      datum,
                      plezalisce,
                      ime
                  )
                  VALUES (
                      502,
                      '8/7/19',
                      702,
                      'Plezalni tabor v Bohinju'
                  );

INSERT INTO izlet (
                      id,
                      datum,
                      plezalisce,
                      ime
                  )
                  VALUES (
                      503,
                      '7/7/19',
                      703,
                      'Plezalni tabor v Bohinju'
                  );

INSERT INTO izlet (
                      id,
                      datum,
                      plezalisce,
                      ime
                  )
                  VALUES (
                      504,
                      '7/9/19',
                      704,
                      'Vikend izlet v Kotečnik'
                  );

INSERT INTO izlet (
                      id,
                      datum,
                      plezalisce,
                      ime
                  )
                  VALUES (
                      505,
                      '10/15/19',
                      705,
                      'Celodnevni izlet na Primorsko'
                  );

INSERT INTO izlet (
                      id,
                      datum,
                      plezalisce,
                      ime
                  )
                  VALUES (
                      506,
                      '6/7/20',
                      706,
                      'Plezalni tabor v Bohinju'
                  );

INSERT INTO izlet (
                      id,
                      datum,
                      plezalisce,
                      ime
                  )
                  VALUES (
                      507,
                      '5/24/20',
                      708,
                      'Popoldanski izlet v Kamnitnik'
                  );

INSERT INTO izlet (
                      id,
                      datum,
                      plezalisce,
                      ime
                  )
                  VALUES (
                      508,
                      '10/7/20',
                      709,
                      'Plezalni tabor v Bohinju'
                  );

INSERT INTO izlet (
                      id,
                      datum,
                      plezalisce,
                      ime
                  )
                  VALUES (
                      509,
                      '6/6/19',
                      707,
                      'Celodnevni izlet na Primorsko'
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

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '7/7/19',
                           30,
                           605
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '7/7/19',
                           31,
                           606
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '7/7/19',
                           32,
                           607
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/7/19',
                           33,
                           608
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '7/7/19',
                           34,
                           637
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/7/19',
                           35,
                           638
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '7/7/19',
                           36,
                           639
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/7/19',
                           37,
                           640
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '7/7/19',
                           38,
                           641
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/7/19',
                           39,
                           608
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/7/19',
                           40,
                           637
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '8/7/19',
                           41,
                           628
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '8/7/19',
                           42,
                           629
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '8/7/19',
                           13,
                           630
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '8/7/19',
                           5,
                           631
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '8/7/19',
                           55,
                           632
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '8/7/19',
                           22,
                           633
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '8/7/19',
                           19,
                           634
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '8/7/19',
                           20,
                           635
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '8/7/19',
                           21,
                           636
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '8/7/19',
                           22,
                           628
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '8/7/19',
                           23,
                           629
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '8/7/19',
                           24,
                           630
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '8/7/19',
                           25,
                           631
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '8/7/19',
                           26,
                           632
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '8/7/19',
                           27,
                           633
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '8/7/19',
                           28,
                           634
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '8/7/19',
                           29,
                           635
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '8/7/19',
                           44,
                           636
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '6/7/20',
                           50,
                           660
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/7/20',
                           51,
                           661
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '6/7/20',
                           52,
                           662
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/7/20',
                           53,
                           663
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '6/7/20',
                           54,
                           664
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/7/20',
                           55,
                           665
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/7/20',
                           56,
                           666
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/7/20',
                           57,
                           667
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/7/20',
                           58,
                           668
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '6/7/20',
                           59,
                           669
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/7/20',
                           60,
                           670
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '6/7/20',
                           61,
                           660
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/7/20',
                           62,
                           661
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/7/20',
                           63,
                           662
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/7/20',
                           64,
                           663
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/7/20',
                           65,
                           664
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '6/7/20',
                           66,
                           665
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '6/7/20',
                           67,
                           666
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '6/7/20',
                           68,
                           667
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/7/20',
                           69,
                           668
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/7/20',
                           70,
                           669
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '6/7/20',
                           71,
                           670
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '10/7/19',
                           72,
                           678
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '10/7/19',
                           73,
                           679
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '10/7/19',
                           74,
                           680
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '10/7/19',
                           75,
                           681
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '10/7/19',
                           76,
                           678
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '10/7/19',
                           77,
                           679
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '10/7/19',
                           78,
                           680
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '10/7/19',
                           79,
                           681
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/6/19',
                           80,
                           671
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/6/19',
                           81,
                           672
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/6/19',
                           82,
                           673
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/6/19',
                           83,
                           674
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '6/6/19',
                           84,
                           671
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/6/19',
                           85,
                           672
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '6/6/19',
                           86,
                           673
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/6/19',
                           87,
                           674
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/6/19',
                           88,
                           671
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/6/19',
                           89,
                           672
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '6/6/19',
                           90,
                           673
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '6/6/19',
                           1,
                           674
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '6/6/19',
                           2,
                           674
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '6/6/19',
                           3,
                           674
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '5/24/20',
                           4,
                           675
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '5/24/20',
                           5,
                           676
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '5/24/20',
                           6,
                           677
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '5/24/20',
                           7,
                           675
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '5/24/20',
                           8,
                           676
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '5/24/20',
                           9,
                           677
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '5/24/20',
                           10,
                           677
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '5/24/20',
                           11,
                           676
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '10/15/19',
                           12,
                           655
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '10/15/19',
                           13,
                           656
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '10/15/19',
                           14,
                           657
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '10/15/19',
                           15,
                           658
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '10/15/19',
                           16,
                           659
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '10/15/19',
                           17,
                           655
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '10/15/19',
                           18,
                           656
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '10/15/19',
                           19,
                           657
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '10/15/19',
                           20,
                           658
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '7/9/19',
                           22,
                           642
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           23,
                           643
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           24,
                           644
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           25,
                           645
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           26,
                           646
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '7/9/19',
                           27,
                           647
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '7/9/19',
                           28,
                           648
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '7/9/19',
                           29,
                           649
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           30,
                           650
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           31,
                           651
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '7/9/19',
                           32,
                           652
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '7/9/19',
                           33,
                           653
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '7/9/19',
                           34,
                           654
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           35,
                           642
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '7/9/19',
                           36,
                           643
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           37,
                           644
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '7/9/19',
                           38,
                           645
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           39,
                           646
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '7/9/19',
                           40,
                           647
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           41,
                           648
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           42,
                           649
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           43,
                           650
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           44,
                           651
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '7/9/19',
                           45,
                           652
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           46,
                           653
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '7/9/19',
                           47,
                           654
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           48,
                           642
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           49,
                           643
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           50,
                           644
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '7/9/19',
                           51,
                           645
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '7/9/19',
                           52,
                           646
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '7/9/19',
                           53,
                           647
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '4/10/18',
                           29,
                           601
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '4/10/18',
                           30,
                           602
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '4/10/18',
                           31,
                           611
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '4/10/18',
                           32,
                           612
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '4/10/18',
                           33,
                           619
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '4/10/18',
                           34,
                           622
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '4/10/18',
                           35,
                           623
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '4/10/18',
                           36,
                           624
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '4/10/18',
                           37,
                           625
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '4/10/18',
                           38,
                           626
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '4/10/18',
                           39,
                           627
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '4/10/18',
                           40,
                           601
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '4/10/18',
                           41,
                           602
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '4/10/18',
                           42,
                           611
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '4/10/18',
                           43,
                           612
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '4/10/18',
                           44,
                           619
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '4/10/18',
                           45,
                           622
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '4/10/18',
                           46,
                           623
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '4/10/18',
                           47,
                           624
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '4/10/18',
                           48,
                           625
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na pogled',
                           '4/10/18',
                           49,
                           626
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'na Flash',
                           '4/10/18',
                           50,
                           627
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '4/10/18',
                           51,
                           625
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '4/10/18',
                           52,
                           626
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'z rdečo piko',
                           '4/16/16',
                           3,
                           603
                       );

INSERT INTO je_splezal (
                           nacin,
                           datum_preplezane_smeri,
                           otrok,
                           smer
                       )
                       VALUES (
                           'top rope',
                           '5/15/16',
                           4,
                           604
                       );


-- Table: otrok
DROP TABLE IF EXISTS otrok;

CREATE TABLE otrok (
    id            INTEGER PRIMARY KEY AUTOINCREMENT,
    ime           TEXT,
    priimek       TEXT,
    datum_rojstva DATE,
    leto_vpisa    DATE
);

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      1,
                      'Kristin',
                      'Corbin',
                      '9/16/06',
                      2015
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      2,
                      'Jeramy',
                      'Huggins',
                      '1/2/07',
                      2012
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      3,
                      'Marquita',
                      'Hatch',
                      '1/24/07',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      4,
                      'Nicola',
                      'Lanier',
                      '5/24/08',
                      2019
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      5,
                      'Tijuana',
                      'Livingston',
                      '7/12/08',
                      2014
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      6,
                      'Marylynn',
                      'Snider',
                      '10/23/08',
                      2016
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      7,
                      'Jesusa',
                      'Morrison',
                      '6/3/09',
                      2017
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      8,
                      'Alfred',
                      'Mcgrath',
                      '4/22/11',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      9,
                      'Onie',
                      'Rodriquez',
                      '7/7/11',
                      2019
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      10,
                      'Raul',
                      'Blue',
                      '7/30/11',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      11,
                      'Clemencia',
                      'Curran',
                      '2/25/12',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      12,
                      'Ahmed',
                      'Wesley',
                      '6/21/12',
                      2017
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      13,
                      'Ria',
                      'Frazier',
                      '6/8/11',
                      2018
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      14,
                      'Eve',
                      'Hedrick',
                      '10/8/14',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      15,
                      'Matthew',
                      'Myers',
                      '1/7/13',
                      2019
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      16,
                      'Rea',
                      'Winkler',
                      '3/7/96',
                      2018
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      17,
                      'Daphne',
                      'Mohr',
                      '6/23/96',
                      2014
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      18,
                      'Gianna',
                      'Pettit',
                      '8/21/96',
                      2019
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      19,
                      'Ruthe',
                      'Charles',
                      '10/18/96',
                      2019
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      20,
                      'Irvin',
                      'Keene',
                      '4/19/97',
                      2015
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      21,
                      'Leanora',
                      'Baldwin',
                      '11/22/97',
                      2019
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      22,
                      'Walker',
                      'Schmidt',
                      '12/23/99',
                      2015
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      23,
                      'Cassidy',
                      'Robinson',
                      '7/21/00',
                      2018
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      24,
                      'Katherine',
                      'Hays',
                      '12/11/01',
                      2016
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      25,
                      'Abbie',
                      'Galindo',
                      '1/23/03',
                      2014
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      26,
                      'Erlene',
                      'Koehler',
                      '3/21/03',
                      2013
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      27,
                      'Shela',
                      'Flowers',
                      '9/30/03',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      28,
                      'Annabell',
                      'Keys',
                      '2/18/04',
                      2016
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      29,
                      'Earleen',
                      'Bergeron',
                      '5/8/04',
                      2013
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      30,
                      'Eloise',
                      'Holland',
                      '3/5/05',
                      2019
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      31,
                      'Robt',
                      'Ritchie',
                      '3/13/05',
                      2014
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      32,
                      'Dorcas',
                      'Franks',
                      '3/19/05',
                      2016
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      33,
                      'Bianca',
                      'Maher',
                      '8/17/05',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      34,
                      'Sung',
                      'Langston',
                      '4/3/08',
                      2014
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      35,
                      'Ena',
                      'Mccoy',
                      '4/8/10',
                      2018
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      36,
                      'Sana',
                      'Meade',
                      '5/19/10',
                      2019
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      37,
                      'Bridgett',
                      'David',
                      '6/27/10',
                      2016
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      38,
                      'Fermina',
                      'Trejo',
                      '9/11/10',
                      2019
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      39,
                      'Milan',
                      'Cornell',
                      '3/26/12',
                      2017
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      40,
                      'Jay',
                      'Willis',
                      '9/21/13',
                      2019
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      41,
                      'Joye',
                      'Darling',
                      '12/13/13',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      42,
                      'Johnie',
                      'Goss',
                      '2/11/04',
                      2014
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      43,
                      'Latricia',
                      'Chu',
                      '9/17/01',
                      2018
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      44,
                      'Donny',
                      'Battle',
                      '9/15/02',
                      2017
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      45,
                      'Joan',
                      'Looney',
                      '12/14/02',
                      2017
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      46,
                      'Torie',
                      'Norris',
                      '3/5/03',
                      2016
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      47,
                      'Noe',
                      'Holden',
                      '7/24/03',
                      2015
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      48,
                      'Lennie',
                      'Chin',
                      '8/20/03',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      49,
                      'Ela',
                      'Hoskins',
                      '11/26/04',
                      2015
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      50,
                      'Jesenia',
                      'Weir',
                      '12/20/04',
                      2014
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      51,
                      'Juliette',
                      'Mcnamara',
                      '1/25/06',
                      2014
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      52,
                      'Lee',
                      'Bingham',
                      '2/17/06',
                      2013
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      53,
                      'Reyna',
                      'Goss',
                      '8/27/06',
                      2018
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      54,
                      'Olinda',
                      'Chatman',
                      '8/26/07',
                      2012
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      55,
                      'Lavern',
                      'Culver',
                      '1/5/08',
                      2018
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      56,
                      'Gwen',
                      'Grady',
                      '2/23/08',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      57,
                      'Claudie',
                      'Metz',
                      '3/10/09',
                      2013
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      58,
                      'Verena',
                      'Hinkle',
                      '3/15/09',
                      2017
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      59,
                      'Emile',
                      'Dunbar',
                      '5/23/09',
                      2016
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      60,
                      'Madge',
                      'Frost',
                      '11/5/09',
                      2014
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      61,
                      'Nubia',
                      'Bartley',
                      '4/10/10',
                      2016
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      62,
                      'Alvera',
                      'Murillo',
                      '10/6/10',
                      2019
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      63,
                      'Cyndy',
                      'Lunsford',
                      '3/25/11',
                      2019
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      64,
                      'Vanna',
                      'Gary',
                      '8/19/12',
                      2015
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      65,
                      'Liz',
                      'Stern',
                      '2/12/14',
                      2012
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      66,
                      'Janyce',
                      'Hooper',
                      '3/11/14',
                      2013
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      67,
                      'Roxana',
                      'Vargas',
                      '5/8/14',
                      2017
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      68,
                      'Coretta',
                      'Bain',
                      '9/12/12',
                      2015
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      69,
                      'Princess',
                      'Alvarez',
                      '12/21/12',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      70,
                      'Forest',
                      'Staton',
                      '3/29/02',
                      2018
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      71,
                      'Eloisa',
                      'Wolf',
                      '5/6/02',
                      2016
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      72,
                      'Carisa',
                      'Morton',
                      '12/30/02',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      73,
                      'Blondell',
                      'Lawson',
                      '5/9/03',
                      2012
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      74,
                      'Crista',
                      'Tackett',
                      '9/7/03',
                      2013
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      75,
                      'Cole',
                      'Tuttle',
                      '12/31/03',
                      2017
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      76,
                      'Allene',
                      'Dubois',
                      '3/25/04',
                      2017
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      77,
                      'Iona',
                      'Connelly',
                      '7/11/04',
                      2018
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      78,
                      'Idell',
                      'Matthews',
                      '10/17/04',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      79,
                      'Evelyn',
                      'Mejia',
                      '2/20/05',
                      2017
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      80,
                      'Avril',
                      'Hurd',
                      '5/3/05',
                      2012
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      81,
                      'Brigida',
                      'Ward',
                      '11/24/05',
                      2014
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      82,
                      'Brock',
                      'Leon',
                      '2/16/06',
                      2019
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      83,
                      'Anh',
                      'Peck',
                      '8/3/06',
                      2014
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      84,
                      'Kyoko',
                      'Daugherty',
                      '9/21/06',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      85,
                      'Cathleen',
                      'Gomes',
                      '10/3/06',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      86,
                      'Tasia',
                      'Nichols',
                      '1/19/07',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      87,
                      'Elvera',
                      'Adams',
                      '7/24/08',
                      2019
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      88,
                      'Sueann',
                      'Farrell',
                      '9/17/08',
                      2012
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      89,
                      'Lilly',
                      'Beaver',
                      '5/9/09',
                      2016
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      90,
                      'Janay',
                      'Duke',
                      '5/12/10',
                      2014
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      91,
                      'Windy',
                      'Zavala',
                      '11/10/10',
                      2015
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      92,
                      'Tonita',
                      'Heller',
                      '5/13/12',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      93,
                      'Carter',
                      'Richards',
                      '8/21/12',
                      2012
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      94,
                      'Winston',
                      'Maher',
                      '7/22/14',
                      2014
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      95,
                      'Jaimie',
                      'Frost',
                      '1/15/15',
                      2015
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      96,
                      'Tambra',
                      'Khan',
                      '2/16/06',
                      2013
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      97,
                      'Sherryl',
                      'Phelps',
                      '10/17/04',
                      2015
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      98,
                      'Megan',
                      'Meeks',
                      '2/20/05',
                      2020
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      99,
                      'Demetrius',
                      'Lyons',
                      '5/3/05',
                      2016
                  );

INSERT INTO otrok (
                      id,
                      ime,
                      priimek,
                      datum_rojstva,
                      leto_vpisa
                  )
                  VALUES (
                      100,
                      'Prince',
                      'Charlote',
                      '11/24/05',
                      2015
                  );


-- Table: plezalisce
DROP TABLE IF EXISTS plezalisce;

CREATE TABLE plezalisce (
    id  INTEGER PRIMARY KEY,
    ime TEXT
);

INSERT INTO plezalisce (
                           id,
                           ime
                       )
                       VALUES (
                           701,
                           'Preddvor'
                       );

INSERT INTO plezalisce (
                           id,
                           ime
                       )
                       VALUES (
                           702,
                           'Bohinjska Bela'
                       );

INSERT INTO plezalisce (
                           id,
                           ime
                       )
                       VALUES (
                           703,
                           'Peč'
                       );

INSERT INTO plezalisce (
                           id,
                           ime
                       )
                       VALUES (
                           704,
                           'Kotečnik'
                       );

INSERT INTO plezalisce (
                           id,
                           ime
                       )
                       VALUES (
                           705,
                           'Vipava'
                       );

INSERT INTO plezalisce (
                           id,
                           ime
                       )
                       VALUES (
                           706,
                           'Belleuve'
                       );

INSERT INTO plezalisce (
                           id,
                           ime
                       )
                       VALUES (
                           707,
                           'Črni Kal'
                       );

INSERT INTO plezalisce (
                           id,
                           ime
                       )
                       VALUES (
                           708,
                           'Kamnitnik'
                       );

INSERT INTO plezalisce (
                           id,
                           ime
                       )
                       VALUES (
                           709,
                           'Nomenj'
                       );


-- Table: pripada
DROP TABLE IF EXISTS pripada;

CREATE TABLE pripada (
    otrok   INTEGER REFERENCES otrok (id),
    skupina INTEGER REFERENCES skupina (id) 
);

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        1,
                        401
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        2,
                        401
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        3,
                        401
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        4,
                        401
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        5,
                        401
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        6,
                        402
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        7,
                        402
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        8,
                        402
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        9,
                        402
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        10,
                        402
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        11,
                        402
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        12,
                        402
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        13,
                        402
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        14,
                        403
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        15,
                        403
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        16,
                        403
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        17,
                        403
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        18,
                        403
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        19,
                        404
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        20,
                        404
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        21,
                        404
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        22,
                        404
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        23,
                        404
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        24,
                        404
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        25,
                        405
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        26,
                        405
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        27,
                        405
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        28,
                        405
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        29,
                        405
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        30,
                        405
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        31,
                        406
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        32,
                        406
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        33,
                        406
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        34,
                        406
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        35,
                        406
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        36,
                        406
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        37,
                        407
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        38,
                        407
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        39,
                        407
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        40,
                        407
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        41,
                        407
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        42,
                        408
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        43,
                        408
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        44,
                        408
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        45,
                        408
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        46,
                        408
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        47,
                        408
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        48,
                        409
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        49,
                        409
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        50,
                        409
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        51,
                        409
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        52,
                        409
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        53,
                        409
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        54,
                        410
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        55,
                        410
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        56,
                        410
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        57,
                        410
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        58,
                        410
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        59,
                        411
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        60,
                        411
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        61,
                        411
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        62,
                        411
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        63,
                        411
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        64,
                        411
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        65,
                        412
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        66,
                        412
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        67,
                        412
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        68,
                        412
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        69,
                        412
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        70,
                        413
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        71,
                        413
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        72,
                        413
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        73,
                        413
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        74,
                        413
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        75,
                        414
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        76,
                        414
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        77,
                        414
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        78,
                        414
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        79,
                        415
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        80,
                        415
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        81,
                        415
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        82,
                        415
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        83,
                        415
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        84,
                        415
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        85,
                        416
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        86,
                        416
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        87,
                        416
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        88,
                        416
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        89,
                        416
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        90,
                        417
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        91,
                        417
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        92,
                        417
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        93,
                        417
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        94,
                        417
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        95,
                        417
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        96,
                        418
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        97,
                        418
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        98,
                        418
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        99,
                        418
                    );

INSERT INTO pripada (
                        otrok,
                        skupina
                    )
                    VALUES (
                        100,
                        418
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

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      301,
                      1,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      302,
                      2,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      303,
                      3,
                      '6/26/20',
                      'True',
                      25
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      304,
                      4,
                      '6/26/20',
                      'True',
                      25
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      305,
                      5,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      306,
                      6,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      307,
                      7,
                      '6/26/20',
                      'True',
                      40
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      308,
                      8,
                      '6/26/20',
                      'True',
                      50
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      309,
                      9,
                      '6/26/20',
                      'True',
                      50
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      310,
                      10,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      311,
                      11,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      312,
                      12,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      313,
                      13,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      314,
                      14,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      315,
                      15,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      316,
                      16,
                      '6/26/20',
                      'True',
                      25
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      317,
                      17,
                      '6/26/20',
                      'True',
                      25
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      318,
                      18,
                      '6/26/20',
                      'True',
                      40
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      319,
                      19,
                      '6/26/20',
                      'True',
                      50
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      320,
                      20,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      321,
                      21,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      322,
                      22,
                      '6/26/20',
                      'True',
                      50
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      323,
                      23,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      324,
                      24,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      325,
                      25,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      326,
                      26,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      327,
                      27,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      328,
                      28,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      329,
                      29,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      330,
                      30,
                      '6/26/20',
                      'True',
                      40
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      331,
                      31,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      332,
                      32,
                      '6/26/20',
                      'True',
                      40
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      333,
                      33,
                      '6/26/20',
                      'True',
                      25
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      334,
                      34,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      335,
                      35,
                      '6/26/20',
                      'True',
                      25
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      336,
                      36,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      337,
                      37,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      338,
                      38,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      339,
                      39,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      340,
                      40,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      341,
                      41,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      342,
                      42,
                      '6/26/20',
                      'True',
                      50
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      343,
                      43,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      344,
                      44,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      345,
                      45,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      346,
                      46,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      347,
                      47,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      348,
                      48,
                      '6/26/20',
                      'True',
                      25
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      349,
                      49,
                      '6/26/20',
                      'True',
                      25
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      350,
                      50,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      351,
                      51,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      352,
                      52,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      353,
                      53,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      354,
                      54,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      355,
                      55,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      356,
                      56,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      357,
                      57,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      358,
                      58,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      359,
                      59,
                      '6/26/20',
                      'True',
                      40
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      360,
                      60,
                      '6/26/20',
                      'True',
                      25
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      361,
                      61,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      362,
                      62,
                      '6/26/20',
                      'True',
                      25
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      363,
                      63,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      364,
                      64,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      365,
                      65,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      366,
                      66,
                      '6/26/20',
                      'True',
                      40
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      367,
                      67,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      368,
                      68,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      369,
                      69,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      370,
                      70,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      371,
                      71,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      372,
                      72,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      373,
                      73,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      374,
                      74,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      375,
                      75,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      376,
                      76,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      377,
                      77,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      378,
                      78,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      379,
                      79,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      380,
                      80,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      381,
                      81,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      382,
                      82,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      383,
                      83,
                      '6/26/20',
                      'True',
                      25
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      384,
                      84,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      385,
                      85,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      386,
                      86,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      387,
                      87,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      388,
                      88,
                      '6/26/20',
                      'True',
                      25
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      389,
                      89,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      390,
                      90,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      391,
                      91,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      392,
                      92,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      393,
                      93,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      394,
                      94,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      395,
                      95,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      396,
                      96,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      397,
                      97,
                      '6/26/20',
                      'True',
                      30
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      398,
                      98,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      399,
                      99,
                      '6/26/20',
                      'True',
                      45
                  );

INSERT INTO racun (
                      id,
                      otrok,
                      datum,
                      placano,
                      znesek
                  )
                  VALUES (
                      400,
                      100,
                      '6/26/20',
                      'True',
                      30
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

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        1,
                        101
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'False',
                        2,
                        102
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        3,
                        103
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        4,
                        104
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        5,
                        105
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'False',
                        6,
                        106
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        7,
                        107
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        8,
                        108
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        9,
                        109
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        10,
                        110
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        11,
                        111
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        12,
                        112
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        13,
                        113
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        14,
                        114
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        15,
                        115
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        16,
                        116
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        17,
                        117
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        18,
                        118
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        19,
                        119
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        20,
                        120
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        21,
                        121
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        22,
                        122
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        23,
                        123
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        24,
                        124
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        25,
                        125
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        26,
                        126
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        27,
                        127
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        28,
                        128
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        29,
                        129
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        30,
                        130
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        31,
                        131
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        32,
                        132
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        33,
                        133
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        34,
                        134
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        35,
                        135
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        36,
                        136
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        37,
                        137
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        38,
                        138
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        39,
                        139
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        40,
                        140
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        41,
                        141
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        42,
                        142
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        43,
                        143
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        44,
                        144
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        45,
                        145
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        46,
                        146
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        47,
                        147
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        48,
                        148
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        49,
                        149
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        50,
                        150
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        51,
                        151
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        52,
                        152
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        53,
                        153
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        54,
                        154
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        55,
                        155
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        56,
                        156
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        57,
                        157
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        58,
                        158
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        59,
                        159
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        60,
                        160
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        61,
                        161
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        62,
                        162
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        63,
                        163
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        64,
                        164
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        65,
                        165
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        66,
                        166
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        67,
                        167
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        68,
                        168
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        69,
                        169
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'False',
                        70,
                        170
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        71,
                        171
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        72,
                        172
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        73,
                        173
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        74,
                        174
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        75,
                        175
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        76,
                        176
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        77,
                        177
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        78,
                        178
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        79,
                        179
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        80,
                        180
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        81,
                        181
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        82,
                        182
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        83,
                        183
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        84,
                        184
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        85,
                        185
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        86,
                        186
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        87,
                        187
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        88,
                        188
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        89,
                        189
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        90,
                        190
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        91,
                        191
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        92,
                        192
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        93,
                        193
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        94,
                        194
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        95,
                        195
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        96,
                        196
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'False',
                        97,
                        197
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        98,
                        198
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        99,
                        199
                    );

INSERT INTO skrbnik (
                        dobiva_maile,
                        otrok,
                        stars
                    )
                    VALUES (
                        'True',
                        100,
                        200
                    );


-- Table: skupina
DROP TABLE IF EXISTS skupina;

CREATE TABLE skupina (
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    ime               TEXT,
    stevilo_treningov INTEGER,
    trener            INTEGER REFERENCES trener (id) 
);

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        401,
                        'Sončki',
                        1,
                        201
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        402,
                        'Starci',
                        3,
                        202
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        403,
                        'Opice',
                        2,
                        203
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        404,
                        'Alpake',
                        1,
                        208
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        405,
                        'Špelini',
                        3,
                        201
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        406,
                        'Veverice',
                        1,
                        206
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        407,
                        'Klovni',
                        1,
                        207
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        408,
                        'Tejini',
                        1,
                        210
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        409,
                        'Mišice',
                        1,
                        210
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        410,
                        'Nežine punce',
                        2,
                        205
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        411,
                        'Fonovi',
                        2,
                        209
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        412,
                        'Medvedki',
                        1,
                        211
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        413,
                        'Evini',
                        2,
                        204
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        414,
                        'Šalce',
                        1,
                        214
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        415,
                        'Svizci',
                        2,
                        204
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        416,
                        'Tavelki',
                        2,
                        205
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        417,
                        'Miini',
                        2,
                        212
                    );

INSERT INTO skupina (
                        id,
                        ime,
                        stevilo_treningov,
                        trener
                    )
                    VALUES (
                        418,
                        'Bolderčki',
                        1,
                        213
                    );


-- Table: smer
DROP TABLE IF EXISTS smer;

CREATE TABLE smer (
    id         INTEGER PRIMARY KEY,
    ime        TEXT,
    plezalisce INTEGER REFERENCES plezalisce (id),
    tezavnost  TEXT
);

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     601,
                     'Pehta',
                     701,
                     '5b+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     602,
                     'Srečno Kekec',
                     701,
                     '6b+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     603,
                     'Vabeča globina',
                     704,
                     '6c+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     604,
                     'Trim',
                     704,
                     '5a+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     605,
                     'Turni smuk Rodica',
                     703,
                     '5b'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     606,
                     'AS Stara Fužina',
                     703,
                     '5c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     607,
                     'Črni gaber',
                     703,
                     '6a+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     608,
                     'Vojska SLO (do vrha)',
                     703,
                     '6a'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     609,
                     'Ježek teka teka',
                     704,
                     '6a'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     610,
                     'Siva poč',
                     704,
                     '5c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     611,
                     'Binetova',
                     701,
                     '6a+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     612,
                     'Juretova',
                     701,
                     '6b+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     613,
                     'Mravlja',
                     704,
                     '6b'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     614,
                     'Beli cvet',
                     704,
                     '6a'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     615,
                     'Sirove luknje',
                     704,
                     '5b+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     616,
                     'Ementalec',
                     704,
                     '5a'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     617,
                     'Čista fizika',
                     704,
                     '7a+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     618,
                     'Sivi steber',
                     704,
                     '6c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     619,
                     'Plava',
                     701,
                     '6b'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     620,
                     'Avrikelj',
                     704,
                     '6b'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     621,
                     'Mamut',
                     704,
                     '6b'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     622,
                     'Taščica',
                     701,
                     '5c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     623,
                     'Sonček je',
                     701,
                     '4a'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     624,
                     'Martinova gos',
                     701,
                     '4b'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     625,
                     'Ta bela',
                     701,
                     '6a+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     626,
                     'Zelena',
                     701,
                     '5a+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     627,
                     'Tinkara',
                     701,
                     '4b+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     628,
                     'Raz',
                     702,
                     '4c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     629,
                     'Zmešana soseda',
                     702,
                     '5c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     630,
                     'Kača plaziritka',
                     702,
                     '5b'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     631,
                     'Tic',
                     702,
                     '3'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     632,
                     'Toe',
                     702,
                     '3'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     633,
                     'Tuc',
                     702,
                     '3'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     634,
                     'Tac',
                     702,
                     '4b'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     635,
                     'Strup za gamse',
                     702,
                     '4b'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     636,
                     'Bohomurček',
                     702,
                     '5a+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     637,
                     'Modras',
                     703,
                     '5a+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     638,
                     'Gad',
                     703,
                     '6a+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     639,
                     'Vojska SLO (pol)',
                     703,
                     '4c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     640,
                     'Baby',
                     703,
                     '4a'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     641,
                     'Lady',
                     703,
                     '4a'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     642,
                     'Litle big wall',
                     704,
                     '5c+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     643,
                     'Lepota ni naklučje',
                     704,
                     '6a'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     644,
                     'Črne Luknje',
                     704,
                     '5b+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     645,
                     'Črnka',
                     704,
                     '5c+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     646,
                     'Gosenica',
                     704,
                     '6a'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     647,
                     'Cekinček',
                     704,
                     '6a'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     648,
                     'Encijan',
                     704,
                     '6c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     649,
                     'Veselica',
                     704,
                     '6a+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     650,
                     'Svišč',
                     704,
                     '5c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     651,
                     'Lepotička',
                     704,
                     '5b+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     652,
                     'Mihatova',
                     704,
                     '5c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     653,
                     'Dvojčici',
                     704,
                     '6a+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     654,
                     'Polnoletna',
                     704,
                     '5c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     655,
                     'Martin Krpan',
                     705,
                     '5c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     656,
                     'Škorpion',
                     705,
                     '4c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     657,
                     'Pajek',
                     705,
                     '4c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     658,
                     'Črna Liza',
                     705,
                     '6b'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     659,
                     'Easy',
                     705,
                     '3'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     660,
                     'Luska',
                     706,
                     '5a'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     661,
                     'Zajček',
                     706,
                     '3'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     662,
                     'Veverica',
                     706,
                     '4b+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     663,
                     'Špela',
                     706,
                     '4a'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     664,
                     'Dim',
                     706,
                     '5c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     665,
                     'Raz Belevija',
                     706,
                     '4a'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     666,
                     'Je treba delat ',
                     706,
                     '5c+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     667,
                     'Še je upanje',
                     706,
                     '6b+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     668,
                     'Urškina',
                     706,
                     '4c+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     669,
                     'Ježek',
                     706,
                     '3'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     670,
                     'Razgledna',
                     706,
                     '5a+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     671,
                     'Scooby-doo',
                     707,
                     '4a+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     672,
                     'Mladi upi',
                     707,
                     '3'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     673,
                     'Johnny Bravo',
                     707,
                     '4c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     674,
                     'Sreča na vrvici',
                     707,
                     '4b'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     675,
                     'Jeba',
                     708,
                     '6a'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     676,
                     'Skuta',
                     708,
                     '5c'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     677,
                     'Ovčka',
                     708,
                     '4b'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     678,
                     'Luknja',
                     709,
                     '4a'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     679,
                     'Bukev',
                     709,
                     '4c+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     680,
                     'Kopriva',
                     709,
                     '5c+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     681,
                     'Australia',
                     709,
                     '4b+'
                 );

INSERT INTO smer (
                     id,
                     ime,
                     plezalisce,
                     tezavnost
                 )
                 VALUES (
                     682,
                     'Navihana',
                     708,
                     '7a+'
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

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      101,
                      'Maggie',
                      'Corbin',
                      'runte.stephania@yahoo.com',
                      'Olševek 75, 4205 Preddvor',
                      '00386-405-559-562'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      102,
                      'Grace',
                      'Huggins',
                      'oeffertz@collins.com',
                      'Kidričeva 61, 4000 Kranj',
                      '00386-315-555-2077'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      103,
                      'Cornelia ',
                      'Hatch',
                      'dlangosh@spinka.com',
                      'Predoslje 197, 4000 Kranj',
                      '00386-205-558-461'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      104,
                      'Lindsey ',
                      'Lanier',
                      'lowe.vivianne@yahoo.com',
                      'Na Vidmu 11, 4000 Kranj',
                      '00386-315-555-75'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      105,
                      'Maryann ',
                      'Livingston',
                      'jparker@swaniawski.com',
                      'Trstenik 12, 4204 Golnik',
                      '00386-405-558-4109'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      106,
                      'Jason ',
                      'Snider',
                      'elda.farrell@yahoo.com',
                      'Belska cesta 26, 4205 Preddvor',
                      '00386-405-553-2578'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      107,
                      'Charles ',
                      'Morrison',
                      'alvera59@little.com',
                      'Velesovo 58a, 4207 Cerklje',
                      '00386-305-551-8879'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      108,
                      'Marcy ',
                      'Mcgrath',
                      'cgrimes@frami.net',
                      'Dolžanova pot 1, 4000 kranj',
                      '00386-645-552-31'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      109,
                      'Freida ',
                      'Rodriquez',
                      'branson67@gmail.com',
                      'Kebetova ul. 18',
                      '00386-205-553-258'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      110,
                      'Estella ',
                      'Blue',
                      'rosamond86@jerde.com',
                      'Cesta Kokrškega odreda 30, Kranj',
                      '00386-215-550-64'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      111,
                      'Imelda ',
                      'Curran',
                      'mschneider@batz.info',
                      'Moše 40, 1216 Smlednik',
                      '00386-605-552-3744'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      112,
                      'Lonny ',
                      'Wesley',
                      'sage33@gmail.com',
                      'Pešnica 17, 4201 Zgornja Besnica',
                      '00386-215-554-61'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      113,
                      'Amalia ',
                      'Frazier',
                      'hilda.fahey@yahoo.com',
                      'Ul. Angelce Hlebce 1a, 4000 Kranj',
                      '00386-215-554-80'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      114,
                      'Beverley ',
                      'Hedrick',
                      'bernard.leuschke@gmail.com',
                      'Drolčevo naselje 3, 4000 Kranj',
                      '00386-415-551-636'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      115,
                      'Renaldo',
                      'Myers',
                      'eliseo.windler@yahoo.com',
                      'Soška ulica 8, 4000 Kranj',
                      '00386-605-555-61'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      116,
                      'Dora ',
                      'Winkler',
                      'hand.addison@littel.com',
                      'Breg ob Savi 15a, 4211 Mavčiče',
                      '00386-615-558-7'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      117,
                      'Carl ',
                      'Mohr',
                      'gutkowski.agustina@yahoo.com',
                      'Ulica Lojzata Horvata 9, 4000 Kranj',
                      '00386-715-553-3190'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      118,
                      'Dallas ',
                      'Pettit',
                      'earl27@gleason.org',
                      'Luznarjeva 15, 4000 Kranj',
                      '00386-705-557-35'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      119,
                      'Efrain ',
                      'Charles',
                      'gpredovic@yahoo.com',
                      'Trnovlje 50, 4207 Cerklje',
                      '00386-215-553-91'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      120,
                      'Helga ',
                      'Keene',
                      'mernser@gmail.com',
                      'Britof, 4000 Kranj',
                      '00386-315-558-751'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      121,
                      'Bernadette',
                      'Baldwin',
                      'providenci.terry@gleichner.com',
                      'Breg ob Savi 103, 4211 Mavčiče',
                      '00386-305-554-327'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      122,
                      'Francis ',
                      'Schmidt',
                      'lew92@strosin.com',
                      'Cesta na Hudo 2, 4000 Kranj',
                      '00386-315-554-6114'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      123,
                      'Larry ',
                      'Robinson',
                      'rohan.marshall@feeney.com',
                      'Prebačevo 12, 4000 Kranj',
                      '00386-305-558-89'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      124,
                      'Seth ',
                      'Hays',
                      'harvey.christop@kutch.com',
                      '4204 Golnik, Golnik 10d',
                      '00386-645-556-9'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      125,
                      'Cassidy',
                      'Galindo',
                      'cade12@yahoo.com',
                      'Gasilska ulica 7, 4000 Kranj',
                      '00386-405-559-56'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      126,
                      'Collin ',
                      'Koehler',
                      'marvin.bauch@hotmail.com',
                      'Golnik 85, 4204 Golnik',
                      '00386-515-553-11'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      127,
                      'Delia ',
                      'Flowers',
                      'xkuvalis@hotmail.com',
                      'Kuratova 4, 4000 Kranj',
                      '00386-215-551-98'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      128,
                      'Lenore ',
                      'Keys',
                      'corkery.eliza@gmail.com',
                      'Smednia cesta 55, 4000 Kranj',
                      '00386-215-554-9731'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      129,
                      'Andrea ',
                      'Bergeron',
                      'lindgren.rafael@hotmail.com',
                      'Nova vas 16, 4201 Zg. Besnica',
                      '00386-605-553-486'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      130,
                      'Dina',
                      'Holland',
                      'kbode@glover.biz',
                      'Okornova ulica 14, 4000 Kranj',
                      '00386-215-559-8476'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      131,
                      'Paul ',
                      'Ritchie',
                      'paxton78@schmitt.com',
                      'Mandeljčeva pot 12, 4000 Kranj',
                      '00386-505-555-3725'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      132,
                      'Ashley ',
                      'Franks',
                      'arne52@runolfsson.com',
                      'Luznarjeva ulica 12, 4000 Kranj',
                      '00386-315-554-851'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      133,
                      'Penny ',
                      'Maher',
                      'mallory.kunde@dooley.net',
                      'Zoisova ulica 17, 4000 Kranj',
                      '00386-615-559-23'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      134,
                      'Osvaldo ',
                      'Langston',
                      'nathanael22@hotmail.com',
                      'Srednja vas pri Šenčurju 4, 4208 Šenčur',
                      '00386-315-553-5601'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      135,
                      'Kip ',
                      'Mccoy',
                      'maxwell02@hamill.com',
                      'Špikova 3, 4000 Kranj',
                      '00386-645-551-8754'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      136,
                      'Brandie ',
                      'Meade',
                      'melvin.wunsch@moore.org',
                      'Štefetova ulica 33, 4208 Šenčur',
                      '00386-645-550-63'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      137,
                      'Roxanne ',
                      'David',
                      'nhessel@prosacco.com',
                      'Spodnje Gameljne 9c, 1211 Ljubljana-Šmartno',
                      '00386-705-558-14'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      138,
                      'Max ',
                      'Trejo',
                      'kovacek.mathew@hotmail.com',
                      'Srednja vas pri Šenčurju 72, 4208 Šenčur',
                      '00386-405-555-64'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      139,
                      'Evan ',
                      'Cornell',
                      'thomas.lehner@yahoo.com',
                      'Preloge 16, 1000 Ljubljana',
                      '00386-205-552-123'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      140,
                      'Jodie ',
                      'Willis',
                      'bo.cremin@pacocha.info',
                      'Preloge 16, 1000 Ljubljana',
                      '00386-705-556-18'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      141,
                      'Dale ',
                      'Darling',
                      'nicholaus.gulgowski@gmail.com',
                      'Detelova ulica 16, 4000 Kranj',
                      '00386-205-554-3810'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      142,
                      'Maher',
                      'Goss',
                      'waelchi.raymundo@hotmail.com',
                      'Britof 95, 4000 Kranj',
                      '00386-515-558-503'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      143,
                      'Walker',
                      'Chu',
                      'cmiller@gusikowski.com',
                      'Čadovlje pri Tržiču 7/a, 4290 Tržič',
                      '00386-405-557-3471'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      144,
                      'Cassidy',
                      'Battle',
                      'lakin.arnold@wiza.com',
                      'Trstenik 75, 4204 Golnik',
                      '00386-205-556-48'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      145,
                      'Katherine',
                      'Looney',
                      'heller.dax@tillman.info',
                      'Prebačevo 58b, 4000 Kranj',
                      '00386-645-551-376'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      146,
                      'Abbie',
                      'Norris',
                      'pagac.leonora@abshire.com',
                      'Sajovčevo naselje 4, 4208 Šenčur',
                      '00386-215-552-4812'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      147,
                      'Erlene',
                      'Holden',
                      'rosie.kshlerin@yahoo.com',
                      'Kebetova ul. 18',
                      '00386-305-554-57'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      148,
                      'Shela',
                      'Chin',
                      'clair55@hotmail.com',
                      'Trubarjev trg 10, 4000 Kranj',
                      '00386-705-550-751'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      149,
                      'Bernadette',
                      'Hoskins',
                      'heber73@hotmail.com',
                      'Ulica Vide Šinkovčeve 2, Kranj',
                      '00386-315-559-551'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      150,
                      'Francis ',
                      'Weir',
                      'ebins@yahoo.com',
                      'Smledniška cesta 1, 4000 Kranj',
                      '00386-615-553-8992'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      151,
                      'Larry ',
                      'Mcnamara',
                      'murray.alek@yahoo.com',
                      'Žlebe 22a, 1215 Medvode',
                      '00386-415-554-26'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      152,
                      'Seth ',
                      'Bingham',
                      'willms.baron@gmail.com',
                      'Žlebe 2.e, 1215 Medvode',
                      '00386-705-555-56'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      153,
                      'Cassidy',
                      'Goss',
                      'pohara@yahoo.com',
                      'Janka Puclja 3, 4000 Kranj',
                      '00386-705-557-176'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      154,
                      'Collin ',
                      'Chatman',
                      'jedidiah.hegmann@johnston.info',
                      'Maistrov trg 11, 4000 Kranj',
                      '00386-315-553-48'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      155,
                      'Delia ',
                      'Culver',
                      'josiane.kirlin@yahoo.com',
                      'Šenturška Gora 12, 4207 Cerklje',
                      '00386-205-559-75'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      156,
                      'Lenore ',
                      'Grady',
                      'senger.nicolette@yahoo.com',
                      'Trg Rivoli 3, 4000 Kranj',
                      '00386-715-552-2461'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      157,
                      'Andrea ',
                      'Metz',
                      'chelsey94@gmail.com',
                      'Jelenčeva ulica 21, 4000 Kranj',
                      '00386-615-558-715'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      158,
                      'Waylon ',
                      'Hinkle',
                      'nannie.kunde@leannon.info',
                      'Rožna 9, 4000 Kranj',
                      '00386-205-550-76'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      159,
                      'Dusty ',
                      'Dunbar',
                      'malvina.harvey@yahoo.com',
                      'Janka Puclja 1, 4000 Kranj',
                      '00386-405-550-4'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      160,
                      'Erlene',
                      'Frost',
                      'imacejkovic@lakin.net',
                      'Kebetova 1, 4000 Kranj',
                      '00386-615-551-49'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      161,
                      'Shela',
                      'Bartley',
                      'mokuneva@gmail.com',
                      'Predoslje 187, 4000 Kranj',
                      '00386-205-555-186'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      162,
                      'Annabell',
                      'Murillo',
                      'kaylin.roob@ward.com',
                      'Francarija 21, 4205 Preddvor',
                      '00386-305-559-50'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      163,
                      'Earleen',
                      'Lunsford',
                      'zoila81@kemmer.com',
                      'Kebetova 1, 4000 Kranj',
                      '00386-605-559-286'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      164,
                      'Eloise',
                      'Gary',
                      'ruecker.harvey@bartoletti.net',
                      'Predoslje 187, 4000 Kranj',
                      '00386-615-551-832'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      165,
                      'Robt',
                      'Stern',
                      'myah.hill@yahoo.com',
                      'Francarija 21, 4205 Preddvor',
                      '00386-705-552-556'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      166,
                      'Dorcas',
                      'Hooper',
                      'bradford.veum@yahoo.com',
                      'Golnik 177, 4204 Golnik',
                      '00386-215-556-8'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      167,
                      'Bianca',
                      'Vargas',
                      'wweissnat@prohaska.com',
                      'Preďż˝ka cesta 13, 1215 Medvode',
                      '00386-605-555-7939'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      168,
                      'Sung',
                      'Bain',
                      'willms.hattie@wilderman.info',
                      'Visoko 103a, 4212 Visoko',
                      '00386-615-559-37'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      169,
                      'Ena',
                      'Alvarez',
                      'hackett.elmo@gmail.com',
                      'Visoko 7, 4212 Visoko',
                      '00386-315-553-8523'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      170,
                      'Sana',
                      'Staton',
                      'oswift@satterfield.com',
                      'Podbrezje 216a, 4202 Naklo',
                      '00386-705-555-702'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      171,
                      'Arden ',
                      'Wolf',
                      'mavis06@pfeffer.com',
                      'Prebačevo 10e, 4000 Kranj',
                      '00386-615-559-6154'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      172,
                      'Leonard',
                      'Morton',
                      'rgreen@fay.org',
                      'Dragočajna 28a, Medvode',
                      '00386-205-558-4597'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      173,
                      'Seth ',
                      'Lawson',
                      'colby15@hotmail.com',
                      'Pipanova cesta 10, 4208 Šenčur',
                      '00386-645-554-7'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      174,
                      'Michale ',
                      'Tackett',
                      'ernser.cassidy@erdman.com',
                      'Goriče 9a, 4204 Golnik',
                      '00386-305-551-62'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      175,
                      'Ervin ',
                      'Tuttle',
                      'tdonnelly@gmail.com',
                      'Pšenična Polica 16, 4207 Cerklje na Gorenjskem',
                      '00386-705-550-665'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      176,
                      'Henry',
                      'Dubois',
                      'btromp@gibson.biz',
                      'Pristava 5a, 1234 Mengeš',
                      '00386-505-554-58'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      177,
                      'Angelo',
                      'Connelly',
                      'hills.camren@rempel.com',
                      'Pot pod Gradiščem 3, 4202 Naklo',
                      '00386-215-554-2729'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      178,
                      'Marco',
                      'Matthews',
                      'zetta.lueilwitz@eichmann.net',
                      'Zgornje Bitnje 193, 4209 Žabnica',
                      '00386-315-553-13'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      179,
                      'Bernice',
                      'Mejia',
                      'altenwerth.andy@hotmail.com',
                      'Rupa 51, 4000 Kranj',
                      '00386-605-554-47'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      180,
                      'Rolf ',
                      'Hurd',
                      'ratke.michael@hotmail.com',
                      'Britof 202, 4000 Kranj',
                      '00386-215-552-6490'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      181,
                      'Bennett',
                      'Ward',
                      'clakin@yahoo.com',
                      'Brebovnica 10b, 4224 Gorena vas',
                      '00386-315-551-78'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      182,
                      'Brian',
                      'Leon',
                      'vilma64@yahoo.com',
                      'Dražhoše 41, 4228 Železniki',
                      '00386-215-550-28'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      183,
                      'Monique',
                      'Peck',
                      'kankunding@yahoo.com',
                      'Ulica Juleta Gabrovška 20, 4000 Kranj',
                      '00386-705-551-4384'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      184,
                      'Marcel ',
                      'Daugherty',
                      'ykeebler@johns.com',
                      'Župančičeva ulica 3, 4000 Kranj',
                      '00386-405-557-9565'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      185,
                      'Madge',
                      'Gomes',
                      'donny.bosco@kling.info',
                      'Dvorje 77a, 4207 Cerklje na Gorenjskem',
                      '00386-605-550-1170'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      186,
                      'Nubia',
                      'Nichols',
                      'kraig.howell@yahoo.com',
                      'Čirďče 42, 4000 Kranj',
                      '00386-715-558-78'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      187,
                      'Alvera',
                      'Adams',
                      'hagenes.jaunita@gmail.com',
                      'Čirďče 42, 4000 Kranj',
                      '00386-705-556-5119'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      188,
                      'Cyndy',
                      'Farrell',
                      'dovie.roberts@pagac.com',
                      'Mlakarjeva 18, 4000 Kranj',
                      '00386-305-554-962'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      189,
                      'Vanna',
                      'Beaver',
                      'benedict.rosenbaum@mosciski.com',
                      'Cesta Kokrškega odreda 22a, 4000 Kranj',
                      '00386-315-554-5304'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      190,
                      'Liz',
                      'Duke',
                      'karson.langosh@gmail.com',
                      'Trojarjeva 21, 4000 Kranj',
                      '00386-615-558-83'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      191,
                      'Idell',
                      'Zavala',
                      'olindgren@bernhard.net',
                      'Nazorjeva ulica 2, 4000 Kranj',
                      '00386-305-555-40'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      192,
                      'Evelyn',
                      'Heller',
                      'gbogisich@kuphal.com',
                      'Begunjska ulica 14, 4000 Kranj',
                      '00386-515-554-648'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      193,
                      'Avril',
                      'Richards',
                      'tkautzer@rogahn.net',
                      'Britof 254, 4000 Kranj',
                      '00386-315-550-172'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      194,
                      'Brigida',
                      'Maher',
                      'torey.medhurst@yahoo.com',
                      'Partizanska ul. 31, 4208 Šenčur',
                      '00386-605-555-591'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      195,
                      'Brock',
                      'Frost',
                      'marks.lysanne@harber.com',
                      'Trojarjeva 21, 4000 Kranj',
                      '00386-715-554-75'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      196,
                      'Anh',
                      'Khan',
                      'vernie57@kshlerin.com',
                      'Krožna pot 65,4208 Voglje',
                      '00386-715-557-6570'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      197,
                      'Kyoko',
                      'Phelps',
                      'jerrold.stokes@hotmail.com',
                      'Britof 95, 4000 Kranj',
                      '00386-405-552-16'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      198,
                      'Cathleen',
                      'Meeks',
                      'sporer.ari@gmail.com',
                      'Stara cesta 18, 4000 Kranj',
                      '00386-205-553-12'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      199,
                      'Tasia',
                      'Lyons',
                      'jacobson.annabell@wisoky.com',
                      'Podbrezje 216a, 4202 Naklo',
                      '00386-215-558-82'
                  );

INSERT INTO stars (
                      id,
                      ime,
                      priimek,
                      mail,
                      naslov,
                      telefon
                  )
                  VALUES (
                      200,
                      'Kristi ',
                      'Charlote',
                      'shaniya04@harber.net',
                      'Struževo 5a, 4000 Kranj',
                      '00386-515-557-31'
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

INSERT INTO trener (
                       id,
                       ime,
                       priimek,
                       mail,
                       naslov,
                       telefon
                   )
                   VALUES (
                       201,
                       'Špela',
                       'Šter',
                       'dwindler@gmail.com',
                       'Golnik 177, 4204 Golnik',
                       '00386-715-552-96'
                   );

INSERT INTO trener (
                       id,
                       ime,
                       priimek,
                       mail,
                       naslov,
                       telefon
                   )
                   VALUES (
                       202,
                       'Tjaša',
                       'Kalan',
                       'rutherford.enola@hotmail.com',
                       'Jezerska cesta 2, Kranj',
                       '00386-495-550-1347'
                   );

INSERT INTO trener (
                       id,
                       ime,
                       priimek,
                       mail,
                       naslov,
                       telefon
                   )
                   VALUES (
                       203,
                       'Tjaša',
                       'Ažbe',
                       'fbruen@yahoo.com',
                       'Jezerska c. 93/D, 4000 Kranj',
                       '00386-705-557-41'
                   );

INSERT INTO trener (
                       id,
                       ime,
                       priimek,
                       mail,
                       naslov,
                       telefon
                   )
                   VALUES (
                       204,
                       'Eva',
                       'Flajnik',
                       'frederique.blick@hotmail.com',
                       'Jezerska cesta 93B, 4000 Kranj',
                       '00386-315-553-5467'
                   );

INSERT INTO trener (
                       id,
                       ime,
                       priimek,
                       mail,
                       naslov,
                       telefon
                   )
                   VALUES (
                       205,
                       'Neža',
                       'Vombergar',
                       'kattie.beier@hotmail.com',
                       'Srednja vas pri Šenčurju 202, 4208 Šenčur',
                       '00386-305-559-63'
                   );

INSERT INTO trener (
                       id,
                       ime,
                       priimek,
                       mail,
                       naslov,
                       telefon
                   )
                   VALUES (
                       206,
                       'Teja',
                       'Škofic',
                       'murl.murray@gmail.com',
                       'Hotemaďż˝e 116, 4205 Preddvor',
                       '00386-415-552-51'
                   );

INSERT INTO trener (
                       id,
                       ime,
                       priimek,
                       mail,
                       naslov,
                       telefon
                   )
                   VALUES (
                       207,
                       'Meta',
                       'Cerkovnik',
                       'vthompson@cummerata.com',
                       'Jezerska cesta 118, 4000 Kranj',
                       '00386-405-556-688'
                   );

INSERT INTO trener (
                       id,
                       ime,
                       priimek,
                       mail,
                       naslov,
                       telefon
                   )
                   VALUES (
                       208,
                       'Gal',
                       'Rihtaršič',
                       'doyle47@hotmail.com',
                       'Župančičeva ulica 3, 4000 Kranj',
                       '00386-605-557-287'
                   );

INSERT INTO trener (
                       id,
                       ime,
                       priimek,
                       mail,
                       naslov,
                       telefon
                   )
                   VALUES (
                       209,
                       'Dominik',
                       'Fon',
                       'ehaag@nicolas.org',
                       'Struževo 3d, 4000 Kranj',
                       '00386-615-558-361'
                   );

INSERT INTO trener (
                       id,
                       ime,
                       priimek,
                       mail,
                       naslov,
                       telefon
                   )
                   VALUES (
                       210,
                       'Teja',
                       'Čeč',
                       'marilyne29@yahoo.com',
                       'Cesta Jaka Platiše 9, 4000 Kranj',
                       '00386-645-559-34'
                   );

INSERT INTO trener (
                       id,
                       ime,
                       priimek,
                       mail,
                       naslov,
                       telefon
                   )
                   VALUES (
                       211,
                       'Petra',
                       'Remic',
                       'greenholt.michaela@hotmail.com',
                       'Pot na Jošta 59,Stražišče',
                       '00386-705-550-9872'
                   );

INSERT INTO trener (
                       id,
                       ime,
                       priimek,
                       mail,
                       naslov,
                       telefon
                   )
                   VALUES (
                       212,
                       'Mia',
                       'Krampl',
                       'cronin.dejon@hotmail.com',
                       'Pot na Jošta 113. Stražišče',
                       '00386-645-553-499'
                   );

INSERT INTO trener (
                       id,
                       ime,
                       priimek,
                       mail,
                       naslov,
                       telefon
                   )
                   VALUES (
                       213,
                       'Tonja',
                       'Oman Sajovic ',
                       'esta.watsica@sawayn.com',
                       'Hotemaže 120, 4205 Preddvor',
                       '00386-415-559-387'
                   );

INSERT INTO trener (
                       id,
                       ime,
                       priimek,
                       mail,
                       naslov,
                       telefon
                   )
                   VALUES (
                       214,
                       'Brina',
                       'Đerković',
                       'schamberger.moises@botsford.net',
                       'Hotemaže15, 4205 Preddvor',
                       '00386-715-553-60'
                   );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
