--PRIMARY KEY (Birincil Anahtar): Birincil anahtar, bir tablodaki benzersiz tanımlayıcıdır. 
--Bir tablodaki her kayıtta yalnızca bir birincil anahtar değeri olabilir. 
--Birincil anahtar, verileri tekil olarak tanımlamak için kullanılır ve tablodaki diğer sütunlarla ilişkilendirilebilir. 
--Birincil anahtar genellikle bir veya daha fazla sütunu birleştirerek oluşturulur. 
--Bir tabloda birincil anahtar tanımlandığında, bu sütun veya sütunlar üzerinde benzersizlik ve değer boşluğu kısıtlamaları otomatik olarak uygulanır. 

--Birincil anahtar şunları sağlar:
--Verilerin benzersiz bir şekilde tanımlanmasını sağlar.
--Hızlı arama ve sıralama işlemlerini destekler.
--Diğer tablolardaki ilişkisel bağlantılar için bir referans noktası olarak kullanılabilir.

--Özet
--Benzersiz (Unique) olmalıdır.
--NULL değerine sahip olamaz.
--Bir tabloda en fazla 1 tane bulunur. !!!!!!! Benzersiz bir tanımlayıcı olarak kullanıyoruz
--Değiştirilemezler

CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);


--FOREIGN KEY (Yabancı Anahtar): Yabancı anahtar, bir tablodaki bir sütunu diğer bir tablodaki birincil anahtarla ilişkilendiren bir kısıtlamadır. 
--Yabancı anahtarlar, tablolar arasındaki ilişkileri kurmada kullanılır ve referans edilen tablodaki değerlere gönderme yaparlar. 
--Yabancı anahtarlar, veri bütünlüğünü sağlar ve ilişkisel bütünlüğü korumak için kullanılır. Yabancı anahtar şunları sağlar:

--İki tablo arasındaki ilişkileri belirtir ve tutarlılığı sağlar.
--İlişkili verilerin güncellenmesi ve silinmesi durumunda uygun eylemleri gerçekleştirir (CASCADE, SET NULL, RESTRICT vb.).
--Birden çok tablo arasında ilişkiler kurarak verilerin tutarlılığını sağlar.

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- İki tabloyu birşeltirdik bunun üzerinde sonradan konuşulacak
SELECT * FROM book
JOIN author ON author.id = book.author_id

