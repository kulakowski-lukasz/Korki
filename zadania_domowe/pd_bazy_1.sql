-- Revised for the MYSQL

CREATE TABLE users (
    user_id INT NOT NULL PRIMARY KEY,
    login varchar(255) DEFAULT NULL,
    password varchar(255) DEFAULT NULL
);

CREATE TABLE categories (
    category_id INT NOT NULL PRIMARY KEY,
    category VARCHAR(200) NOT NULL,
    user_id INT NOT NULL,
    fOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE expenses (
    expense_id INT NOT NULL PRIMARY KEY,
    amount DECIMAL(12, 2) NOT NULL,
    category_id INT NOT NULL,
    date DATETIME NOT NULL,
    comment VARCHAR(255),
    user_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(category_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- TODO:
-- - ograniczenia na liczby znaków
-- - hasła?