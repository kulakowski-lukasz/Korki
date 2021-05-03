-- Change
USE pdom2;

-- Cleanup (to uncomment)
-- DROP TABLE employees;
DROP TABLE departments;
DROP TABLE jobs;

-- Napisz instrukcje SQL ktora:
-- 1. utworzy tabelę "departments" (jeżeli nie istnieje) z następującymi kolumnami: DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID - gdzie kluczem głównym będzie DEPARTMENT_ID.
CREATE TABLE IF NOT EXISTS departments (
    department_id INT NOT NULL PRIMARY KEY,
    department_name VARCHAR(200) NOT NULL,
    manager_id SMALLINT NOT NULL,
    location_id SMALLINT
);

-- 2. doda do tabeli działów 3 działy
INSERT INTO
    departments
VALUES
    (1, 'Operations', 3, 1),
    (2, 'Development', 3, 1),
    (3, 'Marketing', 2, 1);

-- 3. wyświetli listę działów
SELECT
    department_name
FROM
    departments;

-- 4. utworzy tabelę "jobs" (jeżeli nie istnieje), zawierającą następujące kolumny: JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY - gdzie kluczem głównym będzie JOB_ID, dodatkowo tabela ma ustawiać domyślne wartości pensji od 8000 do 30000 (jeżeli ktoś nie poda własnych)
CREATE TABLE IF NOT EXISTS jobs (
    job_id INT NOT NULL PRIMARY KEY,
    job_title VARCHAR(200) NOT NULL,
    min_salary DECIMAL(9, 2) DEFAULT 30000.00,
    max_salary DECIMAL(9, 2) DEFAULT 8000.00
);

-- 5. doda do tabeli "jobs" 2 posady:
INSERT INTO
    jobs
VALUES
    (1, 'Service Delivery Lead', 30000, 15000),
    (2, 'Junior Big Data Engineer', 8000, 4000);

-- 6. utworzy tabelę "employees" (jeżeli nie istnieje) z następującymi kolumnami: EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID, JOB_ID, SALARY (pamiętaj o utworzeniu odpowiednich dowiązań!!, tutaj będą dwa dowiązania)
CREATE TABLE IF NOT EXISTS employees (
    employee_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    department_id INT NOT NULL,
    job_id INT NOT NULL,
    salary DECIMAL(9, 2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (job_id, max_salary, min_salary) REFERENCES jobs(job_id, max_salary, min_salary) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT max_salary CHECK ((salary <= max_salary)),
    CONSTRAINT min_salary CHECK ((salary >= min_salary))
);

-- 7. doda 2 pracowników do tabeli "employees"
-- 8. spróbuj dodać pracownika do działu, który nie istnieje - jaki błąd został wyświetlony i dlaczego?