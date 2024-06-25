CREATE TABLE stud (
    name VARCHAR(20),
    regno VARCHAR(20),
    branch VARCHAR(20)
);

SET SERVEROUTPUT ON;
DECLARE
i NUMBER;
BEGIN
    FOR i IN 1..10 LOOP
        INSERT INTO stud (name, regno, branch) 
        VALUES ('achi' || i, 'y22cs082' || i, 'cse');
    END LOOP;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Ten rows inserted successfully.');
END;
/
