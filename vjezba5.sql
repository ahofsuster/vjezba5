drop database if exists vjezba5;

create database vjezba5;

use vjezba5;


create table pitanje (
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
datum datetime,
unio int)
;

create table odgovor(
sifra int not null primary key auto_increment,
pitanje int,
tekst varchar(60) not null,
tocno boolean,
odgovorio int
);

create table operater(
sifra int not null primary key auto_increment,
ime varchar (20) not null,
prezime varchar(25) not null
);


alter table odgovor add foreign key (pitanje) references pitanje (sifra) ;
alter table odgovor add foreign key (odgovorio) references operater (sifra) ;

alter table pitanje add foreign key (unio) references operater (sifra) ;


insert into operater (sifra,ime,prezime) values
(null,'Petar','Malica'),
(null,'Luka','Mak');

insert into pitanje (sifra,naziv,datum,unio) values
(null,'pitanje1','01-12-2015',2),
(null,'pitanje2','02-12-2015',1),
(null,'pitanje3','03-12-2015',1),
(null,'pitanje4','04-12-2015',1),
(null,'pitanje5','05-12-2015',2),
(null,'pitanje6','06-12-2015',1),
(null,'pitanje7','07-12-2015',2);

insert into odgovor (sifra,pitanje,tekst,tocno,odgovorio) values
(null,1,'tekst1',TRUE,1),
(null,2,'tekst2',FALSE,1),
(null,3,'tekst3',FALSE,2),
(null,4,'tekst4',TRUE,2),
(null,5,'tekst5',TRUE,1),
(null,6,'tekst6',TRUE,1),
(null,7,'tekst7',FALSE,2);



select * from operater;
select * from pitanje;
select * from odgovor;