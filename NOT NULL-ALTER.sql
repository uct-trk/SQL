--NOT NULL: NOT NULL kısıtı, bir sütunda null değerlerin kabul edilmediğini belirtir. 
--Bir sütuna NOT NULL kısıtı uygulandığında, bu sütuna değer atanması zorunlu hale gelir. 
--Böylece, o sütuna null değeri girilemez. Null, bir değerin yokluğunu veya bilinmediğini ifade eder. 
--NOT NULL kısıtı, veri bütünlüğünü sağlamak ve istenmeyen değer eksikliklerini önlemek için kullanılır.

CREATE TABLE person (
    id INTEGER,
    name VARCHAR(50) NOT NULL,
    age INTEGER NOT NULL
);


--ALTER: ALTER, mevcut bir veritabanı nesnesini (tablo, sütun, kısıt vb.) değiştirmek için kullanılan bir SQL ifadesidir. 
--ALTER komutu, veritabanı yapısında değişiklik yapmaya olanak tanır. 
--Örneğin, bir tabloya yeni bir sütun eklemek, mevcut bir sütunu değiştirmek, bir indeks eklemek veya silmek için ALTER ifadesi kullanılabilir.

ALTER TABLE person
ADD COLUMN email VARCHAR(100);

ALTER TABLE users 
ALTER COLUMN username
SET NOT NULL
