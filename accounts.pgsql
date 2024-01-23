CREATE TABLE accounts (
    id INT PRIMARY KEY,
    creation_date DATE,
    update_date DATE,
    settings_id INT REFERENCES settings(id),
    CHECK (creation_date <= update_date)
);

INSERT INTO accounts (id, creation_date, update_date, settings_id) VALUES
(1, '2022-01-01', '2022-01-05', 1),
(2, '2022-02-01', '2022-02-05', 2);