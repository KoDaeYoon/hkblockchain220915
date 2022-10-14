-- īƼ�þ� ��(������ ��)
-- (1,2,3) , (4,5)
-- (1,4), (1,5), (2,4), (2,5), (3,4), (3,5)
select first_name, last_name, salary
       , d.department_id, department_name
from hr.employees e, hr.departments d;
-- join�������� ���� ������ ī��þ� �� ��ŭ�� ���� ������ �ȴ�.

select manager_id from hr.employees
where employee_id = 103;
-- ��� 103�� ��� 102���� ������ �˰� ������.. *�ڰ� join
select e1.employee_id, e2.employee_id
from hr.employees e1,hr.employees e2
where e1.manager_id = e2.employee_id
and e1.employee_id = 103;
--ansi join
select e1.employee_id, e2.employee_id
from hr.employees e1 join hr.employees e2
on e1.manager_id = e2.employee_id
where e1.employee_id = 103;
--join �� �� īƼ�þ� ��ó�� ��Ÿ���� �ϴ� �� 
select e1.employee_id, e2.employee_id
from hr.employees e1 cross join hr.employees e2;

select manager_id 
from hr.employees
where employee_id = (select employee_id
                     from hr.employees
                     where employee_id = 103);

-- 90�� �μ��� ��� �޿�
select trunc(avg(salary),-3)
from hr.employees
where department_id = 90;

select * 
from hr.employees
where salary > (select trunc (avg(salary),-3)
                from hr.employees
                where department_id = 90);
                
--Rogers ������� ���� �Ի��� ����� ���Ͻÿ�.
select *
from hr.employees
where hire_date < (select hire_date
                   from hr.employees
                   where last_name = 'Rogers');
--Rogers�� ������ ���� Rogers�� �޿����� ���� �޴� ����� ���Ͻÿ�.
select * 
from hr.employees
where job_id = (select job_id
                from hr.employees
                where last_name = 'Rogers')
and salary > (select salary
              from hr.employees
              where last_name = 'Rogers');
              
-- �޿��� ���� ���� �޴� ������ ���Ͻÿ�.
select *
from hr.employees
where salary = (select min(salary)
                from hr.employees);
                
-- �����ȣ, �̸�, ����, �޿�, Rogers�� �Ի��ϵ� ���� ����Ͻÿ�
select employee_id, first_name, job_id, salary, 
    (select hire_date
                   from hr.employees
                   where last_name = 'Rogers') Rogers_hire_date
from hr.employees;

-- �� �μ��� �ּұ޿��� �μ���ȣ�� 50�� �μ��� �ּұ޿����� ū �μ��� ����ϼ���.
select min(salary)
from hr.employees
where department_id = 50;

select department_id , min(salary)
from hr.employees
group by department_id 
having min(salary) > (select min(salary)
                      from hr.employees
                      where department_id = 50);
                      
-- ������ sub query
-- Taylor ����� ���� ������ ���� ������ �ϰ� �ִ� ����� ����Ͻÿ�
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
                
-- Roger�� ���� ������ ���� ����� ����ϼ��� -> �������� ���� =�� in ��� ����� �� �ִ�.
select *
from hr.employees
where job_id = (select job_id
                from hr.employees
                where last_name = 'Rogers');
                
-- Haas ����� �ϴ� ������ ���� ������ �ϴ� �������� ����ϼ���
select *
from hr.employees
where job_id = (select job_id
                from hr.employees
                where first_name = 'Haas');
                
-- �� �μ��� �ּұ޿��� �޴� ������� ���Ͻÿ�.
select *
from hr.employees
where salary in (select min(salary)
                from hr.employees
                group by department_id);
select distinct department_id
from hr.employees;

-- 4200, 4800, 6000, 9000���� �ּҰ����� ū �޿��� �޴� ����� ���Ͻÿ�.
select *
from hr.employees
where salary > any (4200, 4800, 6000, 9000);
-- 60�� �μ� �ּ� �޿����� �� ���� �޴� �������� ���Ͻÿ�.
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
               
-- ������ 'IT_PROG'�� ����� �� �޿��� ���� ���� �޴� ������� �۰� �޴� ����� ���
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
                
-- ������ 'IT_PROG'�� ����� �޿� �� ���� ���� �޴� �޿����� �� ���� �޴� ����� ���
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
                
-- ������ 'IT_PROG'�� ����� �޿� �� ���� ���� �޴� �޿����� �� ���� �޴� ����� ���
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
                
-- ���� ���� ����� ���� ������ �������� ����Ͻÿ�.
select job_id
from hr.employees
group by job_id
having count(*) = (select max(count(*))
                   from hr.employees
                   group by job_id);
                   
-- ������ ������ ���
-- ������ 'IT_PROG'���� �޿��� ���� ���� �޴� �޿����� �� ���� �޴� ����� ���ϴµ�
-- 'IT_PROG'�� �����ؼ� ���
select *
from hr.employees
where salary > all(select salary
                from hr.employees
                where job_id = 'IT_PROG'
                and job_id != 'IT_PROG');
-- =any�� in�� ����
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
                 
-- 90�� �μ��� �޿��� ���� �޿��� �޴� ������� ����Ͻÿ�.
select *
from hr.employees
where salary in (select salary
                 from hr.employees
                 where department_id = 90);

-- 90�� �μ��� �޿��� ���� �޿��� ���� �ʴ� ������� ����Ͻÿ�.
select *
from hr.employees
where salary not in (select salary
                 from hr.employees
                 where department_id = 90);