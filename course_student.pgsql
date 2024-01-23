CREATE TABLE course_student (
    course_id INT REFERENCES courses(id),
    student_id INT REFERENCES students(id),
    PRIMARY KEY (course_id, student_id)
);

INSERT INTO course_student (course_id, student_id) VALUES
(1, 1),
(1, 2),
(2, 2);