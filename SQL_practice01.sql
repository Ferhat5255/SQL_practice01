CREATE TABLE ogrenciler 
(
	id INT,
	isim VARCHAR(40),
	adres VARCHAR(100),
	sinav_notu INT
);

INSERT INTO ogrenciler VALUES (120,'Ali Can','Ankara',75);
INSERT INTO ogrenciler VALUES(121,'Veli Mert','Trabzon',85);
INSERT INTO ogrenciler VALUES(122,'Ayse Tan','Bursa',65);
INSERT INTO ogrenciler VALUES(123,'Derya Soylu','Istanbul',95);
insert into ogrenciler values(124, 'Yavuz Bal', 'Ankara', 85);
insert into ogrenciler values(125, 'Emre Gül', 'Hatay', 90);
insert into ogrenciler values(126, 'Harun Reşit', 'Isparta', 100);

SELECT * FROM ogrenciler;

--SORU 1 : ogrenciler tablosundaki id ve isim sütununu getiriniz
SELECT id,isim FROM ogrenciler;

--SORU 2 : Sınav notu 80'den büyük olan öğrencilerin tüm bilgilerini listele
SELECT * FROM ogrenciler WHERE sinav_notu>80;

--SORU 3 : Adresi Ankara olan ögrencilerin tüm bilgilerini listele
SELECT * FROM ogrenciler WHERE adres='Ankara';

--SORU 4 : Sınav notu 85 ve adresi Ankara olan öğrenci ismini listele
SELECT isim FROM ogrenciler WHERE sinav_notu=85 and adres='Ankara';

--SORU 5: Sınav notu 65 veya 85 olan ogrencilerin tüm bilgilerini listele
SELECT * FROM ogrenciler WHERE sinav_notu=65 OR sinav_notu=85;
SELECT * FROM ogrenciler WHERE sinav_notu IN (65,85);

--SORU 6 : Sınav notu 65 ve 85 arasında olan ogrencilerin tüm bilgilerini listele
SELECT * FROM ogrenciler WHERE sinav_notu BETWEEN 65 AND 85;

--SORU 7 : id'si 122 ve 125 arasında olmayan ögrencilerin isim ve sınav notu listele
SELECT isim, sinav_notu FROM ogrenciler WHERE id NOT BETWEEN 122 AND 125;

--SORU 8 : sinav_notu 75 olan satırı siliniz
DELETE FROM ogrenciler WHERE sinav_notu=75;

--SORU 9 : adres'i Trabzon olan satırı siliniz
DELETE FROM ogrenciler WHERE adres='Trabzon';

--SORU: ismi Derya Soylu veya Yavuz Bal olan satırları siliniz
DELETE FROM ogrenciler WHERE isim='Derya Soylu' OR isim = 'Yavuz Bal';







































































