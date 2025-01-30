SELECT * FROM students;

SELECT country, COUNT(*) FROM students
    GROUP BY country;

SELECT country, avg(age) FROM students
    GROUP BY country
    HAVING avg(age) > 20;

SELECT country FROM students
    GROUP BY country
    HAVING avg(age) > 20;

SELECT extract(YEAR FROM dob::date), count(*) FROM students
    GROUP BY extract(YEAR FROM dob::date);