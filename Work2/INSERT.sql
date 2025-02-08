
USE orchestra

INSERT INTO Employee (ID, FirstName, LastName, BirthDate) VALUES
(1, 'yosi', 'mizrahi', '1990-05-15'),
(2, 'avi', 'biton', '1985-09-20'),
(3, 'malcha', 'peretz', '1978-12-10'),
(4, 'dudu', 'dahan', '1993-04-25'),
(5, 'david', 'avraham', '1980-08-03'),
(6, 'sarah', 'fridman', '1995-11-12'),
(7, 'mike', 'tal', '1987-06-30'),
(8, 'emma', 'bar', '1998-02-18'),

(9, 'joe', 'kats', '1995-02-18'),
(10, 'janna', 'david', '1993-04-10'),
(11, 'bar', 'hadad', '1988-03-13'),
(12, 'may', 'amar', '1993-02-15'),
(13, 'elad', 'levi', '1995-01-18'),
(14, 'john', 'cohen', '1999-05-22'),
(15, 'jack', 'Taylor', '1987-05-25'),
(16, 'ben', 'aflalo', '2001-07-01'),

(17, 'braha', 'dahan', '1991-09-05'),
(18, 'nomi', 'shemer', '1992-11-10'),
(19, 'yafa', 'barak', '1995-10-11'),
(20, 'barak', 'harel', '1994-11-29'),
(21, 'shlomi', 'biton', '1988-12-20'),
(22, 'saimon', 'zur', '1985-01-18'),
(23, 'adi', 'levi', '1997-02-14'),
(24, 'gabi', 'cohen', '1999-03-19');

-- Musician table
INSERT INTO Musician (IDMusician, PhoneNumber, JoinDate) VALUES
(1, '054-456-7890', '2010-08-15'),
(2, '052-654-3210', '2008-06-20'),
(3, '052-123-4567', '2015-02-10'),
(4, '054-222-3333', '2018-09-05'),
(5, '050-888-7777', '2012-11-30'),
(6, '054-555-6666', '2017-04-25'),
(7, '052-999-3333', '2014-07-12'),
(8, '054-444-2222', '2017-01-18');

-- Composer table
INSERT INTO Composer (IDComposer, Genres, HourlyPay) VALUES
(9, 'Classical', 50.00),
(10, 'Jazz', 60.00),
(11, 'Rock', 70.00),
(12, 'Pop', 55.00),
(13, 'Electronic', 65.00),
(14, 'Folk', 45.00),
(15, 'Blues', 75.00),
(16, 'Hip Hop', 80.00);

-- Manager table
INSERT INTO Manager (IDManager, ManagerNumber) VALUES
(17, 1001),
(18, 1002),
(19, 1003),
(20, 1004),
(21, 1005),
(22, 1006),
(23, 1007),
(24, 1008);

-- Mails table
INSERT INTO Mails (IDManager, Mails) VALUES
(17, 'braha123@gmail.com'),
(17, 'braha124@gmail.com'),
(18, 'nomi123@gmail.com'),
(19, 'yafa123@gmail.com'),
(20, 'barak113@gmail.com'),
(20, 'barak114@gmail.com'),
(21, 'shlomi555@gmail.com'),
(22, 'saimon546@gmail.com'),
(23, 'adi557@gmail.com'),
(24, 'gabi88@gmail.com');

INSERT INTO Instruments (NameMusicalInstrument, Color, Musical_Instrument_Size) VALUES
('Piano', 'Black', 30),
('Violin', 'Brown', 12),
('Trumpet', 'Golden', 13),
('Drums', 'Blue', 16),
('Guitar', 'Red', 20),
('Flute', 'Silver', 5),
('Saxophone', 'Gold', 19),
('Cello', 'Brown', 21);

-- MusicalComposition table
INSERT INTO MusicalComposition (MusicalCompositionNumber, LengthMusicalComposition, IDComposer) VALUES 
(1, '04:30:00', 9),
(2, '03:45:00', 10),
(3, '05:15:00', 11),
(4, '03:00:00', 12),
(5, '06:20:00', 13),
(6, '04:10:00', 14),
(7, '05:50:00', 15),
(8, '03:30:00', 16);

-- Performance table
INSERT INTO Performance (Dateperformance, NamePerformance) VALUES
('2020-03-01', 'Spring Concert'),
('2021-06-15', 'Summer Gala'),
('2022-09-30', 'Fall Festival'),
('2019-12-25', 'Christmas Special'),
('2023-02-14', 'Valentine Symphony'),
('2022-05-10', 'Spring Serenade'),
('2022-08-20', 'Summer Soiree'),
('2023-11-28', 'Fall Harmony');

-- MusicianPlaysInstruments table
INSERT INTO MusicianPlaysInstruments (IDMusician, NameMusicalInstrument) VALUES
(1, 'Piano'),
(2, 'Violin'),
(3, 'Trumpet'),
(4, 'Guitar'),
(5, 'Drums'),
(6, 'Flute'),
(7, 'Saxophone'),
(8, 'Cello');

-- MusicalPieceINPerformance table
INSERT INTO MusicalPieceINPerformance (MusicalCompositionNumber, DataPerformance, PriceShow) VALUES
(1, '2020-03-01', 50.00),
(2, '2021-06-15', 60.00),
(3, '2022-09-30', 70.00),
(4, '2019-12-25', 55.00),
(5, '2023-02-14', 65.00),
(6, '2022-05-10', 45.00),
(7, '2022-08-20', 75.00),
(8, '2023-11-28', 80.00);

-- Musical_InstrumentINCreation table
INSERT INTO Musical_Instrument_IN_Musical_Composition (NameMusicalInstrument, MusicalCompositionNumber) VALUES
('Piano', 1),
('Violin', 2),
('Trumpet', 3),
('Drums', 4),
('Guitar', 5),
('Flute', 6),
('Saxophone', 7),
('Cello', 8);

-- Prize table
INSERT INTO Prize (NumberPrize, PrizeAmount, MusicalCompositionNumber, DatePerformance) VALUES
(1, 500.00, 1, '2020-03-01'),
(2, 600.00, 2, '2021-06-15'),
(3, 700.00, 3, '2022-09-30'),
(4, 550.00, 4, '2019-12-25'),
(5, 650.00, 5, '2023-02-14'),
(6, 450.00, 6, '2022-05-10'),
(7, 750.00, 7, '2022-08-20'),
(8, 800.00, 8, '2023-11-28');