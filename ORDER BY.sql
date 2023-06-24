--ORDER BY ifadesi, SQL sorgularında sonuç kümesini belirli bir sütuna göre sıralamak için kullanılan bir ifadedir. 
--Sıralama, artan (ascending) veya azalan (descending) şekilde yapılabilir.

SELECT <sütun_adı>, <sütun_adı>, ...
FROM <tablo_adı>
ORDER BY <sütun_adı>, <sütun_adı>, ... ASC|DESC;

-- film tablosundaki tüm sütunları title sütununda bulunan verilere göre artan (ASC) şeklinde sıralıyoruz.
SELECT *
FROM film
ORDER BY title (ASC);

-- film id lerini azalana doğru sıraladık
SELECT *
FROM film
ORDER BY film_id DESC

--Sıralama birden fazla sütuna göre de yapılabilir. Aşağıdaki örneğimizde sıralama title sütununa göre artan length sütununa göre azalan şeklinde yapılıyor.
--Dikkat etmeniz gereken nokta, ORDER BY ifadesi sadece bir kez kullanılmalıdır ve sıralama yapmak istediğiniz sütunları doğru şekilde belirtmelisiniz.

SELECT *
FROM film
ORDER BY title ASC, length DESC;


--film tablosundaki, length, rental_rate, title sütunlarını sırasıyla artan, azalan ve azalan şeklinde sıraladık. ve sadece A ile başlayanları
--Order by kosullardan sonra kullanılır
SELECT length, rental_rate,title
FROM film
WHERE title LIKE 'A%'
ORDER BY rental_rate ASC, length DESC, title DESC