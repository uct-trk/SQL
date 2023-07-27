--Full JOIN yapısındaki tablo birleştirmesinde, birleştirme işlemi her iki tablo üzerinden gerçekleştirilir. 
--Senaryomuzu şu şekilde düşünelim eğer tablo 1 olarak book tablosunu aldığımızda öncelikle book tablosundaki ilgili sütundaki tüm verileri alacağız, sonrasında tablo 2 deki ilgili sütunlardan tüm verileri alacağız. 
--Tablo 1 de olup Tablo 2 de olmayan ve Tablo 2 de olup Tablo 1 de olmayan veriler için NULL değeri kullanılır.

SELECT <sütun_adı>, <sütun_adı> ... FROM <tablo1_adı>
FULL JOIN <tablo2_adı>
ON <tablo1_adı>.<sütun_adı> = <tablo2_adı>.<sütun_adı>;


SELECT book.title, author.first_name, author.last_name FROM book
FULL JOIN author
ON author.id = book.author_id;