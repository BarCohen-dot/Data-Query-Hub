
Create Database orchestr_official
GO

USE orchestr_official
GO

GO


create table Show( 
dateofShow datetime primary key,
nameofShow varchar(20));

create table worker(
ID int primary key,
firstname varchar(20),
lastname varchar(20),
dateofBirth datetime);

create table Musician(
ID int primary key  FOREIGN KEY REFERENCES worker(ID),
phone varchar(20),
dateofJoining datetime,
);

create table Composer(
ID int primary key  FOREIGN KEY REFERENCES worker(ID),
hoursum money,
genre varchar(20) );

create table Manager(
ID int primary key  FOREIGN KEY REFERENCES worker(ID),
managerNumber int);

create table Manageremails(
ID int FOREIGN KEY REFERENCES Manager(ID),
emails varchar(20),
primary key(ID,emails));

create table instrument(
instrumentName varchar(20)  primary key,
size int unique,
color varchar(20) default 'white');

create table instrumentofMusical(
ID int FOREIGN KEY REFERENCES Musician(ID),
instrumentName varchar(20) FOREIGN KEY REFERENCES instrument(instrumentName),
primary key(ID,instrumentName));

create table Piece(
pieceID int primary key IDENTITY(10,3),
pieceLength int,
ComposerID int FOREIGN KEY REFERENCES Composer(ID) ON DELETE SET NULL);

create table ShowinConcert(
pieceID int FOREIGN KEY REFERENCES piece(pieceID),
dateofShow datetime fOREIGN KEY REFERENCES Show(dateofShow),
amountofMoney money,
primary key(pieceID,dateofShow));

create table Award(
awardNumber int primary key,
amount money check(amount between 0 and 10000),
pieceID int,
dateofShow datetime,
FOREIGN KEY (pieceID,dateofShow) REFERENCES ShowinConcert(pieceID,dateofShow));


create table instrumentsInPiece(
pieceID int FOREIGN KEY REFERENCES piece(pieceID),
instrumentName varchar(20) FOREIGN KEY REFERENCES instrument(instrumentName),
primary key(pieceID,instrumentName)
)



