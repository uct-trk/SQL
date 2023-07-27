--SQL'de "LEFT JOIN" (sol birleştirme), ilişkisel veritabanlarındaki tablolar arasında bağlantılar oluşturmak için kullanılan bir tür JOIN (birleştirme) işlemidir. 
--LEFT JOIN, tablo sütunlarını eşleştiren belirli bir koşulu sağlayan satırları iki tablodan birincisine göre getirir ve eşleşmeyen satırlar için NULL değerlerle doldurur.

--Genellikle, LEFT JOIN, sol taraftaki (ilk belirtilen) tablodaki tüm satırları ve bu satırların sağ taraftaki (ikinci belirtilen) tabloyla eşleşmelerini getirir. 
--Eğer sağ taraftaki tablo ile eşleşen bir satır yoksa, sol tablonun ilgili sütunları için NULL değerleri getirir. 
--Bu nedenle, LEFT JOIN, sol tablodaki verilerin tamamını korurken sağ tablo ile eşleşen verileri getirir.

SELECT *
FROM sol_tablo
LEFT JOIN sag_tablo
ON sol_tablo.ilgili_sutun = sag_tablo.ilgili_sutun;


SELECT title, first_name,last_name, author_id, page_number FROM author
LEFT JOIN book ON author.id = book.author_id
WHERE book.title IS NOT NULL
ORDER BY book.page_number ASC


