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

