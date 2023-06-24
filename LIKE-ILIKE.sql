--LIKE operatörü: SQL sorgularında metin tabanlı desen eşleştirmesi yapmak için kullanılır. 
--Desen eşleştirmesinde joker karakterleri (% ve _) kullanılabilir. % joker karakteri, herhangi bir karakter veya karakter dizisinin yerine geçebilirken, _ joker karakteri, yalnızca tek bir karakterin yerine geçer. 
--Büyük/küçük harf duyarlıdır.

--film tablosundan "title" sütununda "A" harfiyle başlayan müşterileri seçmek istediğinizi varsayalım:

SELECT *
FROM film
WHERE title LIKE 'A%';

--Baş harfi C ile başlayan ve uzunluğu 80 ve 90 arasında olan verileri getirir
SELECT *
FROM film
WHERE title LIKE 'C%' AND length BETWEEN 80 AND 90 

-- C ile başlayan _ anlamı  karakter tutucu olarak görev yapmaktadır
SELECT *
FROM film
WHERE title LIKE 'C_b%'

-- C ile başlayan ve sadece bir karakter daha olacaktır yani yoplamda 2 karakterli olan verileri getirir. Eğer _ den sonra yüzde kullansaydık iki karakterden fazlada olabilecek verileri getirir.
SELECT *
FROM film
WHERE title LIKE 'C_'

--ILIKE operatörü: ILIKE, LIKE operatörünün case-insensitive (büyük/küçük harf duyarsız) bir sürümüdür. 
--Desen eşleştirmesini gerçekleştirirken büyük/küçük harf farkını göz ardı eder.

SELECT *
FROM film
WHERE title ILIKE 'A%';