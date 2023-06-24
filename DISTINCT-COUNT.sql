
--DISTINCT
--DISTINCT: SQL'de DISTINCT anahtar kelimesi, bir sorgudan dönen sonuç kümesinde yinelenen değerleri kaldırmak için kullanılır. 
--Bu, bir sütunda yinelenen değerlerin yalnızca bir kez görüntülenmesini sağlar. 
--DISTINCT anahtar kelimesi, bir veya birden çok sütunda kullanılabilir. 
--Örneğin, SELECT DISTINCT column_name FROM table_name şeklinde bir sorgu kullanılarak, belirli bir sütundaki yinelenen değerlerin bir kez görüntülenmesi sağlanır.


--film tablosundaki replacement_cost, rental_rate gibi sütunlar birbirini tekrar eden verilerden oluşmaktadır. 
--Bazı durumlarda bir sütun içerisinde bulunan farklı değerleri görmek isteriz.
--sorgusu bize rental_rate sütununda bulunan birinden farklı 2.99, 0.99, 4.99 verilerini gösterir.
SELECT DISTINCT rental_rate 
FROM film;

-- film tablosundaki replacement cost sutunundaki birbirinden farklı olan verileri getirir
SELECT DISTINCT replacement_cost
FROM film


--COUNT
--COUNT: SQL'de COUNT fonksiyonu, bir sorgudan dönen satır sayısını hesaplamak için kullanılır. 
--Genellikle bir tablodaki kayıt sayısını belirlemek veya belirli bir sorgunun sonucunda dönen satır sayısını elde etmek için kullanılır. 
--COUNT fonksiyonu, bir sütunda yer alan yinelenen olmayan değerleri saymak veya tüm satırları saymak için kullanılabilir. 
--Örneğin, SELECT COUNT(*) FROM table_name şeklinde bir sorgu kullanılarak, bir tablonun toplam satır sayısı elde edilebilir. 
--Ayrıca, SELECT COUNT(column_name) FROM table_name şeklinde bir sorgu ile belirli bir sütunda yinelenen olmayan değerlerin sayısı elde edilebilir.

--ancak veri sayısını bulmak istersek COUNT fonksiyonunu kullanırız.
SELECT COUNT(*)
FROM actor
WHERE first_name = 'Penelope';

-- Adı A ile başlayan aktorlerin sayısını bulduk
SELECT COUNT(*)
FROM actor
WHERE first_name LIKE 'A%';


--DISTINCT VE COUNT BIRLIKTE KULLANIMI
-- Birbirinde farklı kaç tane aktor ismi olduğunun sayısını bulduk
SELECT COUNT(DISTINCT first_name)
FROM actor