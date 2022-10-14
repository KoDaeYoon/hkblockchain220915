select *
from departments;

select*
from employees;

select*
from hr.employees;
insert into employees(employee_id, first_name, last_name, email, phone_number
    , hire_date, job_id, salary, commission_pct, manager_id, department_id)
values(200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.5555', 
'04/02/17', 'AD_ASST', 4400, null, 101, 10);
      
-- 마이그레이션 하는 방법 (컬럼이 모두 같아야 가능)
insert into employees
select * from hr.employees;

select *
from departments;

insert into departments
select* from hr.departments;

insert into departments( department_id, department_name, manager_id, location_id)
select department_id, department_name, manager_id, location_id
from hr.departments;

select* from departments;

-- 테이블에 있는 행을 삭제
delete from departments;

select *
from departments
where department_id in (20,40);

-- 특정 행을 삭제하는 방법
delete from departments
where department_id in (20,40);

select *
from departments
where department_id = 70;

delete from departments
where department_id = 70;

select * from employees;

delete  from employees;

insert into employees
select * from hr.employees;

select *
from employees;

select *
from employees
where department_id = 70;

delete from employees
where department_id = 70;

-- Donald가 속해 있는 부서의 직원을 삭제하시오
delete from employees
where department_id = (select department_id
                       from employees
                       where first_name = 'Donald');
                       
-- 직무가 'MK_REP' 이고 급여가 6000을 초과하는 사원을 삭제하시오.
delete from employees
where job_id = 'MK_REP' and salary >=6000;

-- public을 포함하고 있는 직무를 담당하는 사원을 출력하세요.
-- Susan의 급여와 Susan의 직무가 같은 사원들을 출력하세요.
select *
from employees
where job_id like '%public%';

select *
from employees
where salary = (select salary
                from employees
                where first_name = 'Susan')
and job_id = (select job_id
              from employees
              where first_name = 'Susan');

delete
from employees
where salary = (select salary
                from employees
                where first_name = 'Susan')
and job_id = (select job_id
              from employees
              where first_name = 'Susan');
              
-- 삭제된 것을 임시적으로 보관하고 있는 곳이 Redo table이다.
-- 처음 insert 할 때는 undo table에 들어가고 commit을 하기 전까지는 외부 사람이 볼 수 없다.
-- 직접 insert한 사람이 commit을 했을 때 공유가 가능한 것이다.

insert into employees
select *
from hr.employees;

delete from employees;

select * from employees;

rollback;

select* from employees;

-- truncate을 쓰면 redo table 로 가지 않고 바로 삭제돼서 rollback이 불가하다.
truncate table employees;

insert into employees
select *
from hr.employees;
