USE pdom2;

-- CZ 1
-- Cleanup (to uncomment)
-- DROP TABLE users;
DROP TABLE employees;

-- Zadanie 1:
-- Utwórz tabelę "users", która będzie posiadała następujące kolumny: USER_ID, FIRST_NAME, LAST_NAME, EMAIL
CREATE TABLE IF NOT EXISTS users (
    user_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    email VARCHAR(100)
);

-- Zadanie 2:
-- Dodaj do tabeli 10 różnych użytkowników
INSERT INTO
    users
VALUES
    (1, 'Jan', 'Kowalski', 'janek@wp.pl'),
    (2, 'Kamil', 'Zdun', 'kamil@gmail.com'),
    (3, 'Anna', 'Zdun', 'ania@o2.pl'),
    (4, 'A', 'B', 'ab@gmail.com'),
    (
        5,
        'Lukasz',
        'Kulakowski',
        'lukasz@kulakowski.dev'
    ),
    (6, 'C', 'D', 'cd@wp.pl'),
    (7, 'E', 'F', 'ef@gmail.com'),
    (8, 'G', 'H', 'ggg11@gmail.com'),
    (9, 'I', 'J', 'ijota@hotmail.com'),
    (10, 'K', 'L', 'klaus@gmail.com');

-- Zadanie 3
-- Zaktualizuj nazwisko Anny Zdun na Kowalska
UPDATE
    users
SET
    last_name = "Kowalska"
where
    first_name = "Anna"
    and last_name = "Zdun";

-- Zadanie 4:
-- Wyszukaj wszystkich użytkowników, których email zarejestrowany jest w usłudze gmail
SELECT
    *
FROM
    users
WHERE
    email LIKE '%@gmail.com';

-- CZ 2
-- Zadanie 1:
-- Zmodyfikuj tabelę "users" z poprzednich zadań, tak aby nazywała się "employees".
ALTER TABLE
    users RENAME employees;

-- Zadanie 2:
-- Dodaj nową kolumnę salary
ALTER TABLE
    employees
ADD COLUMN (
    salary DECIMAL(9, 2)
);

-- Zadanie 3:
-- Uzupełnij kolumnę salary u każdego z użytkowników na wartość 5000
UPDATE
    employees
SET
    salary = 5000;