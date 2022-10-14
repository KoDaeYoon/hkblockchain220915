-- --1. ��, �̸� , �޿�, �μ�, �μ���, ������ȣ, �����ּҸ� ����Ͻÿ�
select last_name, first_name, salary, d.department_id, department_name, 
       l.location_id, street_address
from hr.employees e, hr.departments d, hr.locations l
where e.department_id = d.department_id and d.location_id = l.location_id;

--2. �μ��� ���� ������ ������ ���� �μ��� ����ϸ� ������ �����ּҸ� ����Ͻÿ�.
select employee_id, d.department_id, l.location_id, street_address
from hr.employees e  full outer join hr.departments d on e.department_id = d.department_id
left outer join hr.locations l on d.location_id = l.location_id;

--3. ����, ��������, �μ���, �����ּҸ� �̸��� �Բ� ����Ͻÿ�.
select j.job_id, job_title, department_name, street_address, first_name
from hr.jobs j, hr.employees e, hr.departments d, hr.locations l
where j.job_id = e.job_id and e.department_id = d.department_id 
and d.location_id = l.location_id;

--4. �̸�, ��, �μ���, ������ȣ�� �����ȣ�� 152�� ����� ����Ͻÿ�
select first_name, last_name, department_name, location_id
from hr.employees e, hr.departments d
where e.department_id = d.department_id 
and e.employee_id = 152;

--5. ������ȣ, �̸�, ��, ����, ��������, �μ���, �����ȣ, ������ȣ, ������, �������� ����Ͻÿ� 
select employee_id, first_name, last_name
       , j.job_id, job_title
       , department_name
       , postal_code, l.location_id
       , region_name
       , country_name
from hr.jobs j, hr.employees e, hr.departments d, 
     hr.locations l, hr.countries c, hr.regions r
where j.job_id = e.job_id and e.department_id = d.department_id
and d.location_id = l.location_id and l.country_id = c.country_id
and c.region_id = r.region_id;

--------------------------------------------------------------------
--1. ������ȣ, ��, �̸�, �̸���, �μ���ȣ, �μ����� ������ּ���.
select employee_id, last_name, first_name, email, d.department_id, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id;

--2. ������ȣ, ��������, ��, �̸�, �Ի����� ����ϰ�,
--������ȣ�� 'SA_REP' �̸� �Ի����� '020816' �Ϻ��� '050921'������ ���������� ������ּ���.
select j.job_id, job_title, last_name, first_name, hire_date
from hr.jobs j, hr.employees e
where j.job_id = e.job_id
and j.job_id = 'SA_REP' and e.hire_date between '02/08/16' and '05/09/21';

--3. ������ȣ, ��, �̸�, �μ���ȣ, �μ����� ����ϸ� Ŀ�̼��� ���� �ʴ»���� ������ּ���.
select employee_id, last_name, first_name, d.department_id, department_name
       , nvl(commission_pct,0)
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and e.commission_pct is null;

--4. ������ȣ, ��, �̸�, �μ���ȣ, �μ���, ������ȣ, �ּҸ� ����ϰ� ���ð� 'Toronto'�� ��� ����� ������ּ���. 
select employee_id, last_name, first_name, d.department_id, department_name
       , l.location_id, street_address, City
from hr.employees e, hr.departments d, hr.locations l
where e.department_id = d.department_id and d.location_id = l.location_id
and l.city = 'Toronto';

--5. ��������, ��, �̸�, �μ���, �ּ�, ��ű����� ����ϰ� ������ ���� ��籹���� ������ּ���.
select job_title, last_name, first_name, department_name, street_address
       , country_name
from hr.jobs j join hr.employees e on j.job_id = e.job_id 
join hr.departments d on e.department_id = d.department_id
join hr.locations l on d.location_id = l.location_id
right outer join hr.countries c on l.country_id = c.country_id;
------------------------------------------------------------------------
-- 1. �μ���ȣ�� 60�� ����� ��, �̸�, ��� ��ȣ, �޿�, �μ����� ����Ͻÿ�.
select last_name, first_name, employee_id, salary, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and d.department_id = 60;

-- 2. �޿��� 4800�� ����� ��� ��ȣ,���� ��ȣ, ������, �ּұ޿�, �ִ�޿��� ����Ͻÿ�.
select employee_id, j.job_id, job_title, min_salary, max_salary, salary
from hr.employees e, hr.jobs j
where e.job_id = j.job_id
and salary = 4800;

-- 3. ������ȣ�� 1700�� ����� ���� �̸�, ��ȭ��ȣ, ������� ����Ͻÿ�.
select last_name, first_name, phone_number, hire_date, location_id
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and d.location_id = 1700;

--4.�ּ� �޿��� 4000�� ������ ���� ����� ��, �̸�, �������� ����Ͻÿ�.
select last_name, first_name, job_title, min_salary
from hr.employees e, hr.jobs j
where e.job_id = j.job_id
and min_salary = 4000;

-- 5.���� ��ȣ�� 4�� ������ ��ȣ�� �̸��� ����Ͻÿ�.
select country_id, country_name
from hr.countries
where region_id =4;

--6. ���� ��ȣ�� �ּ�, �����ȣ, ���ø��� ��µǵ��� �Ͻÿ�.
-- ��, UK�� ������ �������� ����Ͻÿ�.
select location_id, street_address, postal_code, city, country_name
from hr.locations l, hr.countries c
where l.country_id = c.country_id
and c.country_id = 'UK';

-- 7.��� �޿��� ���� ���� ������ ����Ͻÿ�.
select job_id
from hr.employees
group by job_id
having avg(salary) = (select max(avg(salary))
                      from hr.employees
                      group by job_id);

-- 8. �����ȣ�� ����ִ� �ּҿ� ���ø��� ����Ͻÿ�.
select street_address, city, postal_code
from hr.locations
where postal_code is null;

-- 9. �μ���ȣ�� 50�� ����� �Ի��ϰ� ������� ����Ͻÿ�.
select start_date, end_date, department_id
from hr.job_history
where department_id = 50;

-- 10. ���� ��ȣ, �����, ���� ��ȣ, �������� ����Ͻÿ�
-- �� region_id �� 1�� �͸� ��µǵ��� �Ͻÿ�.
select country_id, country_name, r.region_id, region_name
from hr.countries c, hr.regions r
where c.region_id = r.region_id
and r.region_id =1;
----------------------------------------------------------------------
-- 1. �̸��� 'Daniel'���� 'Irene'�� �������
-- �����ȣ, �̸�, �޿�
-- �μ� ��ȣ, �μ����� ����Ͻÿ�
-- ��, �̸��� �������� ������������ �����Ͻÿ�.
select employee_id, first_name, salary, d.department_id, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and first_name between 'Daniel' and 'Irene'
order by first_name asc;

-- 2. �μ����� ���� ���� �޿��� ����Ͻÿ�.
-- ��, �μ� ��ȣ�� �������� ������������ �����Ͻÿ�.
select max(salary), department_id
from hr.employees
group by department_id
order by department_id desc;

-- 3. ������ 'MA'�� ���� ��� ��
-- �޿��� 8000�� �Ѵ� ����� 
-- �����ȣ, �̸�, ��, ����
-- �μ� ��ȣ, �μ����� ����Ͻÿ�.
select employee_id, first_name, last_name, job_id
       , d.department_id, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and job_id like '%MA%' and salary>8000;

-- 4. Ŀ�̼��� null�� ���� 0���� �ٲٰ�
-- Ŀ�̼��� ������ ������� ������ ���Ͻÿ�
-- ��� ��ȣ, �̸�, �޿�, Ŀ�̼�, ���� ���
-- ��, ������ ��Ī�� YEAR_SAL �� ǥ���Ͻÿ�
select employee_id, first_name, salary, commission_pct
      , (salary+salary*nvl(commission_pct,0))*12 YEAR_SAL
from hr.employees;

-- 5. �μ���ȣ�� 20, 50, 80�� �μ��� �μ���ȣ�� 
-- ��� �޿�, �ִ� �޿�, �ּ� �޿�, �޿� �� ���� ����Ͻÿ�
select avg(salary), max(salary), min(salary), sum(salary)
from hr.employees
group by department_id
having department_id in (20,50,80);

-- 6. �ּ� �޿��� 4000�� ������, 
-- �ش� ������ ���� ������ ��, �̸�, �޿��� ����Ͻÿ�.
select job_title, last_name, first_name, salary, min_salary
from hr.jobs j, hr.employees e
where j.job_id = e.job_id
and min_salary = 4000;

-- 7.  �μ� ��ȣ
-- �ش� �μ��� ���� ��ȣ, ��, 
-- ���� ��ȣ, �ּҸ� ����Ͻÿ�.
-- ��, �μ��� ���� ������ ����Ѵ�.
select d.department_id, employee_id, last_name, l.location_id, street_address
from hr.employees e left outer join hr.departments d on e.department_id = d.department_id
left outer join hr.locations l on d.location_id = l.location_id;

-- 8. ���� ��ȣ�� 150������ 173���� ������
-- �μ� ��ȣ, �μ���
-- ���� ��ȣ, ��, �̸�
-- ������, ���� ������ ����Ͻÿ�
-- ��, ���� ��ȣ�� �������� ������������ �����Ͻÿ�
select d.department_id, department_name, employee_id, last_name, first_name
       , j.job_id, job_title
from hr.jobs j, hr.employees e, hr.departments d
where j.job_id = e.job_id and e.department_id = d.department_id
and employee_id between 150 and 173
order by employee_id desc;

-- 9. ������ȣ�� 2700�� �μ��� �μ���ȣ�� �ּҸ� ����Ͻÿ�
select d.department_id, street_address, l.location_id
from hr.departments d, hr.locations l
where d.location_id = l.location_id
and l.location_id = 2700;

-- 10. �̸��� 'AN'�� ���� ������
-- ���� ��ȣ, �̸�, �μ�, �μ����� ����Ͻÿ�
-- ��, �̸��� �ҹ���, �빮�� �������
select employee_id, first_name, d.department_id, department_name 
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and first_name like initcap('%AN%');

-- 11. �̸��� 'AN'�� ���� �ʴ� ������
-- ���� ��ȣ, �̸�, �μ�, �μ���, ������, ���������� ����Ͻÿ�
-- ��, �̸��� �ҹ���, �빮�� �������
select employee_id, first_name, d.department_id, department_name, j.job_id, job_title
from hr.jobs j, hr.employees e, hr.departments d
where j.job_id = e.job_id and e.department_id = d.department_id
and first_name not like initcap('%AN%');
----------------------------------------------------------------------
--1�� ���� ���� �� �����ȣ, �̸�, ������ ����� �� ���������� ����ϰ�
-- �μ���� ������ȣ�� ����ϼ���
select employee_id, first_name, j.job_id, job_title, location_id
from hr.jobs j, hr.employees e, hr.departments d
where j.job_id = e.job_id and e.employee_id = d.department_id;

--2�� �������� �����ȣ, �̸� , �޿�, ����, ���������� ����Ҷ�
-- �μ� ���� ���̺��� �μ���, �μ����� ����Ͻÿ�.
select employee_id, first_name, salary, j.job_id, job_title, department_name
from hr.jobs j, hr.employees e, hr.departments d
where j.job_id = e.job_id and e.employee_id = d.department_id;

--3�� ����, ��, �޿�, ����, ���������� ����ϰ� 
-- ���� �����丮 ���̺��� �� ������ �����ϰ� �������� �� ����Ͻÿ�.
select e.employee_id, last_name, salary, j.job_id, job_title, start_date, end_date
from hr.job_history h, hr.jobs j, hr.employees e
where h.employee_id = e.employee_id and e.job_id = j.job_id;

--4�� ����, ����, �μ�, �μ��� using ����Ͽ� ����Ͻÿ�.
select employee_id, job_id, department_id, department_name
from hr.employees join  hr.departments using(department_id);

-- 5�� countries ���̺��� ������ȣ �� ���� �̸� ����ϰ�
-- regions ���̺��� ������ �з���ȣ �� �з��̸��� ����Ͻÿ�
select country_id, country_name, r.region_id, region_name
from hr.countries c, hr.regions r
where c.region_id = r.region_id;

-------------------------------------------------------------------------
-- 1) �ش� ������ �����޿��� �޴� ����� ������ ����Ͻÿ�
--    ���, �̸�, ����, �޿�, �����޿�
select employee_id, first_name, j.job_id, min_salary
from hr.jobs j, hr.employees e
where j.job_id = e.job_id;


-- 2) �μ� ��ġ�� 1800�� �μ��� �����ڵ�, ������, �����ڵ�, �������� ����Ͻÿ�
select c.country_id, country_name, r.region_id, region_name, location_id
from hr.locations l, hr.countries c, hr.regions r
where l.country_id = c.country_id and c.region_id = r.region_id
and location_id = 1800;

-- 3) �μ����̸� �޿��� �ش� ������ ���� �޿� �̻��� ����� ������ ����Ͻÿ�
-- ���, ��, ����, �μ���, ���, �޿�, �����޿�
select e.employee_id, last_name, j.job_id,
       department_name, e.manager_id, salary, min_salary
from hr.jobs j, hr.employees e, hr.departments d
where j.job_id = e.job_id and e.employee_id = d.department_id;

-- 4) ����� 201���� ����ڿ� ��� �� �μ���ȣ�� ���� ����� ������ ����Ͻÿ�
--    ���, �̸�, �μ���ȣ, �μ���
select e.employee_id, first_name, d.department_id, department_name
from hr.job_history h, hr.employees e, hr.departments d
where h.employee_id = e.employee_id and e.department_id = d.department_id
and e.employee_id = 201 and d.department_id = 20;

-- 5) ��簡 ������ �μ����� ����� �̸��� �μ����� ����Ͻÿ�
select first_name, department_name, e.manager_id
from hr.employees e, hr.departments d
where e.employee_id = d.department_id 
and e.manager_id is not null;

-- 6) ������ �� ������ AD_VP�� ����� ���������� ����Ͻÿ�.
--    ���� �̸�, ������ȣ, ������ȣ, �������� ���
select first_name, employee_id, job_title
from hr.jobs j, hr.employees e
where j.job_id = e.job_id 
and j.job_id = 'AD_VP';

-- 7) �μ����� ����� ������ �μ��̸��� ��������, �ְ����� ���Ͻÿ�.
--    �̸�, �μ����ȣ, �μ���ȣ, ��������, �ְ��� ���
select first_name, employee_id, d.department_id, department_name,
       (min_salary)*12, (max_salary)*12
from hr.jobs j, hr.employees e, hr.departments d
where j.job_id = e.job_id and e.manager_id = d.manager_id;

-- 8) �Ի����� '03/06/17' ������ ������� �μ��� ������ȣ�� ���
--    �����ȣ, �̸�, �Ի���, �μ���ȣ, �μ���, ������ȣ ���
select employee_id, first_name, hire_date, d.department_id, department_name
       , location_id
from hr.employees e, hr.departments d
where e.department_id = d.department_id 
and hire_date > '03/06/17';

-- 9) �̸��� 'Payam' ������ ������� ���Ͻÿ�.
--    �����ȣ, �̸�, �μ���ȣ, �μ��̸�, ������� ���
select e.employee_id, first_name, d.department_id, department_name, end_date
from hr.job_history j, hr.employees e, hr.departments d
where j.employee_id = e.employee_id and e.department_id = d.department_id
and first_name = 'Payam';

-- 10) ����� ���� �μ��� �ּҸ� ����ϼ���.
--     �μ���ȣ, �μ��̸�, �ּ� ���
select d.department_id, department_name, l.location_id
from hr.employees e right outer join hr.departments d
on e.department_id = d.department_id join hr.locations l
on d.location_id = l.location_id
where e.department_id is null;




--1. ANSI-JOIN�� ����ؼ� �����ȣ, �̸�, �μ���ȣ, ��ġ�� ����ϴµ� ��簡 149�� ����鸸 ����Ͻÿ�.
select employee_id, first_name, d.department_id, location_id
from hr.employees e join hr.departments d
on e.department_id = d.department_id
where e.manager_id = 149;

--2. ������ 4��°���� 6��°���� PRO�� �ִٸ� it_program���� ���
--                                 ACC�� �ִٸ� finance_account
--                                 �������� business�� ����Ͻÿ�.
select *
from hr.jobs;
select*
from hr.employees;
select*
from hr.departments;
-- 3. ������ REP�� ���ԵǾ� �ִ� ������� ��� �޿��� �ּұ޿�
--      �ִ�޿� �޿��� �հ踦 ���Ͻÿ�.
select avg(salary), min(salary), max(salary), sum(salary)
from hr.employees
where job_id like '%REP';

-- 5.  �μ��� �ִ� �޿��� 10000�̻��� �μ��� ����Ͻÿ�.
select department_id
from hr.employees
group by department_id
having max(salary)>=10000;

