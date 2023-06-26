--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  birthday DATE,
  email VARCHAR(100)
);


--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (name, email, birthday) values ('Darelle', 'dtabbitt0@psu.edu', '2004-01-13');
insert into employee (name, email, birthday) values ('Hoyt', 'hlestrange1@tripod.com', '1913-01-04');
insert into employee (name, email, birthday) values ('Sheridan', 'scaddie2@about.com', '1911-04-20');
insert into employee (name, email, birthday) values ('Mathias', 'mmarrian3@canalblog.com', '1952-01-21');
insert into employee (name, email, birthday) values ('Darsey', 'dcressingham4@themeforest.net', '1908-12-09');
insert into employee (name, email, birthday) values ('Bobbie', 'bwiddocks5@odnoklassniki.ru', '1920-08-07');
insert into employee (name, email, birthday) values ('Freddy', 'fseres6@netvibes.com', '1914-10-15');
insert into employee (name, email, birthday) values ('Hersch', 'hbugg7@huffingtonpost.com', '1971-01-02');
insert into employee (name, email, birthday) values ('Hetti', 'htolwood8@time.com', '1915-04-19');
insert into employee (name, email, birthday) values ('Wilow', 'wrings9@pbs.org', '1900-07-28');
insert into employee (name, email, birthday) values ('Cristal', 'csaladinea@google.com', '2017-07-11');
insert into employee (name, email, birthday) values ('Andi', 'astannasb@loc.gov', '2021-04-01');
insert into employee (name, email, birthday) values ('Gerry', 'gsaunierc@unblog.fr', '1932-08-02');
insert into employee (name, email, birthday) values ('Janice', 'jjacobowiczd@comcast.net', '1954-03-25');
insert into employee (name, email, birthday) values ('Pia', 'pcroxalle@infoseek.co.jp', '1983-12-24');
insert into employee (name, email, birthday) values ('Boyd', 'beverardf@ihg.com', '1959-05-27');
insert into employee (name, email, birthday) values ('Johnna', 'jreadshallg@utexas.edu', '1960-01-26');
insert into employee (name, email, birthday) values ('Moreen', 'mbenallackh@list-manage.com', '1960-04-30');
insert into employee (name, email, birthday) values ('Colin', 'cjosefsi@cnbc.com', '2017-04-07');
insert into employee (name, email, birthday) values ('Amabel', 'apendryj@amazon.de', '1965-06-26');
insert into employee (name, email, birthday) values ('Rubie', 'rmacgeaneyk@bloglines.com', '1905-07-11');
insert into employee (name, email, birthday) values ('Kiele', 'ktrytsmanl@macromedia.com', '1965-02-23');
insert into employee (name, email, birthday) values ('Garwin', 'grashleighm@webmd.com', '2021-02-06');
insert into employee (name, email, birthday) values ('Gavrielle', 'gvallensn@sourceforge.net', '1964-05-23');
insert into employee (name, email, birthday) values ('Bettine', 'btarzeyo@constantcontact.com', '1937-08-25');
insert into employee (name, email, birthday) values ('Wilton', 'wmerrissonp@redcross.org', '1940-02-04');
insert into employee (name, email, birthday) values ('Alfie', 'adimmneq@dot.gov', '1920-08-26');
insert into employee (name, email, birthday) values ('Wheeler', 'wdennittsr@usa.gov', '2020-07-21');
insert into employee (name, email, birthday) values ('Darren', 'dtoffolonis@businessinsider.com', '1964-12-02');
insert into employee (name, email, birthday) values ('Rollin', 'riveaght@uol.com.br', '1900-09-16');
insert into employee (name, email, birthday) values ('Margit', 'mgoldbergu@noaa.gov', '2007-10-29');
insert into employee (name, email, birthday) values ('Louis', 'labbav@macromedia.com', '1998-04-20');
insert into employee (name, email, birthday) values ('Paddy', 'pmargarsonw@weather.com', '2004-08-28');
insert into employee (name, email, birthday) values ('Theressa', 'tjerochx@instagram.com', '1952-09-17');
insert into employee (name, email, birthday) values ('Homerus', 'hlorkingsy@independent.co.uk', '2010-05-10');
insert into employee (name, email, birthday) values ('Gabriellia', 'gronanz@cbc.ca', '1910-03-04');
insert into employee (name, email, birthday) values ('Fidelia', 'fedmand10@paypal.com', '1924-11-16');
insert into employee (name, email, birthday) values ('Hallie', 'hsheehan11@yahoo.com', '2011-10-19');
insert into employee (name, email, birthday) values ('Roxana', 'rperel12@freewebs.com', '1989-02-12');
insert into employee (name, email, birthday) values ('Andrew', 'aprantoni13@oracle.com', '1931-10-04');
insert into employee (name, email, birthday) values ('Jessa', 'jormerod14@alibaba.com', '1950-11-11');
insert into employee (name, email, birthday) values ('Allx', 'adicte15@smh.com.au', '1949-12-27');
insert into employee (name, email, birthday) values ('Julie', 'jbreckin16@google.de', '1970-10-30');
insert into employee (name, email, birthday) values ('Idelle', 'ispilsted17@nyu.edu', '2003-02-01');
insert into employee (name, email, birthday) values ('Myca', 'mjiruch18@vkontakte.ru', '1974-10-20');
insert into employee (name, email, birthday) values ('Melli', 'mscotchbourouge19@youku.com', '1919-06-26');
insert into employee (name, email, birthday) values ('Amanda', 'atarpey1a@wp.com', '2021-06-11');
insert into employee (name, email, birthday) values ('Felicity', 'fwoolaston1b@networksolutions.com', '1927-01-07');
insert into employee (name, email, birthday) values ('Yankee', 'ycancott1c@ox.ac.uk', '1958-05-01');
insert into employee (name, email, birthday) values ('Kienan', 'khinkens1d@fc2.com', '1974-12-27');


--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET name = 'UPDATED NAME',
	birthday = '2023-12-30',
	email = 'updated@asd.com'
WHERE id < 6	
RETURNING *

--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE name = 'UPDATED NAME' AND
	birthday = '2023-12-30' AND
	email = 'updated@asd.com'
RETURNING *