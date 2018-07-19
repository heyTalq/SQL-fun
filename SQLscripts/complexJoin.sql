/*Oracle SQL
Lab Assignment #3
Tiger Zha
4458


1)
*/
select  e.empno Employee_Number, e.ename Employee_Name, e.hiredate Hiredate, m.ename Mgr_Name from emp e, emp m
   where e.mgr = m.empno and (m.ename like 'K%' or m.ename like 'M%' or 
m.ename like 'S%');

/*
EMPLOYEE_NUMBER EMPLOYEE_N HIREDATE  MGR_NAME
--------------- ---------- --------- ----------
	   7876 ADAMS	   12-JAN-83 SCOTT
	   7698 BLAKE	   01-MAY-81 KING
	   7782 CLARK	   09-JUN-81 KING
	   7566 JONES	   02-APR-81 KING




2)
*/
select ed.ename ename, d.deptno dept_num, d.dname dep_name
from emp e, emp ed, dept d
where e.empno = '7876' and e.deptno = ed.deptno and d.deptno = e.deptno;

/*
ENAME	     DEPT_NUM DEP_NAME
---------- ---------- --------------
JONES		   20 RESEARCH
FORD		   20 RESEARCH
SMITH		   20 RESEARCH
SCOTT		   20 RESEARCH
ADAMS		   20 RESEARCH

3)
*/
select d.dname dep_name, d.loc location
from dept d, emp e
where e.job = 'CLERK' and e.deptno = d.deptno;

/*
DEP_NAME       LOCATION
-------------- -------------
ACCOUNTING     NEW YORK
RESEARCH       DALLAS
RESEARCH       DALLAS
SALES	       CHICAGO


4)
*/
INSERT INTO DEPT VALUES (50,'training','San Francisco');
select e.empno,e.ename,d.dname,d.loc
from emp e, dept d
where e.deptno in ('20','50') and e.deptno = d.deptno; 

/*
     EMPNO ENAME      DNAME	     LOC
---------- ---------- -------------- -------------
      7566 JONES      RESEARCH	     DALLAS
      7902 FORD       RESEARCH	     DALLAS
      7369 SMITH      RESEARCH	     DALLAS
      7788 SCOTT      RESEARCH	     DALLAS
      7876 ADAMS      RESEARCH	     DALLAS




5)
DISCLAIMER: Can't create emp2 with provided file, it threw a data type error
*/

select e.ename, d.dname
from dept d, emp e
where e.deptno(+) = d.deptno;


