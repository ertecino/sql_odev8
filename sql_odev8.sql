# sql_odev8

1. test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
   CREATE TABLE employee (
      id INTEGER PRIMARY KEY,
      name VARCHAR(50) NOT NULL,
      birthday DATE,
      email VARCHAR(100)
   );

2. Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
   -- Mockaroo servisinden 50 adet veri ekleme SQL kodu
   INSERT INTO employee (id, name, birthday, email) VALUES
   (1, 'Arlette Folker', '1968-04-07', 'afolker0@webs.com'),
   (2, 'Elora Barron', '1951-11-23', 'ebarron1@tmall.com'),
   ...
   (50, 'Selena Baudry', '1997-03-14', 'sbaudry1q@photobucket.com');
   
3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
   -- id'ye göre name, birthday ve email güncellemesi
   UPDATE employee
   SET name = 'John Doe', birthday = '1990-01-01', email = 'johndoe@example.com'
   WHERE id = 1;

   -- name'e göre id, birthday ve email güncellemesi
   UPDATE employee
   SET id = 51, birthday = '1985-05-15', email = 'janedoe@example.com'
   WHERE name = 'Jane Smith';

   -- birthday'e göre id, name ve email güncellemesi
   UPDATE employee
   SET id = 52, name = 'Bob Johnson', email = 'bobjohnson@example.com'
   WHERE birthday = '1975-09-20';

   -- email'e göre id, name ve birthday güncellemesi
   UPDATE employee
   SET id = 53, name = 'Alice Williams', birthday = '1992-12-31'
   WHERE email = 'alicewilliams@example.com';

   -- id, name, birthday ve email'i güncellemek
   UPDATE employee
   SET id = 54, name = 'Michael Brown', birthday = '1988-06-15', email = 'michaelbrown@example.com'
   WHERE id = 10;

4. Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
  -- id'ye göre satır silme
  DELETE FROM employee
  WHERE id = 2;
  
  -- name'e göre satır silme
  DELETE FROM employee
  WHERE name = 'Emily Davis';
  
  -- birthday'e göre satır silme
  DELETE FROM employee
  WHERE birthday = '1980-03-12';
  
  -- email'e göre satır silme
  DELETE FROM employee
  WHERE email = 'davidwilson@example.com';
  
  -- id, name, birthday ve email'e göre satır silme
  DELETE FROM employee
  WHERE id = 25 AND name = 'Jessica Thompson' AND birthday = '1995-07-01' AND email = 'jessicathompson@example.com';
