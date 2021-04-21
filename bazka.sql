CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    login TEXT,
    password TEXT
);

CREATE TABLE categories (
    category_id INTEGER PRIMARY KEY,
    category TEXT,
    user_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE expenses (
    expense_id INTEGER PRIMARY KEY,
    amount REAL,
    category_id INTEGER,
    date INTEGER,
    comment TEXT,
    user_id INTEGER,
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);