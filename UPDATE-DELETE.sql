--UPDATE: UPDATE ifadesi, bir veya daha fazla tablodaki mevcut verileri güncellemek için kullanılır. 
--Veritabanında belirli bir tabloya ait kayıtların bir veya daha fazla sütununu değiştirmek veya güncellemek için kullanılır.

CREATE TABLE my_apps (
	id INT,
	name VARCHAR(50),
	price VARCHAR(50)
);
INSERT INTO my_apps (id, name, price) values (1, 'Ronstring', '$0.96');
INSERT INTO my_apps (id, name, price) values (2, 'Duobam', '$3.44');
INSERT INTO my_apps (id, name, price) values (3, 'Tresom', '$2.21');
INSERT INTO my_apps (id, name, price) values (4, 'Redhold', '$2.52');
INSERT INTO my_apps (id, name, price) values (5, 'Y-find', '$9.14');

UPDATE <tablo_adı>
SET <sütun_adı> = değer, 
    <sütun_adı> = değer,
WHERE <koşul_adı>;

-- SET ifadesiyle güncellenecek sütun ve değeri belirtilir, WHERE ifadesiyle de hangi kayıtların güncelleneceği filtrelenir.
UPDATE my_apps
SET name = 'Uguri',
	price = '$100',
WHERE id = 1	

-- first_name L ile başlıyorsa güncelleme yapıyoruz
UPDATE author
SET first_name = 'XXXX',
	last_name = 'YYYY'
WHERE first_name LIKE 'L%'	

SELECT first_name,COUNT(*) as Kisi_Sayıs FROM author
GROUP BY first_name
HAVING first_name LIKE 'X%'

-- Returnıng sayesinde ilgili verinin satırı bize gösterilir
UPDATE author
SET last_name = 'UPDATED'
WHERE first_name = 'Haruki'
RETURNING *


-- Silme işlemi söz dizimi
DELETE FROM <tablo_adı>
WHERE koşul

DELETE FROM my_apps
WHERE name = 'Ugurcan';