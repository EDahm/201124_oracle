select ename, upper(ename), lower(ename), initcap(ename)
 from emp;
 
 select *
  from emp
 where upper(ename) = upper('smith');
 
 select *
  from emp
 where upper(ename) like upper('%smith%');
 
 select upper(ename)
  from emp;
  
 select ename, length(ename)
  from emp
 where length(ename) >= 5;
 
 select length('ÇÑ±Û'), lengthb('ÇÑ±Û')
  from dual;
  
 select *
  from emp
 where length(job) >= 6;

select job, substr(job, 1, 2), substr(job, 3, 2), substr(job, 5)
 from emp;
 
select substr(ename, 3)
 from emp;
 
 
 select job,
 substr(job, -length(job)),
 substr(job, -length(job), 2),
 substr(job, -3)
 from emp;
 
 select instr('HELLO, ORACLE!', 'L') as instr_1,
        instr('HELLO, ORACLE!', 'L', 5) as instr_2,
        instr('HELLO, ORACLE!', 'L', 2, 2) as instr_3
    from dual;

select*
 from emp
where instr(ename,'S') > 0;

select*
 from emp
where ename like '%S%';

select '010-1234-5678' as replace_before,
    replace('010-1234-5678','-', ' ') as replace_1,
    replace('010-1234-5678', '-') as replace_2
  from dual;
  
 select 'Oracle',
        lpad('Oracle', 10, '#') as lpad_1,
        rpad('Oracle', 10, '*') as rpad_1,
        lpad('Oracle', 10) as lpad_2,
        rpad('Oracle', 10) as rpad_2
    from dual;
    
select
      rpad('971225-', 14, '*') as rpad_jmno,
      rpad('010-1234-', 13, '*') as rpad_phone
    from dual;
    
select concat(empno, ename),
    concat(empno, concat(':',ename))
from emp
where ename = 'SMITH';

select'[' || trim('__Oracle__') || ']' as trim,
      '[' || trim(leading from '__Oracle__') || ']' as trim_leading,
      '[' || trim(trailing from '__Oracle__') || ']' as trim_trailing,
      '[' || trim(both from '__Oracle__') || ']' as trim_both
    from dual;
    
select'[' || trim('_' from '__Oracle__') || ']' as trim,
      '[' || trim(leading '_' from '__Oracle__') || ']' as trim_leading,
      '[' || trim(trailing '_' from '__Oracle__') || ']' as trim_trailing,
      '[' || trim(both '_' from '__Oracle__') || ']' as trim_both
    from dual;
    
 select'[' || trim('__Oracle__') || ']' as trim,
      '[' || ltrim('__Oracle__') || ']' as ltrim,
      '[' || ltrim('<_Oracle_>'), '_<' || ']' as ltrim_2,
      '[' || rtrim('__Oracle__') || ']' as rtrim,
      '[' || rtrim('<_Oracle_>', '>_') || ']' as rtrim_2
    from dual;
    
 select'[' || trim('__Oracle__') || ']' as trim,
      '[' || ltrim('__Oracle__') || ']' as ltrim,
      '[' || ltrim('<_Oracle_>'), '_<' || ']' as ltrim_2,
      '[' || rtrim('__Oracle__') || ']' as rtrim,
      '[' || rtrim('<_Oracle_>', '>_') || ']' as rtrim_2
    from dual;
