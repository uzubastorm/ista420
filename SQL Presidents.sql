--name: Aaron Person
--file:TSQL exercise 06
--Date: 09/10/2018

use TSQLV4

drop table if exists dbo.presidents;

create table dbo.presidents
(
lastname varchar(25),
firstname varchar(25),
middlename varchar(25),
datebirth date,
datedeath date,
statebirth varchar(25),
statehome varchar(25),
party varchar(50),
tookoffice date,
leftoffice date,
assatempt char(5),
asssec char(5),
religon varchar(25)
);
GO
select * from presidents;

bulk insert dbo.presidents from 'C:\Users\aaron\Desktop\ISTA420\exercises\pres.csv'
with
( DATAFILETYPE = 'char', 
FIELDTERMINATOR = ',',
 ROWTERMINATOR = '\n' );
 GO


 alter table dbo.presidents add pid integer unique not null identity(1,1);
 alter table dbo.presidents add constraint PK_presidents primary key (pid);
 select * from presidents;


 update dbo.presidents
 set leftoffice='2017-01-20',
  assatempt='false',
  asssec='false'
  where lastname='Obama'


  insert into dbo.presidents (lastname, firstname, middlename, datebirth,datedeath, statebirth,
  statehome, party, tookoffice, leftoffice, assatempt, asssec, religon)
  values ('Trump', 'Donald', 'John', '1946-06-14', null, 'New York', 'New York', 'Republican', '2017-01-20', null, null, null,'Presbyterian')


select statehome, count(*) as "number of people"
from presidents 
where party = 'party'
Group by statehome


PRINT DATEDIFF(day, 'tookoffice', 'leftoffice')


PRINT DATEDIFF(year, 'statebirth', 'tookoffice')


select party, count(*) as "number of people"
from presidents
where religon = 'Religon'
group by party 