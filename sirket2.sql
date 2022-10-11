create database sirket2
use sirket2
create table Yonetici(
yonSosGno int not null primary key ,
yonAdiSoyadi nvarchar(20) not null
)
create table Bolum(
bolAd nvarchar(20) not null,
bolumNo int not null identity(1,1) primary key,
yonSosGno int not null foreign key references Yonetici(yonSosGno),
ylsbasTAr date not null,
sicilID int not null unique
)
create table personel(
sclNo int not null primary key,
sosGuvNo int not null,
ad nvarchar(20) not null,
soyad nvarchar(20) not null,
dtarih date default getdate() not null  ,
adres nvarchar(100) not null,
cins nvarchar not null,
maas smallmoney not null,
bolNo int not null foreign key references Bolum(bolumNo),
ySosGuvNo int not null foreign key references Yonetici(yonSosGno),
sosYard�m nvarchar default 'E' not null
)

insert into Yonetici values(0371,'Ali Kulak')
insert into Yonetici values(2771,'Caner Ard��')
insert into Yonetici values(2772,'Sanem Durdu')
insert into Yonetici values(5772,'Necati Yava�')
select * from Yonetici 
insert into Bolum values('Sat�s',0371,'1989-01-07',5)
insert into Bolum values('Muhasebe',2771,'1991-02-08',33)
insert into Bolum values('�retim',5772,'1995-05-05',55)
insert into Bolum values('Elektrik',2772,'2005-05-06',175)
select *from Bolum
insert into Personel values(5,6764,'Ali','Can','1960-05-01','Karabas mh. �zmit','E',7600,1,0371,'E')
insert into personel values(33,2764,'Serhat','Can','1960-05-01','Karabas mha.izmit','E',6666,3,5772,'E')
insert into Personel values(55,6764,'Naim','Can','1960-05-01','Karabas mh. �zmit','E',6600,2,2771,'E')
insert into Personel values(112,2764,'Berk','Can','1960-05-01','Karabas mh. �zmit','E',8800,4,2772,'H')
insert into Personel values(175,9674,'Aliye','Canan','1970-05-01','sakarya','K',6000,1,0371,'E')
insert into Personel values(217,1762,'Ak�n','�ncel','1965-07-11','�zmit','E',7700,2,2771,'H')

select * from personel

select max(maas) as [En y�ksek maa�] from personel  

--
select  ad,soyad,maas from personel where maas=(select max(maas) from personel) 
--her bir b�l�mden en y�ksek maas alan personel bilgileri
select* from Personel where maas in (select max(maas) from personel)


