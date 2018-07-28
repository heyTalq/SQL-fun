select ename, LPAD('*',round(sal/100,0),'*') SALARIES
from emp
order by sal desc;

select ename, lower(substr(ename,1,2)), to_char(hiredate,'MM-DD-YY'),
round(sal,-1), next_day(add_months(hiredate,6),'Monday') REVIEW
from emp;

select ename
from emp
where deptno = (select deptno from dept where loc = 'BOSTON') and sal>1000;

select concat(concat(ename, ', '), job) Employees, hiredate
from emp
where to_date(hiredate,'DD-MM-YY') >= to_date('010181','DD-MM-YY')
and to_date(hiredate,'DD-MM-YY') <= to_date('311281','DD-MM-YY');

from emp e 
where sal > (select min(sal) from emp, where deptno = e.deptno);

select ename
from (select ename from emp where deptno = 10 order by sal desc) 
where sal > 1000;
