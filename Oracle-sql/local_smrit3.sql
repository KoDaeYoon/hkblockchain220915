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
      
-- ���̱׷��̼� �ϴ� ��� (�÷��� ��� ���ƾ� ����)
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

-- ���̺� �ִ� ���� ����
delete from departments;

select *
from departments
where department_id in (20,40);

-- Ư�� ���� �����ϴ� ���
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

-- Donald�� ���� �ִ� �μ��� ������ �����Ͻÿ�
delete from employees
where department_id = (select department_id
                       from employees
                       where first_name = 'Donald');
                       
-- ������ 'MK_REP' �̰� �޿��� 6000�� �ʰ��ϴ� ����� �����Ͻÿ�.
delete from employees
where job_id = 'MK_REP' and salary >=6000;

-- public�� �����ϰ� �ִ� ������ ����ϴ� ����� ����ϼ���.
-- Susan�� �޿��� Susan�� ������ ���� ������� ����ϼ���.
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
              
-- ������ ���� �ӽ������� �����ϰ� �ִ� ���� Redo table�̴�.
-- ó�� insert �� ���� undo table�� ���� commit�� �ϱ� �������� �ܺ� ����� �� �� ����.
-- ���� insert�� ����� commit�� ���� �� ������ ������ ���̴�.

insert into employees
select *
from hr.employees;

delete from employees;

select * from employees;

rollback;

select* from employees;

-- truncate�� ���� redo table �� ���� �ʰ� �ٷ� �����ż� rollback�� �Ұ��ϴ�.
truncate table employees;

insert into employees
select *
from hr.employees;
