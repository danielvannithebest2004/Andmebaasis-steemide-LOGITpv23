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
