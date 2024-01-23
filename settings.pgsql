CREATE TABLE settings (
    id INT PRIMARY KEY,
    enable_notifications BOOLEAN,
    theme VARCHAR(50) CHECK (LENGTH(theme) > 0)
);

INSERT INTO settings (id, enable_notifications, theme) VALUES
(1, true, 'light'),
(2, false, 'dark');