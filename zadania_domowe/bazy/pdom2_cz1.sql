-- Cleanup
-- DROP DATABASE pdom2;

-- Create database
CREATE DATABASE IF NOT EXISTS pdom2;

USE pdom2;

-- Zadanie 1
-- Napisz instrukcję SQL, która utworzy prostą tabelę krajów, zawierającą kolumny country_id, country_name i region_id.
CREATE TABLE countries (
    country_id SMALLINT,
    country_name VARCHAR(100),
    region_id VARCHAR(6)
);

-- Zadanie 2
-- Napisz instrukcję SQL, która utworzy prostą tabelę krajów (tylko wtedy gdy taka tabela nie istnieje), zawierającą kolumny country_id, country_name i region_id.
CREATE TABLE IF NOT EXISTS countries (
    country_id SMALLINT,
    country_name VARCHAR(100),
    region_id VARCHAR(6)
);

-- Zadanie 3
-- Napisz instrukcję SQL, która utworzy tabelę krajów (jeżeli nie istnieje), ale bez możliwości podania pustej wartości.
CREATE TABLE IF NOT EXISTS countries (
    country_id SMALLINT NOT NULL,
    country_name VARCHAR(100) NOT NULL,
    region_id VARCHAR(6) NOT NULL
);

-- Zadranie 4
-- Napisz instrukcję SQL, która utworzy tabelę o nazwie kraje, w tym kolumny country_id,
-- country_name i region_id i upewnij się, że w momencie wstawiania nie będą dozwolone
-- żadne zduplikowane dane w kolumnie country_id
CREATE TABLE IF NOT EXISTS countries (
    country_id SMALLINT NOT NULL UNIQUE,
    country_name VARCHAR(100) NOT NULL,
    region_id VARCHAR(6) NOT NULL
);