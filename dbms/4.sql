CREATE TABLE DEMO_TAB1 (
    Number1 NUMBER,
    Number2 NUMBER,
    LCM NUMBER,
    HCF NUMBER
);

DECLARE
    num1 NUMBER := &num1;
    num2 NUMBER := &num2;
    lcm NUMBER := 0;
hcf NUMBER := 0;

    FUNCTION calculate_hcf(a IN NUMBER, b IN NUMBER) RETURN NUMBER IS
    BEGIN
        IF b = 0 THEN
            RETURN a;
        ELSE
            RETURN calculate_hcf(b, MOD(a, b));
        END IF;
    END calculate_hcf;
BEGIN
hcf := calculate_hcf(num1, num2);

lcm := (num1 * num2) / hcf;

    INSERT INTO DEMO_TAB1 (Number1, Number2, LCM, HCF) VALUES (num1, num2, lcm, hcf);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('LCM of ' || num1 || ' and ' || num2 || ' is ' || lcm);
    DBMS_OUTPUT.PUT_LINE('HCF of ' || num1 || ' and ' || num2 || ' is ' || hcf);
END;
/
