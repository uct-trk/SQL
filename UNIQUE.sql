--UNIQUE, SQL'de kullanılan bir kısıttır ve bir tablodaki sütunlara uygulanabilir. 
--UNIQUE kısıtı, bir sütunda yalnızca benzersiz (tekrarlamayan) değerlere izin verir. 
--Bu kısıt, aynı değerin sütunda birden fazla kez bulunmasını engeller.

--UNIQUE kısıtı, veri bütünlüğünü sağlamak ve veritabanı tablosunda tekrarlanan değerleri önlemek için kullanılır. 
--Bir UNIQUE kısıtı uygulandığında, bu kısıt altındaki sütunlara eşsiz değerler atanmalıdır. 
--Eğer UNIQUE kısıtına sahip bir sütunda aynı değeri iki kez eklemeye çalışırsanız, bir hata alırsınız ve ekleme işlemi gerçekleşmez.

CREATE TABLE person (
    id INTEGER,
    name VARCHAR(50) UNIQUE,
    email VARCHAR(100) UNIQUE
);

--NOT: UNIQUE kısıtı, her bir sütunun benzersiz değerlere sahip olmasını sağlar. 
--Eğer birden fazla sütunun birlikte benzersiz olması gerekiyorsa, bunun için UNIQUE kısıtını birden fazla sütuna uygulamak gerekmektedir.
