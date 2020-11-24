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
