select ename, job,hiredate,empno
   from emp;

select *
   from emp;

select distinct ename
    from emp;

insert into emp values(1456,'John Smith', 'Analyst',7566,'1-JAN-2002',2000,NULL,20);

update emp
set sal = 3000
where ename = 'John Smith';

select ename,empno, hiredate
from emp
where trim(ename) like '%L%L%';

select ename,empno, hiredate
from emp
where trim(ename) like '%L%L%' and trim(ename) like '%N';

select * from dept where loc = 'BOSTON';   

select empno,ename,deptno,job
from emp 
where deptno = 10 and job not in('MANAGER', 'CLERK');

select * from emp where comm > 0 and sal between 1000 and 3000;

select * from emp where mgr is null;

select empno,ename,sal,mgr from emp where mgr in (7566, 7788);
