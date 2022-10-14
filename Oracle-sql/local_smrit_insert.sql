-- 카티시안 곱(집합의 곱)
-- (1,2,3) , (4,5)
-- (1,4), (1,5), (2,4), (2,5), (3,4), (3,5)
select first_name, last_name, salary
       , d.department_id, department_name
from hr.employees e, hr.departments d;
-- join조건절을 주지 않으면 카디시안 곱 만큼의 수가 나오게 된다.

select manager_id from hr.employees
where employee_id = 103;
-- 사원 103의 상사 102번의 정보를 알고 싶으면.. *자가 join
select e1.employee_id, e2.employee_id
from hr.employees e1,hr.employees e2
where e1.manager_id = e2.employee_id
and e1.employee_id = 103;
--ansi join
select e1.employee_id, e2.employee_id
from hr.employees e1 join hr.employees e2
on e1.manager_id = e2.employee_id
where e1.employee_id = 103;
--join 쓸 때 카티시안 곱처럼 나타내게 하는 법 
select e1.employee_id, e2.employee_id
from hr.employees e1 cross join hr.employees e2;

select manager_id 
from hr.employees
where employee_id = (select employee_id
                     from hr.employees
                     where employee_id = 103);

-- 90인 부서의 평균 급여
select trunc(avg(salary),-3)
from hr.employees
where department_id = 90;

select * 
from hr.employees
where salary > (select trunc (avg(salary),-3)
                from hr.employees
                where department_id = 90);
                
--Rogers 사원보다 먼저 입사한 사원을 구하시오.
select *
from hr.employees
where hire_date < (select hire_date
                   from hr.employees
                   where last_name = 'Rogers');
--Rogers의 직무와 같고 Rogers의 급여보다 많이 받는 사원을 구하시오.
select * 
from hr.employees
where job_id = (select job_id
                from hr.employees
                where last_name = 'Rogers')
and salary > (select salary
              from hr.employees
              where last_name = 'Rogers');
              
-- 급여를 제일 적게 받는 직원을 구하시오.
select *
from hr.employees
where salary = (select min(salary)
                from hr.employees);
                
-- 사원번호, 이름, 직무, 급여, Rogers의 입사일도 같이 출력하시오
select employee_id, first_name, job_id, salary, 
    (select hire_date
                   from hr.employees
                   where last_name = 'Rogers') Rogers_hire_date
from hr.employees;

-- 각 부서의 최소급여가 부서번호가 50인 부서의 최소급여보다 큰 부서를 출력하세요.
select min(salary)
from hr.employees
where department_id = 50;

select department_id , min(salary)
from hr.employees
group by department_id 
having min(salary) > (select min(salary)
                      from hr.employees
                      where department_id = 50);
                      
-- 다중행 sub query
-- Taylor 사원이 가진 직무와 같은 직무를 하고 있는 사원을 출력하시오
select job_id
from hr.employees
where last_name = 'Taylor';

select *
from hr.employees
where job_id = 'SA_REP' or job_id = 'SH_CLERK';

select *
from hr.employees
where job_id in (select job_id
                 from hr.employees
                where last_name = 'Taylor');
                
-- Roger와 같은 직무를 가진 사원을 출력하세요 -> 단일행일 때는 =와 in 모두 사용할 수 있다.
select *
from hr.employees
where job_id = (select job_id
                from hr.employees
                where last_name = 'Rogers');
                
-- Haas 사원이 하는 직무와 같은 직무를 하는 직원들을 출력하세요
select *
from hr.employees
where job_id = (select job_id
                from hr.employees
                where first_name = 'Haas');
                
-- 각 부서의 최소급여를 받는 사원들을 구하시오.
select *
from hr.employees
where salary in (select min(salary)
                from hr.employees
                group by department_id);
select distinct department_id
from hr.employees;

-- 4200, 4800, 6000, 9000에서 최소값보다 큰 급여를 받는 사원을 구하시오.
select *
from hr.employees
where salary > any (4200, 4800, 6000, 9000);
-- 60인 부서 최소 급여보다 더 많이 받는 직원들을 구하시오.
select *
from hr.employees
where salary > any (select salary)
                    from hr.employees
                    where department_id = 60);
select *
from hr.employees
where salary >( select min(salary)
               from hr.employees
               where department_id = 60);
               
-- 직무가 'IT_PROG'인 사원들 중 급여를 제일 많이 받는 사람보다 작게 받는 사원을 출력
select *
from hr.employees
where salary < (select max(salary)
                from hr.employees
                where job_id = 'IT_PROG');
                
select *
from hr.employees
where salary < any(select salary
                from hr.employees
                where job_id = 'IT_PROG');
                
-- 직무가 'IT_PROG'인 사원들 급여 중 제일 많이 받는 급여보다 더 많이 받는 사원을 출력
select *
from hr.employees
where salary > (select max(salary)
                from hr.employees
                where job_id = 'IT_PROG');
                
select *
from hr.employees
where salary > all(select salary
                from hr.employees
                where job_id = 'IT_PROG');
                
-- 직무가 'IT_PROG'인 사원들 급여 중 제일 적게 받는 급여보다 더 적게 받는 사원을 출력
select *
from hr.employees
where salary < (select min(salary)
                from hr.employees
                where job_id = 'IT_PROG');
                
select *
from hr.employees
where salary < all(select salary
                from hr.employees
                where job_id = 'IT_PROG');
                
-- 가장 많은 사원을 가진 직무는 무엇인지 출력하시오.
select job_id
from hr.employees
group by job_id
having count(*) = (select max(count(*))
                   from hr.employees
                   group by job_id);
                   
-- 다중행 연산자 사용
-- 직무가 'IT_PROG'에서 급여를 제일 많이 받는 급여보다 더 많이 받는 사원을 구하는데
-- 'IT_PROG'는 제외해서 출력
select *
from hr.employees
where salary > all(select salary
                from hr.employees
                where job_id = 'IT_PROG'
                and job_id != 'IT_PROG');
-- =any와 in은 같다
select *
from hr.employees
where job_id = any (select job_id
                 from hr.employees
                 where last_name = 'Taylor');

select *
from hr.employees
where job_id in (select job_id
                 from hr.employees
                 where last_name = 'Taylor');
                 
-- 90인 부서의 급여와 같은 급여를 받는 사원들을 출력하시오.
select *
from hr.employees
where salary in (select salary
                 from hr.employees
                 where department_id = 90);

-- 90인 부서의 급여와 같은 급여를 받지 않는 사원들을 출력하시오.
select *
from hr.employees
where salary not in (select salary
                 from hr.employees
                 where department_id = 90);