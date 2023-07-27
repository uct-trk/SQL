--RIGHT JOIN yapısındaki tablo birleştirmesinde, birleştirme işlemi tablo 2 (sağdaki tablo) üzerinden gerçekleştirilir. 
--Senaryomuzu şu şekilde düşünelim eğer tablo 2 olarak author tablosunu aldığımızda öncelikle author tablosundaki ilgili sütundaki tüm verileri alacağız, sonrasında bu verilerin eşleştiği ilgili tablo 1 sütunundaki verileri alacağız. 
--Tablo 2 de olup Tablo 1 de olmayan veriler için NULL değeri kullanılır.


SELECT *
FROM sol_tablo
RIGHT JOIN sag_tablo
ON sol_tablo.ilgili_sutun = sag_tablo.ilgili_sutun;


--Aşağıdaki SQL sorgusunda yazar isim ve soyisim bilgilerinin tamamını alıyoruz, sonrasında eşleşebilen kitap isimlerini alıyoruz. 
--Yazar bilgilerine karşılık olmayan kitap isimleri için NULL değeri alıyoruz.

SELECT book.title, author.first_name, author.last_name
FROM book
RIGHT JOIN author
ON author.id = book.author_id;
