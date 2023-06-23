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