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
