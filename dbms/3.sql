declare
n number:=&n;
rev number:=0;
m number:=n;
rem number;
begin
while n>0 loop
rem:=mod(n,10);
rev:=rev*10+rem;
n:=trunc(n/10);
end loop;
dbms_output.put_line('reverse of'||m||'is'||rev);
end;
/
