CREATE TABLE teachers (
    id INT PRIMARY KEY,
    creation_date DATE,
    update_date DATE,
    name VARCHAR(255) CHECK (LENGTH(name) > 0),
    surname VARCHAR(255) CHECK (LENGTH(surname) > 0),
    date_of_birth DATE,
    floor INT CHECK (floor > 0),
    activity VARCHAR(255) CHECK (LENGTH(activity) > 0),
    account_id INT REFERENCES accounts(id)
);

INSERT INTO teachers (id, creation_date, update_date, name, surname, date_of_birth, floor, activity, account_id) VALUES
(1, '2022-05-01', '2022-05-05', 'Professor', 'Johnson', '1985-08-10', 4, 'Python', 1),
(2, '2022-06-01', '2022-06-05', 'Dr.', 'Williams', '1980-11-25', 5, 'Java', 2);