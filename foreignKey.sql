CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    userName VARCHAR(25) NOT NULL
);

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
);

INSERT INTO "user"(username)
VALUES('Yeasin'),('Rafee'),('Mariya'),('Mim');

SELECT * FROM "user";

INSERT INTO post(title, user_id)
    VALUES('Hey this is Rafee', 2),
        ('Hey this is Yeasin', 1),
        ('Hey this is Mariya', 3),
        ('Hey this is Mim', 3);

SELECT * FROM post;

DELETE FROM "user"
    WHERE id = 1;