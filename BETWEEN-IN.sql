--BETWEEN operatörü, belirli bir aralıkta bulunan değerleri seçmek için kullanılan bir SQL operatörüdür. 
--BETWEEN operatörü, belirtilen iki değer arasında (dahil olmak üzere) olan değerleri döndürür.

-- "film" tablosunda bulunan "length" (uzunluk) sütununda 90 ile 120 arasında (dahil) olan filmleri seçmek istediğinizi varsayalım.
-- Aşağıdaki SQL sorgusu, BETWEEN operatörünü kullanarak bu seçimi yapacaktır:
SELECT *
FROM film
WHERE length BETWEEN 90 AND 120;

-- uzunluğu 90 ve 100 arasında ve dahiiler ve film_id 700 den buyuk olanlar
SELECT *
FROM film
WHERE length BETWEEN 90 AND 100 AND film_id > 700


SELECT *
FROM film
WHERE length BETWEEN 99 AND 100 AND film_id > 700 AND rental_rate BETWEEN 2.99 AND 4.99

--IN anahtar kelimesi, SQL sorgularında belirli bir değer listesine veya alt sorguya eşleşen verileri seçmek için kullanılan bir operatördür. 
--IN operatörü, bir sütunun birden çok değere sahip olup olmadığını kontrol etmek veya bir sütunun belirli bir değer listesine eşit olup olmadığını kontrol etmek için kullanılır.

-- uzunluğu sadece 40,50 ve 60 olanlar gelecekler
SELECT *
FROM film
WHERE length IN (40,50,60) --SELECT * FROM film WHERE length = 30 OR length = 60 OR length = 90 OR length = 120; çok uzun duruyor IN sayesınde kısalmış oldu