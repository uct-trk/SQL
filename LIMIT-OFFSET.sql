--LIMIT: LIMIT ifadesi, sonuç kümesindeki kaç satırın seçileceğini belirlemek için kullanılır. 
--Örneğin, LIMIT 10 ifadesi, sonuç kümesinin ilk 10 satırını seçer. 
--LIMIT ifadesi, sorgu sonucu dönen satır sayısını sınırlamak için kullanışlıdır. 
--Örneğin, bir web sayfasında kullanıcıya 10 film göstermek istiyorsanız, LIMIT 10 ifadesini kullanarak sadece ilk 10 filmi seçebilirsiniz.

-- B ile başlayan en uzun 10 filmi listeledik
SELECT length, title,length
FROM film
WHERE title LIKE 'B%'
ORDER BY length DESC
LIMIT 10

-- Film tablosunda replacemen_cost 14.99,0.99 olan verileri uzunluğuna göre büyükten küçüğe doğru sıralayıp ilk 10 tanesini getirdik
SELECT *
FROM film
WHERE replacement_cost IN(14.99,0.99) 
ORDER BY length DESC
LIMIT 10

--OFFSET: OFFSET ifadesi, sonuç kümesindeki kaç satırın atlanacağını belirlemek için kullanılır. 
--Örneğin, OFFSET 10 ifadesi, sonuç kümesindeki ilk 10 satırı atlar ve bundan sonraki satırlardan itibaren seçim yapmaya başlar. 
--OFFSET ifadesi, sayfalama işlemlerinde sonuç kümesinde belirli bir sayfaya geçmek için kullanılır. 
--Örneğin, ikinci sayfayı göstermek istiyorsanız, LIMIT ile birlikte OFFSET 10 ifadesini kullanarak ilk 10 satırı atlayabilirsiniz.

--film tablosundan B ile başlayan filmleri uzunluklarına göre sıralayalım ancak en uzun 6 filmi "pass" geçelim ve sonrasındaki 4 filmi sıralayalım. Bu durumda LIMIT 4 ve OFFSET 6 olacak.
SELECT *
FROM film
WHERE title LIKE 'B%'
ORDER BY length DESC
OFFSET 6
LIMIT 4;

-- film tablosunda en uzun 10 filmi pas geçip devamındaki 10 ürünü gösterdik.
SELECT *
FROM film
WHERE replacement_cost IN(14.99,0.99) 
ORDER BY length DESC
OFFSET 10
LIMIT 10