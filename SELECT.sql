--SELECT
--Sorgu (Query)
--SQL komutlarını içeren sorgu cümleleridir.

--Üzerine ilk konuşacağımız SQL komutu SELECT komutudur. SELECT en çok kullanılan SQL komutudur ve veritabanından belirtilen sütunlardaki verileri çekmemizi sağlar. 
--Ayrıca SELECT komutunu çoğunlukla diğer SQL komutlarıyla birlikte kullanırız.
--SQL komutlarının büyük harf - küçük harf duyarlılıkları yoktur. (Case Insensitive)


--SELECT <sütun_adı>, <sütun_adı>, ... FROM <tablo_adı>;

--Örnek Kullanımı
SELECT first_name, last_name FROM actor;