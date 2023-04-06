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
VALUES ('Алексей', 'Корнеев', 'Мужчина', 38);

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
