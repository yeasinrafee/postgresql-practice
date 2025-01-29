CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    bloodGroup VARCHAR(5),
    country VARCHAR(50)
);

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, bloodGroup, country) VALUES
('John', 'Doe', 20, 'A', 'Mathematics', 'john.doe@example.com', '2003-05-15', 'O+', 'USA'),
('Jane', 'Smith', 19, 'B', 'Physics', 'jane.smith@example.com', '2004-02-22', 'A-', 'Canada'),
('Alice', 'Johnson', 21, 'A', 'Chemistry', 'alice.johnson@example.com', '2002-11-30', 'B+', 'UK'),
('Bob', 'Brown', 22, 'C', 'Biology', 'bob.brown@example.com', '2001-08-14', 'AB+', 'Australia'),
('Charlie', 'Davis', 20, 'B', 'Computer Science', 'charlie.davis@example.com', '2003-07-19', 'O-', 'USA'),
('Diana', 'Evans', 19, 'A', 'Mathematics', 'diana.evans@example.com', '2004-03-25', 'A+', 'Canada'),
('Ethan', 'Wilson', 21, 'B', 'Physics', 'ethan.wilson@example.com', '2002-09-10', 'B-', 'UK'),
('Fiona', 'Garcia', 22, 'C', 'Chemistry', 'fiona.garcia@example.com', '2001-12-05', 'AB-', 'Australia'),
('George', 'Martinez', 20, 'A', 'Biology', 'george.martinez@example.com', '2003-06-20', 'O+', 'USA'),
('Hannah', 'Lopez', 19, 'B', 'Computer Science', 'hannah.lopez@example.com', '2004-01-15', 'A-', 'Canada'),
('Ian', 'Harris', 21, 'A', 'Mathematics', 'ian.harris@example.com', '2002-10-30', 'B+', 'UK'),
('Julia', 'Clark', 22, 'C', 'Physics', 'julia.clark@example.com', '2001-07-22', 'AB+', 'Australia'),
('Kevin', 'Lewis', 20, 'B', 'Chemistry', 'kevin.lewis@example.com', '2003-04-18', 'O-', 'USA'),
('Laura', 'Robinson', 19, 'A', 'Biology', 'laura.robinson@example.com', '2004-05-12', 'A+', 'Canada'),
('Michael', 'Walker', 21, 'B', 'Computer Science', 'michael.walker@example.com', '2002-08-08', 'B-', 'UK'),
('Nina', 'Perez', 22, 'C', 'Mathematics', 'nina.perez@example.com', '2001-11-03', 'AB-', 'Australia'),
('Oscar', 'Hall', 20, 'A', 'Physics', 'oscar.hall@example.com', '2003-09-27', 'O+', 'USA'),
('Paula', 'Young', 19, 'B', 'Chemistry', 'paula.young@example.com', '2004-06-14', 'A-', 'Canada'),
('Quincy', 'Allen', 21, 'A', 'Biology', 'quincy.allen@example.com', '2002-03-19', 'B+', 'UK'),
('Rachel', 'King', 22, 'C', 'Computer Science', 'rachel.king@example.com', '2001-10-24', 'AB+', 'Australia');

SELECT * FROM students;

SELECT email as "Student Email" FROM students;

SELECT * FROM students ORDER BY first_name ASC;

SELECT DISTINCT country FROM students;

SELECT * FROM students
    WHERE age <> 20 ;

SELECT upper(first_name) as first_name_upper_case, * FROM students;

SELECT concat(first_name, ' ', last_name) FROM students;

SELECT AVG(age) FROM students;

SELECT sum(age) FROM students;

SELECT * FROM students
    WHERE email IS NOT NULL;

SELECT COALESCE(email, 'Email not provided') FROM students;