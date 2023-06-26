--SQL'de bir tablo oluşturmak için CREATE TABLE ifadesini kullanırız. 
--Tablo oluştururken tablonun adını, sütunları ve sütunların veri tiplerini belirtmemiz gerekmektedir. İşte bir örnek tablo oluşturma sorgusu:

CREATE TABLE <tablo_adı> (
    <sütun_adı> <veri_tip> kısıtlama_adı>,
    <sütun_adı> <veri_tip> kısıtlama_adı>,
   ....
);

CREATE TABLE author (
  id SERIAL PRIMARY KEY, -- serial, id'nin artmasını sağlar
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100)
  birthday DATE
);


--Tabloyu silmek istediğimizde kullanırız
DROP TABLE <tablo adı>

--Hata almak istemezsek ıf exists kullanırız
DROP TABLE IF EXISTS <tablo adı>