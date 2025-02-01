CREATE TABLE my_users(
    user_name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO my_users VALUES('Yeasin', 'yeasin@gamil.com'),('Rafee', 'rafee@gmail.com');



CREATE TABLE deleted_users_audit(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
);

CREATE OR REPLACE FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
    BEGIN
        INSERT INTO deleted_users_audit VALUES(OLD.user_name, now());
        RAISE NOTICE 'Deleted User audit log created';
        RETURN OLD;
    END
$$;

CREATE OR REPLACE Trigger save_deleted_user_trigger
BEFORE DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user();

DELETE FROM my_users WHERE user_name = 'Rafee';


SELECT * FROM my_users;
SELECT * FROM deleted_users_audit;