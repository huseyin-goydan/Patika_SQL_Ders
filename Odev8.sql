--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    birthdate DATE,
    email VARCHAR(100)
);
--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
INSERT INTO employee (name, birthdate, email) VALUES
('Angelico', '1986-01-11', 'asunnex0@free.fr'),
('Oralee', '1952-02-08', 'olefeuvre1@tripod.com'),
('Matt', NULL, 'mcrinion2@hugedomains.com'),
('Stacy', NULL, 'smoulsdale3@time.com'),
('Archibald', '1970-05-23', 'aearwicker4@netlog.com'),
('Bryant', '1981-07-10', 'bcorser5@mac.com'),
('Patin', '1983-11-27', 'pjinkin6@berkeley.edu'),
('Vincenty', '1948-01-31', 'vioannou7@princeton.edu'),
('Tanya', '1902-11-25', 'tthring8@google.co.uk'),
('Hetty', '1921-09-15', 'hwheelhouse9@xing.com'),
('Joletta', '1969-05-28', 'jmoara@marriott.com'),
('Chaunce', '1908-06-04', 'cscandrickb@lycos.com'),
('Adelaide', '1900-11-06', 'abartelsc@dion.ne.jp'),
('Hamish', '1914-02-09', 'halthorped@hexun.com'),
('Jacques', NULL, 'jpittsone@mediafire.com'),
('Gun', '1938-10-25', 'ggreatrexf@chronoengine.com'),
('Tallulah', '1900-02-19', 'tduigang@squidoo.com'),
('Karine', '1947-01-22', 'kcosbeyh@mayoclinic.com'),
('Liane', '1991-10-26', 'lcuniffei@sfgate.com'),
('Portie', '1948-06-08', 'pcurrellj@bloomberg.com'),
('Patrizia', '1901-03-29', 'pmaskreyk@telegraph.co.uk'),
('Fiann', '1997-05-14', 'fstowel@sun.com'),
('Kristyn', '1991-10-24', 'kmerckm@posterous.com'),
('Osborne', '1952-11-01', 'oconyern@time.com'),
('Tibold', '1934-02-08', 'tviciosoo@kickstarter.com'),
('Carmina', NULL, NULL),
('Daffie', NULL, 'dwaplintonq@loc.gov'),
('Yardley', NULL, 'yarnoppr@bizjournals.com'),
('Alden', NULL, 'achomickis@behance.net'),
('Carmine', '1941-02-23', 'cwrattent@posterous.com'),
('Fitz', '1949-07-17', 'fmulheronu@oaic.gov.au'),
('Shaw', '1948-06-02', 'skoopv@netvibes.com'),
('Frederigo', '1967-02-18', 'famericiw@shop-pro.jp'),
('Bogey', '1993-01-21', 'bdominicaccix@diigo.com'),
('Georas', '1900-04-29', 'gmcwardy@technorati.com'),
('Torrey', '1917-11-18', 'tcleveleyz@cbc.ca'),
('Zane', '1962-03-29', 'zbarendtsen10@drupal.org'),
('Onida', '1919-03-17', 'okidby11@blinklist.com'),
('Gretta', '1937-12-01', 'gsymonds12@google.es'),
('Berti', '1929-08-16', 'bpigford13@qq.com'),
('Salaidh', '1937-02-27', 'sdevorill14@mlb.com'),
('Daisi', '1930-01-31', 'dgarroch15@ask.com'),
('Moses', '1911-03-05', 'mdowdeswell16@icq.com'),
('Stephanie', '1903-11-20', 'sclemo17@google.fr'),
('Merla', '1950-03-16', 'mnormanvill18@chicagotribune.com'),
('Tynan', '1951-10-16', 'tfursse19@sun.com'),
('Antin', '1969-05-15', 'aheberden1a@wikipedia.org'),
('Cristi', '1948-12-17', 'clogsdale1b@wsj.com'),
('Mona', '1959-03-04', 'mmaurice1c@ft.com'),
('Drusie', '1959-06-16', 'dwelton1d@cnbc.com');

--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee 
SET birthdate = '1990-05-15' 
WHERE name = 'Matt';

UPDATE employee 
SET email = 'new_email@domain.com' 
WHERE birthdate = '1948-01-31';

UPDATE employee 
SET name = 'Daphne' 
WHERE email = 'dwaplintonq@loc.gov';

UPDATE employee 
SET email = 'karine_new@mail.com', birthdate = '1950-07-15' 
WHERE name = 'Karine';

UPDATE employee 
SET name = 'Finn', email = 'finn_updated@mail.com' 
WHERE birthdate = '1997-05-14';


--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee 
WHERE name = 'Matt';

DELETE FROM employee 
WHERE birthdate = '1948-01-31';

DELETE FROM employee 
WHERE email = 'dwaplintonq@loc.gov';

DELETE FROM employee 
WHERE name = 'Karine';

DELETE FROM employee 
WHERE birthdate = '1997-05-14';