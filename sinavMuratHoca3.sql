use sinavGaleri

--1
select *,Fiyat*20/100+Fiyat from Arac
select * from arac
update Arac set Fiyat = fiyat + fiyat * 20/100
--2
update Arac set Fiyat = fiyat + fiyat * 20/100 where  convert( int ,DATEPART (YEAR, GETDATE())) - model < 3
--3
select Madi +' '+ Msoyadi from Musteri order by Madi +' '+ Msoyadi 

--4 --tam olmad�
select CONVERT(nvarchar,sat_Tarihi) +' '+ CONVERT(nvarchar,Fiyat) as [ikisi bir] from Musteri,Arac,Satis where musteri.mno= Satis.mno and Satis.Aracno=Arac.aracno and Musteri.mno in (1,4,7) and arac.aracno in (1,2,5) order by sat_Tarihi desc

--5
select SUBSTRING(Madi,1,1)+'.'+Msoyadi from Musteri

--6
select AlimNo,mno,Aracno,DATEPART(MONTH, alim_Tarihi) as [aya g�re],Afiyat from alim  order by DATEPART(MONTH, alim_Tarihi) asc,Afiyat desc

--7
select SUBSTRING(Madi,1,1)+' '+Msoyadi from Musteri where len(Msoyadi) >5 order by Madi
--8 --olmad�
select mno,madi,msoyadi,madres,Mtelefon from Musteri  

--9
select * from Satis where sat_Tarihi between '2008-01-01' and '2010-12-31' and  DATEPART(MONTH,sat_Tarihi) >2 and DATEPART(MONTH,sat_Tarihi) <5
--10
select sum(Sfiyati) from Satis where sat_Tarihi between '2008-01-01' and '2010-12-31' and  DATEPART(MONTH,sat_Tarihi) >2 and DATEPART(MONTH,sat_Tarihi) <5
--11 -- tam de�il fark�n� anlayamad�m
select sum(Sfiyati) as [toplam fiyat],AVG(Sfiyati) as [ort fiyat] from Satis where sat_Tarihi between '2008-01-01' and '2010-12-31' and  DATEPART(MONTH,sat_Tarihi) >=1 and DATEPART(MONTH,sat_Tarihi) <9
--12
select top 1 marka,model,fiyat from Arac
--13
select max(Fiyat)-MIN(Fiyat) as [aralar�ndaki fark] from Arac
--14
select DATEPART(year,alim_Tarihi) as [y�l] ,count(AlimNo) as [alim sayisi] from alim where alim_Tarihi between '2010-01-01' and '2010-12-31' group by DATEPART(year,alim_Tarihi)
select * from alim
--15
select * from Satis where sat_Tarihi between '2008-01-01' and '2010-12-31' 

--16
select * from alim where DATEDIFF(MONTH,alim_Tarihi,GETDATE()) > 6

--17
select DATENAME(dw,sat_Tarihi) from Satis 