

DECLARE
    v_number NUMBER;
    v_result NUMBER;
BEGIN
    -- Prompt the user to enter a number
    DBMS_OUTPUT.PUT_LINE('Enter a number:');
    -- Read the input number
    v_number := &1; -- Use substitution variable to read input from user

    -- Print the multiplication table
    FOR i IN 1..10 LOOP
        v_result := v_number * i;
        DBMS_OUTPUT.PUT_LINE(v_number || ' * ' || i || ' = ' || v_result);
    END LOOP;
END;
/
