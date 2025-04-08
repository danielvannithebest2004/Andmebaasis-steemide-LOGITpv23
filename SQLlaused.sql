--kommentaar 
-- SQL SERVER Management Studio
Server Name 
CREATE DATABASE vanniLogITPV23;
USE vanniLogITPV23;

--tabeli loomine 
--identity (1,1)-ise täidab tabeli 1,2,3...
CREATE TABLE inimene(
inimeneID int  Primary Key identity (1,1),
nimi varchar(50) unique,
sünniaeg date,
telefon char(12),
pikkus decimal(5,2),
õpilaskodu bit
);
SELECT * FROM inimene;

-- tabeli kutsutamine 
DROP table inimene;





CREATE DATABASE vanniLogITPV23;
USE vanniLogITPV23;

--tabeli loomine 
--identity (1,1)-ise täidab tabeli 1,2,3...
CREATE TABLE inimene(
inimeneID int  Primary Key identity(1,1),
nimi varchar(50) unique,
sünniaeg date,
telefon char(12),
pikkus decimal(5,2),
õpilaskodu bit
);
SELECT * FROM inimene;

-- tabeli kutsutamine 
DROP table inimene;

--andmete lisamine 
--DDL - data definition language 
--DML - data manipulation language 

INSERT INTO inimene
(nimi, sünniaeg, telefon, pikkus, õpilaskodu)
VALUES
('Peeter Uus', '2021-12-30', '2568952' , 90.5 , 0 ),
('Kaarel Oja', '2000-12-30', '2568952' , 90.5 , 0 ),
('Kask Mati', '1983-12-30', '3333' , 140.5 , 0 ),
('Peeter Otja', '2021-12-30', '2568952' , 190.5 , 0 )
;

SELECT * FROM inimene; 
--kutsuta id=3
DELETE FROM inimene 
WHERE inimeneID=3



CREATE TABLE  elukoht(elukohtID int PRIMARY KEY IDENTITY(1,1),
elukoht varchar (50) UNIQUE,
maakond varchar (50)
);
SELECT * FROM elukoht;
--andmete lisamine tabeli elukoht 
INSERT INTO elukoht (elukoht,maakond)
VALUES ('TARTU','TARTUMAA'),
('PÄRNU','PÄRNUMAA'),
('TALLINN','HARJUMAA');

--tabeli muutmine  uue veergu lisamine 
ALTER TABLE inimene ADD elukohtID int;
SELECT * FROM inimene;
--foreign key lisamine 
Alter table inimene
ADD Constraint fk_elukoht 
FOREIGN KEY (elukohtID) 
references elukoht(elukohtID);

SELECT * FROM inimene;
SELECT * FROM elukoht;

INSERT INTO inimene
(nimi, sünniaeg, telefon,pikkus, õpilaskodu, elukohtID)
VALUES
('Peeter Viis', '2021-12-30', '2568952' , 90.5 , 0, 3 ),
('Kaarel Ojav', '2000-12-30', '2568952' , 90.5 , 0, 3 ),
('Kask Matilda', '1983-12-30', '3333' , 140.5 , 0  ,34),
('Peeter Otjak', '2021-12-30', '2568952' , 190.5 , 0, 3 )
;
SELECT * FROM inimene join elukoht
on inimene.elukohtID=elukoht.elukohtID;

select inimene.nimi  inimene.sünniaeg, elukoht.elukoht from inimene join elukoht 
on inimene.elukohtID=elukohtID;

select i.nimi, i.sünniaeg, e.elukoht
from inimene i join elukoht e
on i.elukohtID=e.elukohtID

SELECT * FROM auto;



CREATE TABLE auto(
autoID int PRIMARY KEY IDENTITY(1,1),
autoNR int UNIQUE,
mudel VARCHAR (50),
mark VARCHAR  (50),
v_aasta int UNIQUE
);

INSERT INTO auto(autoNR, mudel, v_aasta)
VALUES ('KL657', 'a-class', 'mercedes', '2004'),
('KL666', 's-class', 'mercedes', '2002'),
('KG567', 'c-class', 'mercedes', '2001';


select a.autoNR, a.mudel, a.mark, a.v_aasta 
from auto a join  inimene i 
on 
on i.elukohtID=e.elukohtID;

select * from auto 

insert into 
(nimi,sünniaeg,teefon,pikkus,õpilaskodu,elukohtdID,autoID)
values ('ssl', '2002' , '1414214' , 100.00, 0, 1, 1)

select i.nimi, a.v_aasta, a.mark, a.model
from inimene i join auto a 
on i.elukohtID=autoID;

DROP tabele auto;

DELETE FROM inimene
WHERE inimeneID=3


