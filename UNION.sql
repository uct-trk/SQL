--SQL'de "UNION", birden fazla SELECT sorgusunun sonuçlarını birleştirmek için kullanılan bir operatördür. 
--UNION operatörü, her iki sorgunun sonuç kümesini bir araya getirirken, aynı sütun sayısına ve türüne sahip olan sorguları birleştirir.

--UNION, sorguların sonuç kümesini tekrar etmeyen (benzersiz) satırlarla birleştirir. Yani, aynı satırın birden fazla sorgu sonucunda yer almasını engeller.

-- UNIONDA sütun sayıları birbirine eşit olmak zorundadır
-- aynı zamanda veri tipleride birbirine uyumlu olmalıdır

SELECT sütun1, sütun2, ...
FROM tablo1
WHERE koşul1

UNION

SELECT sütun1, sütun2, ...
FROM tablo2
WHERE koşul2;


(
SELECT * FROM book
ORDER BY page_number DESC
LIMIT 5
)
UNION
(
SELECT * FROM book
ORDER BY title
LIMIT 5
)


--Kesişen elemanları da gösterir
(
SELECT * FROM book
ORDER BY page_number DESC
LIMIT 5
)
UNION ALL
(
SELECT * FROM book
ORDER BY title
LIMIT 5
)

