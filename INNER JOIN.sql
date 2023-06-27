--JOIN, ilişkili tablolar arasında veri birleştirmek için kullanılan bir SQL operasyonudur. 
--İki veya daha fazla tablo arasındaki ilişkiyi kullanarak verileri birleştirir ve sonuç olarak yeni bir sonuç kümesi oluşturur.

--INNER JOIN, JOIN operasyonunun bir türüdür. 
--INNER JOIN, tablolar arasında eşleşen kayıtları döndürür. 
--Bu operasyonda, birleştirme işlemi yalnızca eşleşen verileri içeren sonuç kümesini döndürür. 
--Eşleşmeyen verileri veya NULL değerleri içermeyen kayıtlar sonuç kümesine dahil edilmez.

--INNER JOIN kullanımı genellikle iki tablo arasındaki ilişkiyi temel alarak ilişkili verileri birleştirmek için kullanılır. 
--İki tablo arasındaki ortak bir sütun veya anahtar kullanılarak eşleştirme yapılır ve sonuçta sadece eşleşen kayıtlar döndürülür. 
--Bu sayede ilişkili verileri birleştirerek daha kapsamlı sorgular yapabiliriz.

--ÖZET
-- 2 adet küme düşünelim INNER JOIN 
--Kesişen elemanları verileri gösterir

SELECT <sütun_adı>, <sütun_adı>
FROM <tablo1_adı>
INNER JOIN <tablo2_adı>
ON <tablo1_adı>.<sütun_adı> = <tablo2_adı>.<sütun_adı>;

-- book tablosunu author tablosuyla birleştirdik
-- iki id birbirine eşit olan veriler gösterildi
SELECT * FROM book
INNER JOIN author ON book.author_id = author.id