--GROUP BY, SQL sorgularında sonuçları belirli bir sütuna veya sütunlara göre gruplamak için kullanılan bir ifadedir. 
--Gruplama, benzer değerlere sahip satırların bir araya getirilmesini sağlar ve bu gruplar üzerinde toplamsal işlemler yapmanıza olanak tanır.

SELECT <sütun_adı>, <sütun_adı>, ... (veya aggregate func) FROM <tablo_adı>
GROUP BY <sütun_adı>, <sütun_adı>, ...

--Burada şuna dikkat etmemiz gerekir, SELECT anahtar kelimesinde bulunan sütunların GROUP BY anahtar kelimesi içerisinde bulunması gerekir.

SELECT category, COUNT(*) as total_count, AVG(price) as average_price
FROM products
GROUP BY category;

--Yukarıdaki sorgu, "products" tablosundaki ürünleri kategoriye göre gruplar. 
--Her bir kategori için, toplam ürün sayısını (COUNT(*)) ve ortalama fiyatı (AVG(price)) hesaplar.
-- Sonuç kümesi, kategoriye göre gruplanmış ve her bir kategori için ilgili hesaplamaları içeren satırlardan oluşur.

-- rental rate gore gruplama yaparız
SELECT rental_rate, COUNT(length) FROM film
GROUP BY rental_rate

-- rating e gore gruplama yaparız
SELECT rating, COUNT(*) FROM film
GROUP BY rating


--GROUP BY ifadesi, verileri segmentlere ayırmak ve grup bazlı analizler yapmak için kullanışlıdır. 
--Örneğin, bir e-ticaret sitesindeki siparişleri müşteriye göre gruplamak ve her bir müşteri için toplam harcama miktarını hesaplamak gibi durumlarda GROUP BY ifadesi kullanılabilir.

-- replacement_cost a karsılık gelen en kısa filmleri gösterir
SELECT replacement_cost, MIN(length) FROM film
GROUP BY replacement_cost

-- replacement_cost ve rental_rate gruplama yapıyor.
SELECT replacement_cost, rental_rate,MIN(length) FROM film
GROUP BY replacement_cost,rental_rate
ORDER BY rental_rate ASC


SELECT replacement_cost, rental_rate,MIN(length) FROM film
GROUP BY replacement_cost,rental_rate
ORDER BY MIN(length) DESC