-- Change
USE pdom2;

-- Cleanup (to uncomment)
-- DROP TABLE countries;
-- CREATE TABLE IF NOT EXISTS countries (
--     country_id SMALLINT NOT NULL UNIQUE,
--     country_name VARCHAR(100) NOT NULL,
--     region_id VARCHAR(6) NOT NULL
-- );

-- Zadanie 1
-- Napisz instrukcję SQL, która wstawi rekord z własną wartością do tabeli krajów w każdej kolumnie.
INSERT INTO
    countries
VALUES
    (0, 'USA', 'US-AL');

-- Zadanie 2
-- Napisz instrukcję SQL, która wstawi jeden wiersz do tabeli krajów w kolumnie country_id i country_name.
INSERT INTO
    countries
VALUES
    (1, 'Poland', NULL);
-- Wynik: ERROR 1048 (23000) at line 21: Column 'region_id' cannot be null


-- Zadanie 3
-- Napisz instrukcję SQL, która wstawi 3 wiersze za pomocą jednej instrukcji wstawiania.
INSERT INTO
    countries
VALUES
    (1, 'Poland', 'PL-02'),
    (2, 'Germany', 'DE-BY'),
    (3, 'India', 'IN-PB');