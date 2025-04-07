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
