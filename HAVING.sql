--HAVING, SQL sorgularında GROUP BY ifadesinden sonra kullanılan bir ifadedir. 
--HAVING, gruplama işleminden sonra sonuç kümesini filtrelemek için kullanılır. 
--WHERE ifadesiyle benzerlik gösterse de, HAVING gruplama sonrası işlemlerde kullanılırken, WHERE gruplama öncesi işlemlerde kullanılır.

--HAVING ifadesi, gruplama sonucu oluşan gruplar üzerinde bir koşula göre filtreleme yapmak için kullanılır. 
--Bu koşul, toplamsal fonksiyonlar veya gruplanmış sütunlar üzerinde gerçekleştirilebilir.


SELECT category, COUNT(*) as total_count
FROM products
GROUP BY category
HAVING COUNT(*) > 10;

--Yukarıdaki sorgu, "products" tablosundaki ürünleri kategoriye göre gruplar. Ardından, gruplanmış her bir kategori için ürün sayısını (COUNT(*)) hesaplar. 
--Sonra HAVING ifadesiyle, ürün sayısı 10'dan fazla olan kategorileri filtreler. 
--Sorgu sonucunda, toplam ürün sayısı 10'dan fazla olan kategorilerin adını ve ürün sayısını içeren satırlar elde edilir.

--ÖZET
-- HAVING gruplanmış verilere koşullar uygulanmasıdır.


--Film sayısı 325 ten buyuk olan rental_rate verilerini bulduk
SELECT  rental_rate,COUNT(*) FROM film
GROUP BY rental_rate
HAVING COUNT(*) > 325

-- Toplam miktarı 200 den buyuk olan customer_id musterisini grupladık ve en yuksekten kucuge dogru sıraladık
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200
ORDER BY SUM(amount) DESC