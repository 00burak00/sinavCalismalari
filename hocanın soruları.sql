--employ tabloasundaki t�m kay�tlar� g�r�n�z
--employ tablosundaki adres �ehir postakodu
--employ tablosunda �lkesi amerika olanlar� g�r�nt�le
--emloy tablosunda employ adresi 5 ten b�y�k olanlar
--toplam ka� employer var 
--ka� farkl� �ehirde ya��yor employerlar
--reportisto 2 5 7 olanlar� listele
--�al��anlar�n�n soyadlar�n�n ka�ar karakterden olu�tu�unu bulan
--extension� en b�y�k olan �al��an� bulmak
--extetntionu en k���k olan� listele
--�ehirlerin ilk 3 harfin listeleyen
--�al��anlar�n isimleri b�y�k harfe �eviren 

use NORTHWND
--
select * from Employees
--
select address, City, postalcode from Employees
--
select count(*) from Employees where Country='USA' 
select * from Employees where Country='USA'
--
select * from Employees where EmployeeID > 5
--
select Count(*) from Employees
--
select distinct(city) from Employees
--
select * from Employees where ReportsTo in (2,7,7)
--
select len(lastname) as [soyad Karakter Say�s�] from Employees
--
select max(Extension) as [extension en b�y�k] from Employees
--
select min(extension) as [en k���k] from employees
--
select SUBSTRING(City,1,3) as [�ehirlerin ilk �� harfi] from employees
select left(City,3) as [�ehirlerin ilk �� harfi] from employees
select upper( Firstname) as [isimlerin B�y�k harfleri] from employees