create database orchestra -- הרצה ראשונה
-------------------------------
use orchestra 
-------------------------------
CREATE TABLE Employee ( -- עובד
    ID int PRIMARY KEY, -- PK
    FirstName varchar(25),
    LastName varchar(25),
    BirthDate date,
);
------------------------------------------------------------------------
CREATE TABLE Musician ( -- נגן/מוזיקאי
    IDMusician int PRIMARY KEY, -- נגדיר מפתח ראשי 
    PhoneNumber varchar(25),
    JoinDate date,
    FOREIGN KEY (IDMusician) REFERENCES Employee(ID), -- לאחר מכן נגדיר מאיפה לקחנו אותו (מהאבא)
);
------------------------------------------------------------------------
CREATE TABLE Composer ( -- מלחין
    IDComposer int PRIMARY KEY,
    Genres varchar(25),
    HourlyPay money,
    FOREIGN KEY (IDComposer) REFERENCES Employee(ID),
);
------------------------------------------------------------------------
CREATE TABLE Manager ( -- מנהל
    IDManager int PRIMARY KEY,
    ManagerNumber int,
    FOREIGN KEY (IDManager) REFERENCES Employee(ID),
);
------------------------------------------------------------------------
CREATE TABLE Mails ( -- מיילים
    IDManager int,
    Mails varchar(30) PRIMARY KEY, -- PK
    FOREIGN KEY (IDManager) REFERENCES Manager(IDManager), -- PFK
);
------------------------------------------------------------------------
CREATE TABLE Instruments ( -- כלי נגינה
    NameMusicalInstrument varchar(25) PRIMARY KEY,
    Color varchar(10) DEFAULT 'white',
    Musical_Instrument_Size int UNIQUE,
);
------------------------------------------------------------------------
CREATE TABLE MusicalComposition ( -- יצירה מוסיקלית
    MusicalCompositionNumber int PRIMARY KEY ,
    LengthMusicalComposition time,
    IDComposer int,
    FOREIGN KEY (IDComposer) REFERENCES Composer(IDComposer) ON DELETE SET NULL, 
);
------------------------------------------------------------------------
CREATE TABLE Performance ( -- הופעה
    Dateperformance date PRIMARY KEY,
    NamePerformance varchar(25),
);
------------------------------------------------------------------------
CREATE TABLE MusicianPlaysInstruments ( -- מוזיקאי מנגן בכלי נגינה
    IDMusician int,
    NameMusicalInstrument varchar(25),
    PRIMARY KEY (IDMusician, NameMusicalInstrument),

    FOREIGN KEY (IDMusician) REFERENCES Musician(IDMusician),
    FOREIGN KEY (NameMusicalInstrument) REFERENCES Instruments(NameMusicalInstrument),
);
------------------------------------------------------------------------
CREATE TABLE MusicalPieceINPerformance ( -- יצירה שנוגנה בהופעה N:M => למרות הקיבוץ ניצור טבלה
    MusicalCompositionNumber int, -- מפתחות ראשיים תמיד צריכים להיות מחוץ לארגומנט כנ״ל גם זרים
    DataPerformance date, 
    PriceShow money, -- תכונת קשר
    PRIMARY KEY (MusicalCompositionNumber, DataPerformance), -- לאחר מכן נזכיר אותם כאן ביחד

    FOREIGN KEY (MusicalCompositionNumber) REFERENCES MusicalComposition(MusicalCompositionNumber),
    FOREIGN KEY (DataPerformance) REFERENCES Performance(Dateperformance),
);
------------------------------------------------------------------------
CREATE TABLE Musical_Instrument_IN_Musical_Composition ( -- מרכיבי כלי הנגינה ביצירה
    NameMusicalInstrument varchar(25),
    MusicalCompositionNumber int,
    PRIMARY KEY (NameMusicalInstrument, MusicalCompositionNumber), -- PFK
    FOREIGN KEY (NameMusicalInstrument) REFERENCES Instruments(NameMusicalInstrument),
    FOREIGN KEY (MusicalCompositionNumber) REFERENCES MusicalComposition(MusicalCompositionNumber),
);
------------------------------------------------------------------------
CREATE TABLE Prize ( -- פרס
    NumberPrize int PRIMARY KEY,
    PrizeAmount money CHECK (PrizeAmount >= 0 AND PrizeAmount <= 10000),
    MusicalCompositionNumber int,
    DatePerformance date,
    FOREIGN KEY (MusicalCompositionNumber, DatePerformance) REFERENCES MusicalPieceINPerformance(MusicalCompositionNumber, DataPerformance),
);  -- בגלל שהם באים מאותו הטבלה אז פירקנו את הטיפוסים הזרים לצורך הגדרה ולאחר מכן איחדנו אותם -- FK
------------------------------------------------------------------------
