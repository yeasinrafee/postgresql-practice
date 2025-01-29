SELECT * FROM person2;

ALTER TABLE person2
    ADD COLUMN emil VARCHAR(25) DEFAULT 'default@email.com' NOT NULL;


INSERT INTO person2
    values(2, 'yeasin', 22)
