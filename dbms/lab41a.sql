create table p1(name varchar(20),c_s number);
 create or replace procedure disp as
 no emp.empno%type;
s emp.sal%type;
c_s number;
c emp.comm%type;
name emp.ename%type;
cursor curs is select empno,sal,comm,ename from emp;
begin
       open curs;
       loop
       fetch curs into no,s,c,name;
       exit when curs%notfound;
       c_s:=12*(s+nvl(c,0));
       insert into p1 values(name,c_s);
       end loop;
       close curs;
end;	

