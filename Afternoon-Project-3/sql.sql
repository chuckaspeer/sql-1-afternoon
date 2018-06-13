------------------Table-People-------------------------

//1.
CREATE TABLE Person (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name varchar (32),
  age integer,
  height integer, 
  city varchar(50),
  favorite_color varchar (50));

//2.
INSERT INTO Person (first_name, age, height, city, favorite_color)
VALUES ('Brian', 45, 175, 'Harleton', 'Blue'), 
('Eric', 26, 173, 'Dallas', 'pink'), 
('Ashlyn', 22, 100, 'Pittsburg','orange'),
('John', 32, 150, "Dallas","black"),
('Rhana', 36, 154, "New York", 'red');

//3.
SELECT * From Person ORDER BY height Desc;

//4.
SELECT * FROM PERSON ORDER BY height asc;

//5.
SELECT * FROM PERSON ORDER BY AGE DESC;

//6.
SELECT * FROM PERSON WHERE AGE > 20;

//7.
SELECT * FROM PERSON WHERE AGE = 18;

//8. 
SELECT * FROM PERSON WHERE age < 20 or age > 30;

//9.
SELECT * FROM PERSON WHERE age != 27;

//10.
SELECT * FROM PERSON WHERE favorite_color != "red";

//11.
SELECT * FROM PERSON WHERE favorite_color = "red";

//12.
SELECT * FROM PERSON WHERE favorite_color = 'green' or favorite_color = 'orange';

//13.
SELECT * FROM PERSON WHERE favorite_color IN ('orange', 'green', 'Blue');

//14.
SELECT * FROM PERSON WHERE favorite_color IN ('yellow', 'purple');


//-------------------Table Order-------------------
//1.
 SELECT * FROM Orders;

//2.
INSERT INTO Orders (product_name, product_price, quantity)
VALUES ('chair', 100, 45),
('table', 250, 12),
('couch', 450, 8),
('loveseat', 300, 6),
('tv_table', 200, 7);

//3.
SELECT * FROM Orders;

//4. 
SELECT SUM(quantity) from orders;

//5.
SELECT SUM (product_price) from orders;
//6.
SELECT SUM (product_price * quantity) from orders Where id =1;

//---------------------Artist---------------------------

//1.
INSERT INTO Artist (Name)
VALUES ("Brian Speer"),
("Jessica Alyss"),
("Clint Echols");

//2.
SELECT name FROM Artist order by name desc limit 10 offset 10;

//3. 
SELECT name FROM Artist order by name limit 5 offset 10 ;

//4.
SELECT * FROM Artist WHERE name LIKE 'Black%';

//5.
SELECT * FROM Artist WHERE name LIKE '%black%'; 


----------------------Emplyee------------------------------

//1.
SELECT FirstName, LastName FROM Employee where city in ('Calgary');

//2.
 SELECT FirstName, LastName, Min(BirthDate) FROM Employee;

//3.
 SELECT FirstName, LastName, Max(BirthDate) FROM Employee;

 //4.
 SELECT * FROM Employee where ReportsTo = 2;

 //5.
 SELECT Count(*) FROM Employee where city = 'Lethbridge';

 ------------------Invoice---------------------------------
 //1.
SELECT COUNT(*) FROM Invoice where BillingCountry = "USA";

 //2.
SELECT Max(Total) FROM Invoice ;

 //3.
 SELECT Min(Total) FROM Invoice;

 //4.
 SELECT Total FROM Invoice where Total > 5;

 //5.
 SELECT Total FROM Invoice where Total < 5;

 //6.
 SELECT Count(*) FROM Invoice where BillingState in ('CA', 'TX', 'AZ');

//7. 
SELECT avg(Total) FROM Invoice ;

//8.
SELECT SUM(Total) FROM Invoice ;