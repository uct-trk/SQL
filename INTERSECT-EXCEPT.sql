--INTERSECT:
--"INTERSECT" operatörü, iki sorgunun sonuç kümesinde kesişen (ortak olan) verileri almak için kullanılır. 
--Yani, INTERSECT operatörü ile birleştirilen sorguların sonuçları arasında yer alan ve her iki sorgunun sonucunda da bulunan benzersiz satırları elde edersiniz.


SELECT sütun1, sütun2, ...
FROM tablo1

INTERSECT

SELECT sütun1, sütun2, ...
FROM tablo2;


--EXCEPT:
--"EXCEPT" operatörü, birinci sorgunun sonucunda bulunan ancak ikinci sorgunun sonucunda olmayan verileri elde etmek için kullanılır. 
--Yani, EXCEPT operatörü ile birleştirilen ilk sorgunun sonucunda bulunan benzersiz satırları alırsınız ve ikinci sorgunun sonucunda bulunan satırları çıkarırsınız.

SELECT sütun1, sütun2, ...
FROM tablo1

EXCEPT

SELECT sütun1, sütun2, ...
FROM tablo2;


--INTERSECT ve EXCEPT operatörleri, sorguların sonuç kümesindeki satırları tekrar etmeyen (benzersiz) satırlarla işlem yapar.
--INTERSECT ve EXCEPT operatörleri, sorgular arasında aynı sütun sayısına ve türüne sahip olmalıdır.
--INTERSECT ve EXCEPT operatörleri, bazı veritabanı yönetim sistemlerinde desteklenmeyebilir. Bu nedenle, kullanılabilirliğini doğrulamak için veritabanı sistemine göre belgeleri kontrol etmek önemlidir.



(
SELECT * FROM book
ORDER BY page_number DESC
LIMIT 5
)
INTERSECT -- iki farklı sorgunun kesişimini bulduk
(
SELECT * FROM book
ORDER BY title
LIMIT 5
)


(
SELECT * FROM book
ORDER BY page_number DESC
LIMIT 5
)
EXCEPT -- ilk sorguda bulunan ikinci sorguda bulunmayan
(
SELECT * FROM book
ORDER BY title
LIMIT 5
)
