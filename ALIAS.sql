--ALIAS, SQL sorgularında sütun adları, tablo adları veya toplamsal fonksiyonlar için alternatif bir isim veya takma ad oluşturmak için kullanılan bir mekanizmadır. 
--ALIAS, sorgu sonuçlarını daha anlamlı veya okunabilir hale getirmek, sütun veya tablo adlarını kısaltmak veya karmaşık ifadeleri daha kolay yönetilebilir hale getirmek amacıyla kullanılır.
--ALIAS, AS anahtar kelimesiyle birlikte kullanılır ve genellikle sütun adı veya tablo adı takip eden AS ifadesinden sonra belirtilen alternatif adı ifade eder. 
--Sorgu sonuçlarında, ALIAS kullanıldığında, belirtilen alternatif ad görüntülenir.

--OZET 
--AS anahtar kelimesi sayesinde sorgular sonucu oluşturduğumuz sanal tablo ve sütunlara geçici isimler verebiliriz.

-- Sütun kullanımı
SELECT <sütun_adı> AS <geçici_ad>
FROM <tablo_adı>;

-- Tablo kullanımı
SELECT <sütun_adı>, <sütun_adı>...
FROM <tablo_adı> AS <geçici_ad>;

-- sutun isimlerini ve tablo ismini AS kullanarak gecici isimler verdik
SELECT country_id AS ülke_kodu, last_update AS son_guncelleme FROM city AS SEHİR
GROUP BY ülke_kodu , son_guncelleme