--WHERE anahtar kelimesi, SQL (Structured Query Language) sorgularında kullanılan bir koşul ifadesini belirtmek için kullanılır. 
--Bu ifade, veritabanı tablosundan belirli kayıtları seçmek için kullanılır. 
--WHERE ifadesi, sorgu sonucunu filtrelemek veya sınırlamak için kullanılan bir şart veya koşul belirtir.


SELECT <sütun_adı>, <sütun_adı>, ...
FROM <tablo_adı>
WHERE <koşul>;

SELECT name, age, department
FROM employees
WHERE age > 30;


-- aktor tablosundan first_name karakter sayısı 10'dan buyuk olanları getir
SELECT * FROM actor WHERE LENGTH(first_name) > 10;

-- aktor adı penelope olanı getir
SELECT * 
FROM actor 
WHERE first_name = 'Penelope';

-- rental rate 4.99'a eşit olmayanları getirir
SELECT * 
FROM film
WHERE rental_rate != 4.99;

-- ismi nick olan veya penelope olan kişilerşi getirir
SELECT first_name
FROM actor
WHERE first_name = 'Nick' OR first_name = 'Penelope'


-- Direkt ismi ve soyismini aradığımız kişi getirilir
SELECT first_name, last_name 
FROM actor
WHERE last_name = 'Pinkett' AND first_name = 'Penelope'

-- film_id 100 den kucuk ve 50 den buyuk olmalı
SELECT *
FROM film
WHERE  film_id  < 100 AND film_id > 50

--AND: İki veya daha fazla koşulu birleştirmek için kullanılır. İki koşul da sağlandığında, AND operatörü doğru sonucu döndürür.
SELECT * FROM employees WHERE age > 30 AND department = 'IT';

--OR: İki veya daha fazla koşuldan en az biri sağlandığında, OR operatörü doğru sonucu döndürür
SELECT * FROM employees WHERE department = 'IT' OR department = 'HR';

--NOT: Bir koşulu tersine çevirmek için kullanılır. Koşul doğruysa NOT operatörü yanlış sonucu döndürür, koşul yanlışsa doğru sonucu döndürür.
SELECT * FROM employees WHERE NOT department = 'IT';

-- durationu 7 olan ve uzunluğu 100 den buyuk olan ve başlangıcı C ile başlayanları getir
SELECT *
FROM film
WHERE rental_duration = 7 AND length > 100 AND SUBSTRING(title,1,1) = 'C'

-- durationu 7 olan ve uzunluğu 100 den buyuk olan ve başlangıcı C ile başlayanların hepsini NOT sayesinde getirme
SELECT *
FROM film
WHERE NOT (rental_duration = 7 AND length > 100 AND SUBSTRING(title,1,1) = 'C')
