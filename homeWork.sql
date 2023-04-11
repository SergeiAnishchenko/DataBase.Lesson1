CREATE DATABASE skypro5;
CREATE TABLE employee
(
    id         BIGSERIAL   NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    gender     VARCHAR(8)  NOT NULL,
    age        INT         NOT NULL
);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Алексей', 'Корнеев', 'Мужчина', 38), ('Иван', 'Егоров', 'Мужчина', 28), ('Андрей', 'Зайцев', 'Мужчина', 31);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Иван', 'Егоров', 'Мужчина', 28);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Андрей', 'Зайцев', 'Мужчина', 31);

SELECT * FROM employee;

UPDATE employee SET first_name = 'Елена', last_name = 'Васильева', gender = 'Женщина', age = 35 WHERE id = 1;

SELECT * FROM employee;

DELETE FROM employee WHERE id = 2;

SELECT * FROM employee;


INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Виктор', 'Иванов', 'Мужчина', 48);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Анна', 'Терехова', 'Женщина', 22);

SELECT * FROM employee;

SELECT first_name AS Имя,
last_name AS Фамилия
FROM employee;

SELECT * FROM employee WHERE age < 30 OR age > 50;

SELECT * FROM employee WHERE age BETWEEN 30 AND 50;

SELECT * FROM employee
ORDER BY last_name DESC;

SELECT * FROM employee WHERE CHAR_LENGTH (first_name)  > 4;

SELECT * FROM employee;

UPDATE employee SET first_name = 'Елена' WHERE id = 6;
UPDATE employee SET first_name = 'Андрей' WHERE id = 4;

SELECT first_name AS Имя,
SUM(age) AS Суммарный_возраст
FROM employee GROUP BY Имя;

SELECT first_name AS Имя,
MIN (age) AS Самый_юный_возраст
FROM employee GROUP BY Имя;

SELECT first_name AS Имя,
MAX (age) AS Максимальный_возраст
FROM employee GROUP BY Имя
HAVING COUNT (first_name) > 1
ORDER BY Максимальный_возраст;



CREATE TABLE city
(
    city_id   BIGSERIAL NOT NULL PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL
);

INSERT INTO city (city_name)
VALUES ('Волгоград'), ('Смоленск'),('Кировск'),('Санкт-Петербург'),('Москва');

ALTER TABLE employee
ADD city_id INT REFERENCES city(city_id);

ALTER TABLE employee
DROP city_id;

UPDATE employee SET city_id = 1 WHERE id = 3;
UPDATE employee SET city_id = 2 WHERE id = 1;
UPDATE employee SET city_id = 3 WHERE id = 5;
UPDATE employee SET city_id = 4 WHERE id = 6;
UPDATE employee SET city_id = 5 WHERE id = 4;

INSERT INTO city (city_name) VALUES ('Мурманск');
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Юлия', 'Иванова', 'Женщина', 29);

SELECT employee.first_name, employee.last_name, city.city_name FROM employee JOIN city ON employee.city_id = city.city_id;
SELECT city.city_name, employee.first_name, employee.last_name FROM city LEFT OUTER JOIN employee ON city.city_id = employee.city_id;
SELECT employee.first_name, city.city_name FROM employee FULL OUTER JOIN city ON employee.city_id = city.city_id;
SELECT employee.first_name, city.city_name FROM employee CROSS JOIN city;

SELECT city.city_name FROM employee RIGHT OUTER JOIN city ON employee.city_id = city.city_id WHERE city.city_id IS NOT NULL AND employee.id IS NULL;










