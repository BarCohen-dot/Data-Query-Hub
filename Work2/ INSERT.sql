USE orchestr_official
GO

insert into Show values ('20230101','Antretter'),('20230102','Clock'),('20230309','Domestica'),('20230401','The Fate of a Man'),('20231022','Hoffmeister'),('20230407','Heroes'),('20220407','Gran Partita'),('20230524','Gaelic'),('20230907','The Four Seasons')

insert into worker values (12345,'abigail','paradise','20850107'),
(12346,'dor','vit','19830101'),(22345,'yahav','meidan','19640801'),
(12347,'matan','shagan','20020101'),(15345,'yanai','cohen','20000701'),
(12348,'yan','shavit','19840101'),(12645,'yasmin','kabha','19700701'),
(12349,'noam','sak','19870501'),(12745,'gila','levi','19830601')

insert into Musician values(12345,'0509909931','20170901'),(12346,'0506565631','20130922'),(22345,'0523242431','20181001'),
(12347,'0509977731','20160501'),(15345,'0564646931','20190501')

insert into Composer values (12348,300,'pop'),(12645,400,'rock')

insert into Manager values (12349,1),(12745,2)

insert into Manageremails values (12349,'abi@gmail.com'),(12349,'abi@walla.com'),(12349,'abi@yvc.com'),(12349,'abi@hotmail.com'),
(12745,'bday@walla.com'),(12745,'bday@netvision.com'),(12745,'bday@nana.com')

insert into instrument values ('organ', 50,'yellow'),('violin', 60,'red'),('drum', 780,'pink'),('harp', 12,'yellow'),
('mandolin', 1,'black'),('clarinet', 5099,'yellow'),('bassoon', 87,'black'),('piano', 675,'blue'),('marimba', 123,'yellow'),
('flugelhorn', 41,'brown'),('tuba', 99,'blue'),('trombone', 67,'yellow'),('congas', 5,'gray'),('cornet', 546,'red')

insert into instrumentofMusical values (12345,'tuba'),(12345,'congas'),(12345,'cornet'),(12346,'tuba'),(12346,'organ'),(12346,'harp'),(22345,'marimba'),(12347,'piano'),(12347,'clarinet'),
(15345,'flugelhorn'),(15345,'tuba'),(15345,'congas'),(15345,'bassoon'),(15345,'marimba')

insert into Piece values  (23,12348),(35,12348),(36,12348),(37,12348),(38,12348),(39,12348),
(1,12645),(12,12645),(33,12645),(55,12645),(44,12645),(10,12645),(101,12645)

insert into ShowinConcert values (10,'20230101',1050),(13,'20230101',1300),(22,'20230101',1000),(25,'20230101',1000),(37,'20230101',1000),
(31,'20230102',3553),(34,'20230102',556),(37,'20230102',464),
(10,'20230309',234),
(13,'20230401',55),(25,'20230401',1000),
(25,'20231022',6464),(22,'20231022',2000),
(10,'20230407',464),(40,'20230407',20000),(43,'20230407',7855),(46,'20230407',200),
(46,'20220407',100), (25,'20220407',3000),(10,'20220407',5366),(22,'20220407',98),(31,'20220407',3666),(40,'20220407',36),(43,'20220407',467),
(13,'20230524',55),(43,'20230524',23), (22,'20230524',7654),
(46,'20230907',5454),(43,'20230907',6),(40,'20230907',7577),(22,'20230907',75757),(25,'20230907',666),(28,'20230907',987)

insert into Award values (11,5000,31,'20230102'),(22,6000,10,'20230407'),(33,7000,46,'20230907'),(44,8080,25,'20230907')

insert into instrumentsInPiece values (10,'organ'),(13,'organ'), (16,'organ'),(19,'organ'),
(22,'organ'),(25,'organ'),(28,'organ'),(31,'organ'),(34,'organ'),(37,'organ'),(40,'organ'),(43,'organ'),(46,'organ'),
(22,'drum'),(25,'drum'),(28,'drum'),
(40,'congas'),(43,'congas'),(46,'congas'),(10,'congas'),
(10,'mandolin'),(13,'mandolin'), (16,'mandolin'),
(31,'bassoon'),(34,'bassoon'),(37,'bassoon'),(40,'bassoon'),(43,'bassoon'),
(40,'piano'),(43,'piano'),(46,'piano')