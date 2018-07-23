select e.mgr mgrNum, min(e.sal) salary
from  emp e, emp m 
where m.empno = e.mgr AND m.job = 'MANAGER'
group by e.mgr
having min(e.sal) > 1000
order by min(e.sal) desc;

 select d.dname dept, d.loc location, count(*) people, avg(nvl(e.sal,0)) avgSalary
from emp e, dept d
where e.deptno = d.deptno 
group by d.dname,d.loc;

select d.dname deptName, s.grade grade, min(e.sal) minSal, avg(nvl(e.comm,0)) avgComm, (select (min(e.sal)+avg(e.comm)) sum, from emp, where d.deptno = e.deptno) 
from emp e, dept d, salgrade s
where e.deptno = d.deptno  sum > s.losal and sum < s.hisal)
group by d.dname,s.grade;


select d.dname dept, d.loc location, count(*) people, avg(nvl(e.sal,0)) avgSalary
from emp e, dept d
where e.deptno = d.deptno 
group by d.dname,d.loc;


select e.empno, e.ename, e.sal, round(e.sal * 1.15,0) newSal 
from emp e; 

