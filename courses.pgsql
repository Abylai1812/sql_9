CREATE TABLE courses (
    id INT PRIMARY KEY,
    creation_date DATE,
    update_date DATE,
    course_name VARCHAR(255) CHECK (LENGTH(course_name) > 0),
    course_description VARCHAR(255) CHECK (LENGTH(course_description) > 0),
    start_date DATE,
    end_date DATE,
    teacher_id INT REFERENCES teachers(id)
);

INSERT INTO courses (id, creation_date, update_date, course_name, course_description, start_date, end_date, teacher_id) VALUES
(1, '2022-07-01', '2022-07-05', 'Python 16', 'Python разработчик', '2022-09-01', '2022-12-01', 1),
(2, '2022-08-01', '2022-08-05', 'Java 9', 'Frontend Developer', '2022-10-01', '2023-01-01', 2);