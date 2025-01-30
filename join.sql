CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    userName VARCHAR(25) NOT NULL
);

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
);


SELECT * FROM post as p
    JOIN "user" as u ON p.user_id = u.id;

SELECT * FROM post as p
    LEFT JOIN "user" as u ON p.user_id = u.id;


SELECT * FROM post as p
    RIGHT JOIN "user" as u ON p.user_id = u.id;

SELECT * from post
    FULL OUTER JOIN "user" ON post.user_id = "user".id;

SELECT * FROM "user";
SELECT * FROM post;

INSERT INTO post (title, user_id)
    VALUES('This is demo', NULL);