--CHECK, SQL'de kullanılan bir kısıttır ve bir tablodaki sütunlara uygulanabilir. 
--CHECK kısıtı, bir sütunun alabileceği değerleri belirlemek için kullanılır. 
--Belirli bir koşulu sağlayan değerler sütuna eklenebilirken, koşulu sağlamayan değerler kabul edilmez.

--CHECK kısıtı, veri bütünlüğünü sağlamak ve istenmeyen değerlerin tabloya eklenmesini engellemek için kullanılır. 
--Bir CHECK kısıtı uygulandığında, sütunda kabul edilebilecek değerler, belirli bir koşulu karşılamalıdır. 
--Eğer CHECK kısıtına sahip bir sütuna, koşulu sağlamayan bir değer eklemeye çalışırsanız, bir hata alırsınız ve ekleme işlemi gerçekleşmez.


CREATE TABLE employee (
    id INTEGER,
    name VARCHAR(50),
    age INTEGER CHECK (age >= 18),
    salary DECIMAL(10, 2) CHECK (salary > 0)
);

--Employees şeklinde bir tablomuzu oluşturalım. Tablodaki age sütununda bulunan verilerin 18'e eşit veya büyük olmasını istiyoruz.
CREATE TABLE Employees (     
    age INTEGER CHECK (age>=18)
);
