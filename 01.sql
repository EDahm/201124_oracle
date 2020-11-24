select*from tab;

desc emp;

desc dept;

desc salgrade;

select*from emp;

select empno, ename, deptno 
    from emp;
    
select job, sal
    from emp;
    
select distinct deptno from emp;

select distinct job, deptno from emp;

select all job, deptno from emp;

select ename, sal, sal*12+comm salyear, comm from emp;

select ename, sal, sal*12+comm as "salyear", comm from emp;

select ename, sal, sal*12+comm as "sal year", comm from emp;

select*from emp order by sal;

select*from emp order by sal desc;

select*from emp order by deptno;

select*from emp order by deptno desc;

select*from emp order by ename;

select*from emp order by ename desc;

select*from emp order by hiredate;

select*from emp order by hiredate desc;

select distinct job from emp;

select * from emp;
select empno employee_no, ename employee_name, mgr manager, sal salary, comm commission, deptno department_no from emp; 
select * from emp order by deptno desc, ename asc;

select * from emp
where deptno = 30 and job = 'SALESMAN';

select ename from emp
where deptno = 20;

select * from emp where deptno = 30 or job = 'CLERK';

select *
 from emp
 where deptno = 20 or job = 'SALESMAN';
 
 select *
  from emp
  where sal * 12 = 36000;
  
 select *
  from emp
 where sal >= 3000; 
  
 select *
  from emp
 where sal >= 2500
 and job = 'ANALYST';
 
 select *
  from emp
  where ename >= 'F';
  
 select *
  from emp
 where ename <= 'FORZ';
 
 select*
  from emp
  where sal != 3000;
  
 select *
  from emp
 where sal <> 3000;
 
 select *
  from emp
 where sal ^= 3000;
 
 select *
 from emp
 where not sal = 3000;
 
 select *
  from emp
 where job = 'MANAGER'
  or job = 'SALESMAN'
  or job = 'CLERK';
  
 select *
  from emp
where job in ('MANAGER', 'SALESMAN', 'CLERK');

select *
 from emp
 where job != 'MANAGER'
  and job <> 'SALESMAN'
  and job ^= 'CLERK';
  
 select *
   from emp
  where job not in ('MANAGER', 'SALESMAN', 'CLERK');
 
select *
 from emp
 where sal >= 2000
  and sal <= 3000;
  
 select *
 from emp
where sal between 2000 and 3000;

select *
 from emp
where sal not between 2000 and 3000;

select *
 from emp
 where ename like '%AM%';
 
 select *
 from emp
 where ename not like '%AM%';
 
 select ename, sal, sal*12+comm as annsal, comm
  from emp;
  
select *
 from emp
 where comm = null;

select *
 from emp
where comm is null;

select *
 from emp
where mgr is not null;

select *
 from emp
where sal > null
 and comm is null;

select *
 from emp
where sal > null
 or comm is null;
 
select empno, ename, sal, deptno
 from emp
 where deptno = 10
union
select empno, ename, sal, deptno
 from emp
where deptno = 20;

select empno, ename, sal, deptno
 from emp
where deptno = 10
union
select sal, job, deptno, sal
 from emp
where deptno = 20;

select empno, ename, sal, deptno
 from emp
where deptno = 10
union
select empno, ename, sal, deptno
 from emp
where deptno = 10;

select empno, ename, sal, deptno
 from emp
where deptno = 10
union all
select empno, ename, sal, deptno
 from emp
where deptno = 10;

select empno, ename, sal, deptno
 from emp
minus
select empno, ename, sal, deptno
 from emp
where deptno = 10;

select empno, ename, sal, deptno
 from emp
intersect
select empno, ename, sal, deptno
 from emp
where deptno = 10;

select*from emp;

select *
 from emp
 where ename like '%S';
 
 select empno, ename, job, sal, deptno
  from emp
 where deptno = 30
  and job = 'SALESMAN';
 

select empno, ename, job, sal, deptno
 from emp
where deptno in (20, 30)
 and sal > 2000;


 select empno, ename, job, sal, deptno
  from emp
 where deptno = 20
  and sal > 2000
 union
 select empno, ename, job, sal, deptno
  from emp
where deptno = 30
 and sal > 2000;
 
 
 select empno, ename, job, sal, deptno
  from emp
 where deptno = 20
  and sal not between 0 and 2000
 union
 select empno, ename, job, sal, deptno
  from emp
where deptno = 30
  and sal not between 0 and 2000;
  
  
 select *
  from emp
 where sal < 2000
  or sal > 3000;
  
 select ename, empno, sal, deptno
  from emp
 where deptno = 30
  and ename like '%E%'
  and sal not between 1000 and 2000;
  
 select*from emp;
 
 select * from emp
 where comm is null
  and mgr is not null
  and job in ('MANAGER', 'CLERK')
  and ename not like '_L%';