delete from dept;
select * from dept;

delete from emp where dept_no is not null;
select * from emp;

-- insert
insert into dept values(null, '총무');
select no, name from dept;

-- update
update dept set name ='총무2팀' where no = 5;

-- delete
delete from dept where no =8;

select emp_no, first_name from employees where first_name like '%pat%';