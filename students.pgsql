CREATE TABLE students (
    id INT PRIMARY KEY,
    creation_date DATE,
    update_date DATE,
    name VARCHAR(255) CHECK (LENGTH(name) > 0),
    surname VARCHAR(255) CHECK (LENGTH(surname) > 0),
    date_of_birth DATE,
    floor INT,
    activity BOOLEAN,
    account_id INT REFERENCES accounts(id)
);

INSERT INTO students (id, creation_date, update_date, name, surname, date_of_birth, floor, activity, account_id) VALUES
(1, '2022-03-01', '2022-03-05', 'John', 'Doe', '2000-01-15', 2, TRUE, 1),
(2, '2022-04-01', '2022-04-05', 'Jane', 'Smith', '1999-05-20', 3, FALSE, 2);