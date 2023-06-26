--Aggregate (toplamsal) fonksiyonlar, SQL'de veri üzerinde bir gruplama yaparak, gruplar içindeki değerler üzerinde hesaplamalar yapmak için kullanılan fonksiyonlardır. 
--Bu fonksiyonlar, bir veri kümesinin toplamını, ortalama değerini, en yüksek veya en düşük değerini, sayısını veya diğer istatistiksel bilgilerini hesaplamak için kullanılır. 
--Aggregate fonksiyonlar, genellikle SELECT ifadesinde GROUP BY ifadesi ile birlikte kullanılırlar.

-- film tablosundaki rental_rate sütunundaki değerlerin toplamını hesaplar
SELECT SUM(rental_rate) FROM film;

-- film tablosundaki length sütunundaki değerlerin ortalamasını hesaplar
SELECT AVG(length) FROM film;

-- film tablosundaki length sütunundaki değerlerin ortalamasını hesaplar ve ROUND sayesinde yuvarlama yapar 3 yazdığımız için 3 karaktere kadar yuvarlar
SELECT ROUND(AVG(length), 3) FROM film;

-- film tablosundaki film_id sütunundaki benzersiz değerlerin sayısını hesaplar
SELECT COUNT(DISTINCT film_id) FROM film;

-- film tablosundaki release_year sütunundaki en yüksek değeri bulur
SELECT MAX(release_year) FROM film;

-- film tablosundaki release_year sütunundaki en düşük değeri bulur
SELECT MIN(release_year) FROM film;

-- rental rate 0.99 olan en uzun film
SELECT MAX(length) from film
WHERE rental_rate = 0.99

-- rental rate 0.99 ve 2.99 olan en uzun film
SELECT MAX(length) from film
WHERE rental_rate IN (0.99, 2.99)
