select *from hr.employees;
--���� ���� ���� ���� ������ : ��������
--���� ���� �ุ ���� ������ : selection(����)
--��Ʈ �ΰ��� ��ġ�� �� : ����
--select : ��ȸ
--select ~~ from hr.employees;���� ~~�� column�� ���� �� �ִ�.
--EX)select first_name from hr.employees;
--select first_name,10 from hr.employees;
select * from hr.employees where first_name = 'Ellen';
select * from hr.departments; -- *�� ��� �ڷḦ �� ��������� ��.
SELECT department_id, department_name, manager_id, location_id from hr.departments;
--���� ���̶� *�� ���� �Ŷ� ����.
SELECT department_id, location_id from hr.departments;
--���� ��ó�� �ʿ��� �ุ �������� ���� ���������̶�� �Ѵ�.
--���� ������ ���̺� �ִ� ������ �ƴ� ����� ������� ������ �� �ִ�.

select department_name, '�̼���'
from hr.departments;

select first_name, 'ȸ���', salary, salary*0.1, salary+salary*0.1
from hr.employees;

select employee_id, salary, salary+300
from hr.employees;

-- �� ����� ������ �󿩱� 100�� ���ؼ� ���
select first_name, email, hire_date, salary, 100+(salary*12)
from hr.employees;
-- �޿��� 100�� ���� ������ ���Ͻÿ�
select first_name, email, hire_date, salary, (100+salary)*12
from hr.employees;

select first_name, salary, salary*NULL, salary+null, salary-null
from hr.employees;
-- null�� �𸣴� ���̾ ���ϰ� ���ϰ� ���� ����� null�̴�.(���� ���������� �� �� ����)

select employee_id, salary, commission_pct*100
from hr.employees;
-- ����� �޿��� Ŀ�̼��� ���� ������ ���Ͻÿ�
select first_name, salary, commission_pct, (salary+salary*commission_pct)*12
from hr.employees;

select first_name, salary, commission_pct, (salary+salary*commission_pct)*12 year_sal
from hr.employees;
-- column�� �̸��� �ٲ� �� as�� ���ų� �� ĭ ���� �ٲ� �̸��� ���ش�.

select first_name, salary, commission_pct, (salary+salary*commission_pct)*12 "Year sal"
from hr.employees;
-- �����̳� Ư�� ���ڸ� �����ϰų� ��ҹ��ڸ� �����ϴ� ��� ū ����ǥ�� ����.

--select '��'+'����' from dual; ó�� ���ڿ��� ���� ���Ῥ���� ||�� �Ἥ ���δ�.
select '��'||'����'
from dual; -- ������ ���̺� dual

-- ����� �����ȣ�� �̸�, ��, �׸��� �޿��� ����ϴµ� ���� �̸��� �ٿ��� ����ϼ���.
select employee_id, last_name || ' ' || first_name full_name, salary
from hr.employees;

select '�̼���', '221004'
from dual;

select first_name, salary, department_id, '���', '221004'
from hr.employees;

--ELLEN�� ������ SA_REP�Դϴ� ��� ���
select first_name || '�� ������ ' ||job_id || '�Դϴ�.'
from hr.employees;

--Administration department's manager_id : 200
select department_name || ' department''s' || ' manager_id : ' || manager_id emp
from hr.departments;
--�ٸ� ���
select department_name || ' department' || q'['s manager_id : ]' || manager_id emp
from hr.departments;

desc hr.employees;

--22.10.05 ����
select employee_id, first_name, job_id
from hr.employees;

--������ ���
select job_id
from hr.employees;

--������� �ϰ� �ִ� ������ � ���� �ִ��� ����Ͻÿ�
select distinct job_id
from hr.employees;

--distinct�� �߰��� ���� �� ����. �տ� �־�� �ȴ�.
--select first_name, distinct job_id
--from hr.employees; --����

--������ �޿��� ���� ���� �ѹ��� ��� / 3���� 3�� ��� ���� �͵鸸 �����Ѵ�.
select distinct salary, job_id, department_id
from hr.employees;

desc hr.employees;

--selection
select * 
from hr.employees
where department_id = 90;

--������ AD_VP�� ����鸸 ����ϼ���.
select *
from hr.employees
where job_id = 'AD_VP';
--���ڴ� �׳� ���� ���ڿ��� ' '�ȿ� �־��ش�.

--��� ��ȣ, ��, ����, �μ���ȣ�� ����� �� 60�� �μ��� ������ ������
select employee_id, last_name, job_id,department_id
from hr.employees
where department_id = 60;

select last_name
from hr.employees;

--whalen�̶�� ������ ��, ����, �μ���ȣ�� ����ϼ���.
select last_name, job_id, department_id
from hr.employees
where last_name = 'Whalen';
--�����Ϳ� ���ؼ��� ��ҹ��ڸ� ������ ������ ����������Ѵ�.

select hire_date
from hr.employees;

--05/08/17�� �Ի��� ������� ���
select *
from hr.employees
where hire_date = '05/08/17';

select *
from hr.employees
where hire_date = '05-08-17';

select *
from hr.employees
where hire_date = '2005.08.17';

-- ���� / �⵵ / �� / �� / �� / �� / �� (���ڸ���)

select *
from hr.employees
where commission_pct is null;
-- null�� �� �� ���� ���̹Ƿ� = ���� �񱳸� �� �� ����. ���� is null�� �����ش�.

---�޿��� 3000 �̸��� �޿��� �޴� ����� ������ ������.
select *
from hr.employees
where salary < 3000;

-- ������ �޿��� 2500�̻��̰� 3500������ ������ �����ȣ, ��, �޿��� projection�ؼ� ���
select employee_id, last_name, salary
from hr.employees
where salary <= 3500 and salary>=2500;
--���� ����, between a and b���� a�� b�� ���� �ٲٸ� �ȵ�
select employee_id, last_name, salary
from hr.employees
where salary between 2500 and 3500;

--�����ȣ, ��, �޿�, ����ȣ
--�μ���ȣ�� 30,60,90�� ������ ���
select employee_id, last_name, salary, manager_id
from hr.employees
where department_id = 30 or department_id = 60 or department_id = 90;
--���� ����
select employee_id, last_name, salary, manager_id
from hr.employees
where department_id in(30,60,90);

--��簡 100,101,201�� ������� ���� �� �����ȣ, ��, �޿�, ��翡 ���� ���� ���
select employee_id, last_name, salary, manager_id
from hr.employees
where manager_id in(100,101,201);
--���� 'Hartstein', 'Vargas' ������ �����ȣ, �޿�, ���, �μ���ȣ�� ���� ���� ���
select employee_id,salary, manager_id, department_id
from hr.employees
where last_name in('Hartstein', 'Vargas');

select job_id from hr.employees;

--������ MA�� ���ԵǾ� �ִ� �������� ���
select *
from hr.employees
where job_id like '%MA%'; -- MA% or %MA or %MA%

--������ S�� ���ԵǾ� �ִ� �������� ���
select *
from hr.employees
where job_id like '%S%'; 

--������ K�� ���ԵǾ� �ִ� �������� ���
select *
from hr.employees
where job_id like '%K%'; 

--������ S�� ���۵Ǵ� �������� ���
select *
from hr.employees
where job_id like 'S%'; 
--%�� 0�� �̻��� ���ڸ� ��Ÿ���ϴ�

--boarder��� ���̺� contents��� �÷��� �ִ� ������ �� '�̼���'�� ���Ե� ���� ���
--select *
--from boarder
--where contents like '%�̼���%';

--������ S�� ������ �������� ���
select *
from hr.employees
where job_id like '%S';

-- ������ �ι�° ���ڰ� o�� �����ϴ� ����� ���
select *
from hr.employees
where last_name like '_o%';

-- ������ ����° ���ڰ� s�� �����ϴ� ����� ���
select *
from hr.employees
where last_name like '__s%';
-- _�� ������ ���� ���ڸ� ��Ÿ���ϴ�.

-- ���� �ڿ��� �ι�° ���ڰ� s�� ������ ����� ���
select *
from hr.employees
where last_name like '%s_';

-- ������ 'IT_PROG'�̰� �޿��� 6000�� ����� ���
select *
from hr.employees
where job_id = 'IT_PROG' and salary = 6000;

-- ������ MAN�� ���ԵǾ� �ְ� �޿��� 10000�̻��� ��� ���
-- �����ȣ, ��, ����, �޿�
select employee_id, last_name, job_id, salary
from hr.employees
where job_id like '%MAN%' and salary >=10000;

-- ������ 'MAN'�� ���ԵǾ� �ִ� ����� �޿��� 10000�̻��� ����� ���
select *
from hr.employees
where job_id like '%MAN%' or salary >=10000;

--������ 'IT_PROG', 'ST_CLERK', 'SA_REP'�� �ƴ� ������ ���� ��� ���
select last_name, job_id
from hr.employees
where job_id != 'IT_PROG' and job_id != 'ST_CLERK' and job_id != 'SA_REP';

-- not in ���
select last_name, job_id
from hr.employees
where job_id not in ('IT_PROG','ST_CLERK','SA_REP');

-- ���� ���� �׸��� �޿��� ����ϴµ� ������ 'SA_REP'�� �Ͱ� 'AD_PRES'�� ������ �����ϴ�
-- ������ �� �޿��� 15000�� �ʰ��ϴ� ����� ���
select last_name, job_id, salary
from hr.employees
where job_id in ('SA_REP', 'AD_PRES') and salary > 15000;

select last_name, job_id, salary
from hr.employees
where (job_id = 'SA_REP' or job_id = 'AD_PRES') and salary > 15000;
-- and ������ or ���꺸�� �켱�Ѵ�.

-- ����
-- select
-- from 
-- [where] ���������ؼ� from ������ order by�� �ٷ� �� ���� �ִ�.
-- [order by] ������ �� �� ���

-- ��, ����, �μ���ȣ, �Ի����� ����ϴµ� �Ի����� ���� ��������(��������)
-- �μ���ȣ�� 80�� �μ���
select last_name, job_id, department_id, hire_date
from hr.employees
where department_id = 80
order by hire_date;

-- �Ի����� ���� �������� (��������) -> desc ���̸� ��
select last_name, job_id, department_id, hire_date
from hr.employees
where department_id = 80
order by hire_date desc;

-- �����ȣ, ��, ������ ����ϴµ� ������ ������������ ���
select employee_id, last_name, salary*12 annsal
from hr.employees
order by annsal desc;
-- ��������
-- index    1           2          3(order by������ ��� ����)
select employee_id, last_name, salary*12 annsal
from hr.employees
order by 3;
-- ����ĵ� ��� ����
select employee_id, last_name, salary*12 annsal
from hr.employees
order by salary*12;
-- select �ڸ��� ���� column�� order by �������� ��� ����
select employee_id, last_name, salary*12 annsal
from hr.employees
order by department_id;

-- �ΰ� �̻��� ���ؿ��� ������.
-- �� �μ��� ������������ ���ĵǰ� �� �μ��� �޿��� ������������ ����
-- �����ȣ, ��, �μ���ȣ, �޿� ���
select employee_id, last_name, department_id, salary
from hr.employees
order by department_id desc, salary;

-- �μ��� ������������ �����ϰ� �� �μ��� ������ �Ի����� ���������Ǿ� ���� ��
-- �μ��� ���� ���� ����� �޿��� ������������ �����Ͽ� ���
select employee_id, last_name, department_id, hire_date, salary
from hr.employees
order by department_id, hire_date desc, salary;

-- �μ��� ������������ �����ϰ� ���μ����� ������ ������������ ���ĵ� ���¿��� ������
-- ���� �޿��� ���� ���� �޴� ������� ��µǰ� �ϼ���.
select *
from hr.employees
order by department_id, job_id desc, salary desc;

-- index number�� ����ؼ� �����
desc hr.employees
select *
from hr.employees
order by 11, 7 desc, 8 desc;

-- ���� Austin���� Sciarra���̿� �ִ� ������� ���
select *
from hr.employees
where last_name between 'Austin' and 'Sciarra'
order by last_name;

--���� Austin���� Sciarra ���̿� �ִ� ������� ������ �޿��� ��� ������������ ����
select *
from hr.employees
where last_name between 'Austin' and 'Sciarra'
order by job_id desc, salary desc;

--22.10.06 ����
--����� ���� �� �����ȣ, �̸�, �޿�, ������ ����ϴµ� ������ 'FI_ACCOUNT'�� ����鸸 ���
select employee_id, first_name, salary, job_id
from hr.employees
where job_id = 'FI_ACCOUNT';

--������ '_A'�� �ִ� ������� ���
--���� _�� ���鹮�ڸ� �������� escape�� �Ἥ �� �ǹ̿��� ��� �� �ְ� ������ش�.
select *
from hr.employees
where job_id like '%\_A%' escape '\';

-- projection : ���ϴ� ���� ���� : select
-- selection : ���ϴ� ���� ���� : where 
-- where ���� ����ϱ� ���ؼ� ��(like)�� �� ������(not)�� ���

-- AC_ACCOUNT, AD_PRES, PR_REP�� ������ ���ԵǾ� ���� ���� ��� ���
select *
from hr.employees
where job_id not in('AC_ACCOUNT', 'AD_PRES', 'PR_REP');

--�μ��� ���� ���� ���
select *
from hr.employees
where department_id is null;

--�μ��� �ִ� ���� ���
select *
from hr.employees
where department_id is not null;

--�̸��� Douglas�� Susan ���̿� �ִ� ������ ����ϴµ� ������ 'K_'�� �����ϴ� ������ ����ϼ���
select *
from hr.employees
where first_name between 'Douglas' and 'Susan' and job_id like '%K\_%' escape '\';
--between a and b�� �񱳿����ڷ� �ٲ���
select *
from hr.employees
where first_name >= 'Douglas' and first_name <= 'Susan' and job_id like '%K\_%' escape '\';

--�Է°��� �ϳ��� ���� ���� �� �Լ�, �Է°��� �������� ���� ���� �� �Լ� ������ ��°��� ������ �ϳ�
select lower('SQL COURSE')
from dual;
select upper('SQL COURSE')
from dual;
select initcap('SQL COURSE')
from dual;

select last_name, lower(last_name), first_name, upper(first_name)
       , job_id, initcap(job_id)
from hr.employees;

--higgins������ ������ ���
select *
from hr.employees
where last_name = initcap('higgins');
--����
select *
from hr.employees
where lower(last_name) = 'higgins';

--���� KING�� ������ ����ϼ���
select *
from hr.employees
where upper(last_name) = 'KING';
--����
select *
from hr.employees
where last_name = initcap('KING');

select concat('Hello', 'World')
from dual;

--OConnellDonald, 07/06/21, SH_CLERK
select concat(last_name, first_name) name, hire_date, job_id
from hr.employees;

--OConnell Donald, 07/06/21, SH_CLERK
--concat�� �μ��� �ΰ��� ��
--���� �̸� ���̿� ���� ���
select concat(last_name, concat(' ', first_name)) name, hire_date, job_id
from hr.employees;

--substring
--sql������ index number�� ó���� 1������ ����
select substr('HelloWorld', 1,5) 
from dual;
-- -2�� �ڿ��� �ι�°�� ���ϰ� �׺��� ���������� �����´�.
select substr('HelloWorld', -2,5) 
from dual;

--�μ� �������� �μ���ȣ, �μ���, �μ����� ����ϴµ� �μ����� �ι�° ���ں���
--5���ڸ� ���
select department_id, substr(department_name,2,5), manager_id
from hr.departments;

--instr : indexof('abcdefg', 'c') -> abcdefg���� c�� ���°�� �ֳ�
select instr('HelloWorld', 'W')
from dual;
select instr('010-6542-7265', '-')
from dual;
-- �ڿ������� ã��
select instr('010-6542-7265', '-',-1)
from dual;

--������� �߿� �����ȣ, �̸�, �̸���, �̸��Ͽ��� 'S'�� �ִ� ��ġ�� ���
select employee_id, first_name, email, instr(email,'S')
from hr.employees;

--substr�� instr�� ���� ���
--�����ȣ, �̸�, �޿�, �̸���, �̸��Ͽ��� 'S'�� �ִ� ��ġ���� 5���� ���
select employee_id, first_name, salary, email, substr(email, instr(email,'S'),5)
from hr.employees;

--length
select length('HelloWorld')
from dual;

select last_name, length(last_name), first_name, length(first_name)
        , email, length(email)
from hr.employees;

--�̸��� ���̰� 6�� �̻��� ������ ���
select *
from hr.employees
where length(first_name) >= 6;

--lpad, rpad
select lpad('Hello',10,'*')
from dual;
--lpad or rpad(���ڿ� , ���� ����, ������ ä�� ����)
select rpad('Hello',10,'*')
from dual;

select rpad(first_name, 15, '*'), lpad(salary, 10, '*')
from hr.employees;

--010-7146-1970, 010-****-1970
--02-314-1970, 02-***-1970
select substr('010-7146-1970',1, instr('010-7146-1970','-',-1)-1)|| substr('010-7146-1970',-5,5)
from dual;

select substr('010-7146-1970',1, instr('010-7146-1970','-'))|| 
      lpad(substr('010-7146-1970',-5,5),length(substr('010-7146-1970',1, instr('010-7146-1970','-',-1))),'*')
from dual;

--�̸��Ͽ��� �տ��� 2���ڸ� ����ϰ� �������� �����ʿ� *�� ä���� ����ϼ���.
select employee_id, first_name, email, rpad(substr(email,1,2), length(email), '*')
from hr.employees;

--replace
select replace('JACK and JUE', 'J', 'BL')
from dual;

--������ -AS�� �ִٸ� abc�� ����
select employee_id, first_name, job_id, replace(job_id,'_AS','abc') 
from hr.employees;

select ' hello world ', trim(' hello world '),rtrim(' hello world '),ltrim(' hello world ')
from dual;
select ' hello world ', trim(' hello world '),rtrim(' hello world '),ltrim(' hello world ')
from dual;

select * 
from hr.employees
where first_name = trim('    Donald     ');

-- round(n1, n2) : �ݿø��ؼ� �Ҽ��� n2�ڸ����� ���
select round(15.19345, 3), round(15.19355, 3), round(145.5554,2)
    , round(145.5554,1), round(145.5554,0), round(145.5554,-1), round(145.5554,-2)
from dual;

--trunc(): ����
select trunc(15.19345, 3), trunc(15.19355, 3), trunc(145.5554,2)
    , trunc(145.5554,1), trunc(145.5554,0), trunc(145.5554,-1), trunc(145.5554,-2)
from dual;

--mod(): ������
select mod(10,3)
from dual;

-- ��������� ����� �� �̸�, �޿�, �޿��� 5000���� ���� �������� ���
-- ������ SA_REP�� ���
select first_name, salary, mod(salary,5000)
from hr.employees
where job_id = 'SA_REP';

-- sysdate : ���� ��¥ ���
select sysdate
from dual;

--�����ȣ, �̸�, �޿�, �Ի���, �Ի��Ϸκ��� ��ĥ�� ��������+���+��ĥ ���
select employee_id, first_name, hire_date, sysdate-hire_date, trunc((sysdate-hire_date)/365,0)
       , trunc(mod(sysdate-hire_date,365),0)
from hr.employees;

-- �̸�, �޿�, �Ի���, �Ի��ѳ��κ��� ���ְ� �Ǿ����� ���
select first_name, hire_date, trunc((sysdate-hire_date)/7,0) week
from hr.employees;

--�޿��� 500���� ���� �������� 400�̻��� ������� ���
--�����ȣ, �̸�, �Ի���, ����, �޿�
select employee_id, first_name, hire_date, job_id, salary
from hr.employees
where mod(salary,500)>=400;

--���� ��¥���� ���� �ݿ����� ��ĥ�Դϱ�?
select next_day(sysdate,'��'), next_day(sysdate,'�ݿ���')
from dual;

--�Ի��� ���� �������� ��ĥ�ϱ��?
--�̸�, ��, ����, �Ի���
select first_name, last_name, job_id, hire_date, next_day(hire_date,'��')
from hr.employees;

--���� ��¥�κ��� 5���� ��
SELECT add_months(sysdate,5)
from dual;

--Neena�� �Ի��ϰ� 3���� �İ� �������� �Ǵ� ���̴�.
--�̸�, ��, �Ի���, ����, �����ȣ�� ���� ���
select first_name, last_name, hire_date, job_id, employee_id, add_months(hire_date,3)
from hr.employees
where first_name = 'Neena';

--�Ի��� ���� ���� ������� '01/01/18'�� ����� ���Ͻÿ�.
select *
from hr.employees
where next_day(hire_date,'��') = '01/01/18';

--�̹� �� ���������� ��ĥ�ϱ�?
select last_day(sysdate)
from dual;

--�Ի��� ���� ������ ���� 29���� ������� ���
--��, �Ի���, �������� ���
select last_name, hire_date, last_day(hire_date)
from hr.employees
where last_day(hire_date) like '%/%/29';

--�Ի��Ϸκ��� ����� �Ǿ�����, ��ĥ�� �Ǿ�����, ���ְ� �Ǿ�����
--�����ȣ, ����, �Ի���
select employee_id,job_id, trunc((sysdate-hire_date)/365,0) year, 
     trunc(sysdate-hire_date) day , trunc((sysdate-hire_date)/7,0) week
     , trunc(months_between(sysdate, hire_date)) month
from hr.employees;

--�Ի����� 200������ ���� ������� ���
select *
from hr.employees
where months_between(sysdate,hire_date)>230;

--22.10.07 ����
--��ȯ �Լ� : �Ͻ��� ����ȯ - �ڵ�����ȯ / ����� ����ȯ - ��������ȯ
select '10'+'10'
from dual;
--�ڵ� ����ȯ�� �Ǳ� ������ ���� ������ ����ȯ�� �� �ʿ䰡 ����.
select to_number('10')+'10'
from dual;

select sysdate,
       to_char(sysdate, 'yy-mm-dd'),
       to_char(sysdate, 'dd-mm-yy'),
       to_char(sysdate,'fmdd-mm-yy'),
       to_char(sysdate,'yyyy-mm-fmdd'),
       to_char(sysdate, 'yyyy-mm-dd'),
       to_char(sysdate, 'YYYY-MM-DD HH:MI:SS.SSSSS'),
       to_char(sysdate, 'yyyy-mm-dd HH24:MI:SS.SSSSS AM'),
       to_char(sysdate, 'yyyy-mondd HH24:MI:SS.SSSSS AM')
from dual;

-- 21-06-2007�� �Ի��� ������ ���
select*
from hr.employees
where to_char(hire_date, 'dd-mm-yyyy') = '21-06-2007';

-- 21-6-2007�� �Ի��� ������ ���
select*
from hr.employees
where to_char(hire_date, 'dd-fmmm-yyyy') = '21-6-2007';

-- ���ڸ� ���ڿ���
-- 1234567 => W1,234,567 / $1,234,567 / $1,234,567-
select to_char(1234567.890,'9,999,999'),
       to_char(1234567.890,'9,999,999.00'),
       to_char(1234567.890,'$9,999,999.00'),
       to_char(1234567.890,'L9,999,999.00'),
       to_char(-1234567.890,'L9,999,999.00MI')
from dual;

-- �̸�,��,����,�μ� �׸��� �޿��� ���ڸ��� ,�� ��� $�� ���
select first_name, last_name, job_id, department_id, salary, to_char(salary,'$9,999,999,999')
from hr.employees;

-- 03/06/17 ���Ŀ� �Ի��� �����
select *
from hr.employees
where hire_date > '03/06/17';

select *
from hr.employees
where hire_date > to_date('17/06/03', 'dd/mm/yy');

--06 / 17 / 03  ==> mm/dd/yy���� ���� ���°� � �������� �˷��ָ� ��.
select *
from hr.employees
where hire_date > to_date('06/17/03', 'mm/dd/yy');

-- 06/17/03 ������ �Ի��� ������ ��ȸ
select *
from hr.employees
where to_char(hire_date, 'dd/mm/yy') < '06/17/03';
-- ��¥�� ���� ���� ��¥�� ���ڷ� �ٲٴ� ���� �ƴ϶� ���ڸ� ��¥�� �ٲ㼭 ��ȸ�ؾߵȴ�.
-- ���� ����(to_char)�� �߸��� ���̴�. 

-- NVL �Լ� (Null Value �Լ�)
-- ��, �޿�, ������ ���
-- ������ ����� �� �� Ŀ�̼ǵ� ����
select last_name, salary, (salary+salary*nvl(commission_pct,0))*12 year_sal
from hr.employees;

-- nvl2(commission_pct, 'null�� �ƴ� ��', 'null�� ��')
select last_name, salary, commission_pct,(salary+salary*nvl2(commission_pct,commission_pct,0))*12 year_sal
from hr.employees;

-- nullif -> ���� ������ null, ���� �ٸ��� �տ��� nullif(a,b)
select first_name , length(first_name) "expr1", last_name, length(last_name) "expr2"
       , nullif(length(first_name), length(last_name)) result
from hr.employees;

-- coalesce
select last_name, employee_id, manager_id, commission_pct,
coalesce(to_char(commission_pct), to_char(manager_id), 'No commission and no manager')
from hr.employees;

-- null ���� �Լ� -> �Ϲ� �Լ�(nvl, nvl2, nullif, coalesce)

-- ���Ǻ� ǥ����: java�� switch ~ case ������ ���.
-- case, decode�� ����
-- �޿��� ���� ������ ����ϰ� �ʹ�.
-- �̸�, ��, �޿�, ����, ������ ���
-- �޿��� 2000���� ���� ���� 0�̸� �޿��� 0%
--                         1�̸� �޿��� 9%
--                         2�̸� �޿��� 20%
--                         3�̸� �޿��� 30%
--                         4�̸� �޿��� 40%
--                         5�̸� �޿��� 42%
--                         6�̸� �޿��� 44%
--                         �̿� �޿��� 45% �����̴�
select first_name, last_name, salary, job_id,
       case trunc((salary/2000),0) when 0 then salary * 0
        when 1 then salary * 0.09
        when 2 then salary * 0.2
        when 3 then salary * 0.3
        when 4 then salary * 0.4
        when 5 then salary * 0.42
        when 6 then salary * 0.44
       else salary * 0.45 end tax
from hr.employees;

select first_name, last_name, salary, job_id,
       case when salary <2000 then salary *0.00
            when salary <4000 then salary *0.09
            when salary <6000 then salary *0.20
            when salary <8000 then salary *0.30
            when salary <10000 then salary *0.40
            when salary <12000 then salary *0.42
            when salary <14000 then salary *0.44
            else salary*0.45 end tax
from hr.employees;

-- ��, �̸�, ����, �޿�, �޿��� ���� ��å�� ���� ���
-- �޿��� 3000�����̸� ���, 5000���ϸ� ����, 7000 �븮, 9000 ����, 11000 ����, 13000����, �� �̻� �ӿ�
select last_name, first_name, job_id, salary, 
       case when salary <= 3000 then '���'
        when salary <= 5000 then '����'
        when salary <= 7000 then '�븮'
        when salary <= 9000 then '����'
        when salary <= 11000 then '����'
        when salary <= 13000 then '����'
       else '�ӿ�' end saljob
from hr.employees
order by salary;

--decode�� ���ϰ������� ��� ����, ������������ ��� �Ұ�
select first_name, last_name, salary, job_id,
       decode (trunc((salary/2000),0) , 0 , salary * 0
                                   , 1 , salary * 0.09
                                   , 2 , salary * 0.2
                                   , 3 , salary * 0.3
                                   , 4 , salary * 0.4
                                   , 5 , salary * 0.42
                                   , 6 , salary * 0.44
                                   , salary * 0.45) tax
from hr.employees;

select last_name, job_id, salary,
case job_id when 'IT_PROG' then 1.10*salary
            when 'ST_CLERK' then 1.15*salary
            when 'SA_REP' then 1.20*salary
            else salary end "REVISED_SALARY"
from hr.employees;

select last_name, job_id, salary,
decode (job_id , 'IT_PROG' , 1.10*salary
            , 'ST_CLERK' , 1.15*salary
            , 'SA_REP' , 1.20*salary
            , salary)  "REVISED_SALARY"
from hr.employees;

-- ȸ���� ��ü ��� �޿�, �ѱ޿�, �ִ� �޿�, �ּ� �޿�, �޿� �޴� ��� ��
select avg(salary), sum(salary), max(salary), min(salary), count(salary)
from hr.employees;

-- ������ REP�� ������ �ִ� ��� �޿��� �հ�� ��� �޿�, �޿��� �޴� ��� ��
-- avg(salary) = sum(salary) / count(salary)
select sum(salary), avg(salary), count(salary)
from hr.employees
where job_id like '%REP%';

-- �Ի����� ���� ���� ���� ���� ���� ���� ����ϼ���
select min(hire_date), max(hire_date)
from hr.employees;

-- 80 �μ��� ���� ���� ���� ����� �Ի��ϰ� ���� �ʰ� ���� ����� �Ի���
select min(hire_date), max(hire_date)
from hr.employees
where department_id = 80;

-- count �� null�� �ƴ� ���� ���� ��ȯ
select count(employee_id), count(first_name), count(salary), count(commission_pct),
       count(department_id), count(*)
from hr.employees;

select avg(salary), sum(salary) / count(*), sum(salary) / count(department_id)
from hr.employees;

-- ������ �����ִ� �μ��� ���� (distinct�� �ߺ� ���� �� ī��Ʈ)
select count(distinct department_id)
from hr.employees;

-- Ŀ�̼��� ����� ���Ͻÿ�(avg�� commission_pct�� �ȹ޴� ����� ����x)
select avg(commission_pct), sum(commission_pct)/count(*)
from hr.employees;
select avg(nvl(commission_pct,0))
from hr.employees;

-- �� ���
select sum(salary), avg(salary), min(salary), max(salary)
from hr.employees;

-- 80�μ���
select sum(salary), avg(salary), min(salary), max(salary)
from hr.employees
where department_id = 80;

-- �� �μ���
select sum(salary), avg(salary), min(salary), max(salary), department_id
from hr.employees
group by department_id;

-- �� ������ �޿��� ���, �հ�, �ִ�, �ּ�
select sum(salary), avg(salary), min(salary), max(salary), job_id
from hr.employees
group by job_id;

-- �Ի����� ���� ��� �޿��� ���, �հ�, �ּ� �ִ�
select sum(salary), avg(salary), min(salary), max(salary), hire_date
from hr.employees
group by hire_date;

-- ������ REP�� ������ �ִ� ����� �޿��� �հ�, ��� �޿�, �� �μ��� ����� ���Ͻÿ�
select sum(salary), avg(salary), min(salary), max(salary)
from hr.employees
where job_id like '%REP%'
group by department_id;

-- �� �μ��� ��� �޿� �� ���� ���� �޴� ��� �޿���?
select max(avg(salary))
from hr.employees
group by department_id;

select department_id, hire_date, first_name, salary
from hr.employees
order by department_id, hire_date;

-- �� �μ��� ������ �޿��� ���, �հ�, �ִ�, �ּ�, ���� ���� ���Ͻÿ�
-- �μ��� ������������ ����
select department_id, job_id, avg(salary), sum(salary), max(salary), min(salary), count(salary)
from hr.employees
group by department_id, job_id
order by department_id asc;

-- �� �μ����� ������ ���� ����� �� �Ի����� ���� ����� ���� ���Ͻÿ�
select department_id, job_id, hire_date, count(*)
from hr.employees
group by department_id, job_id, hire_date;

-- ������ 'REP'�� �����ϴ� �� �μ��� ����� 8000�̻��� �μ��� ��� �޿�, �հ�, �ּ�, �ִ�
select department_id, avg(salary), sum(salary), min(salary), max(salary)
from hr.employees
where job_id like '%REP%'
group by department_id
having avg(salary)>=8000
order by department_id;
--group by���� ���� ������ �ֱ� ���� having���� ���

-- �� �μ����� ������ ���� ����� �� �Ի����� ���� ����� ���� ���Ͻÿ�
-- ��� ���� 2�� �̻� ���
select department_id, job_id, hire_date, count(*)
from hr.employees
group by department_id, job_id, hire_date
having count(*)>=2;

-- �μ��� ���� ���� 10�� �̸��� �μ��� ���
select department_id, count(*)
from hr.employees
group by department_id
having count(*)<10;

select *
from hr.employees
order by employee_id;
-- ���� ��� ��ȣ�� ����ϼ���.
select max(employee_id)+1 
from hr.employees;

-- 2022.10.11. ����
-- employees : ������ ���� ����
-- departments : �μ��� ���� ����
-- 20�� �μ��� �������� ����ϼ��� : 
select * 
from employees 
where department_id = 20;
-- 20�� �μ��� �μ����� ����ϼ��� : 
select department_name 
from departments 
where depamrtment_id = 20;

-- T-SQL - join
select first_name, last_name, hire_date, hr.employees.department_id, department_name
from hr.employees , hr.departments
where hr.employees.department_id = hr.departments.department_id;

select first_name, last_name, hire_date, e.department_id, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id;

-- 1999 �������� ���� : ansi - join
select first_name, last_name, hire_date, e.department_id, department_name
from hr.employees e join hr.departments d
on e.department_id = d.department_id
where e.department_id = 20;

-- ������ �� ������ SH_CLERK�� ������� ����ϼ���.
-- �����ȣ, �̸� ,�޿�, �μ���, ������ȣ
select employee_id, first_name, salary, department_id, job_id
from hr.employees
where job_id = 'SH_CLERK';
-- ���� ���̺��� JOBS���� ������ SH_CLERK�� ���������� ����ϼ���.
select job_title 
from hr.jobs
where job_id = 'SH_CLERK';
-- T-SQL - join
select employee_id, first_name, salary, department_id, hr.employees.job_id, job_title
from hr.employees , hr.jobs
where hr.employees.job_id = hr.jobs.job_id ;
-- 1999 �������� ���� : ansi - join
select employee_id, first_name, salary, department_id, e.job_id, job_title
from hr.employees e join hr.jobs j
on e.job_id = j.job_id ;
-- NATURAL JOIN : �� ���̺��� �÷����� ���ƾ� �ȴ�(job_id)
-- T-SQL�� ansi - join�� �÷����� �޶� �÷����� ���� �� �� �� ������ ������ �÷����� ����
-- on e.job_id = j.job_id(on ��)�� �����Ǿ��ִ� �Ͱ� ���� �ƶ��̴�.
select employee_id, first_name, salary, department_id, job_id, job_title
from hr.employees  natural join hr.jobs;

select * from hr.employees; --department_id, manager_id�� �ְ�
select * from hr.departments;--department_id, manager_id�� �ִ�

-- ansi join
select first_name, last_name, hire_date, e.manager_id, e.department_id, department_name
from hr.employees e join hr.departments d
on e.department_id = d.department_id and e.manager_id = d.manager_id;

-- ������ �� �μ����� ���� �� �������� �μ����� ����Ͻÿ�. - T-SQL join
select first_name, last_name, hire_date, e.manager_id, e.department_id, department_name
from hr.employees e , hr.departments d
where e.manager_id = d.manager_id and e.department_id = d.department_id;
-- natural join������ ��Ī ���� �ʴ´�.
select first_name, last_name, hire_date, manager_id, department_id, department_name
from hr.employees natural join hr.departments;

-- using ������ ����� �÷��� select ���� ���̺� ��Ī�� ���� �ʴ´�.
select first_name, last_name, hire_date, e.manager_id, department_id, department_name
from hr.employees e join hr.departments d
using (department_id);
select first_name, last_name, hire_date, manager_id, department_id, department_name
from hr.employees e join hr.departments d
using (department_id, manager_id);
-- ���ϴ� ���̺� ���� �÷��� �������� ��� Ư�� ������ ���ϰ� ���� �� using�� ���

select*
from hr.employees;
select*
from hr.departments;
select*
from hr.jobs;
-- T-SQL join, ansi join, natural join, using��
-- �� ������ ������ȣ, ������ȣ, �μ���ȣ, �μ���
-- �� �� 20, 30, 50, 80�� �μ��� ���
select employee_id, job_id, e.department_id, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id 
and e.department_id in (20,30,50,80);
       
select employee_id, job_id, e.department_id, department_name
from hr.employees e join hr.departments d
on e.department_id = d.department_id 
where e.department_id in (20,30,50,80);       
      
select employee_id, job_id, department_id, department_name
from hr.employees  natural join hr.departments 
where department_id in (20,30,50,80);  

select employee_id, job_id, department_id, department_name
from hr.employees e join hr.departments d
using (department_id) 
where department_id in (20,30,50,80);  

select *
from hr.departments;

-- �μ���ȣ, �μ���, �����ȣ(Location_id), �ּ�(street_address)�� ����ϴµ� 
-- �����ȣ�� 1400�� ���
select department_id, department_name, d.location_id, street_address
from hr.departments d, hr.locations l
where d.location_id = l.location_id 
and d.location_id = 1400;

select department_id, department_name, d.location_id, street_address
from hr.departments d join hr.locations l
on d.location_id = l.location_id 
and d.location_id = 1400;

select department_id, department_name, location_id, street_address
from hr.departments natural join hr.locations 
where location_id = 1400;

select department_id, department_name, location_id, street_address
from hr.departments  join hr.locations 
using (location_id)
where location_id = 1400;

-- 3way join : ���� ����
-- SH_CLERK�� ������ ���� ����� �����ȣ, �̸�, ����, �μ���ȣ ����ϴµ� 
-- SH_CLERK�� ���� ������ Ȯ���ϰ�
-- SH_CLERK�� ������ ������ �ִ� ����� �μ����� ����Ͻÿ�
select employee_id, first_name, job_id, department_id
from hr.employees
where job_id = 'SH_CLERK';

select department_id, department_name
from hr.departments
where department_id = 50;

select job_id, job_title
from hr.jobs
where job_id = 'SH_CLERK';

-- T-SQL join
select employee_id, first_name, e.job_id, e.department_id, department_name, job_title
from hr.employees e, hr.departments d, hr.jobs j
where e.department_id = d.department_id 
and e.job_id = j.job_id
and e.job_id = 'SH_CLERK';

-- ansi join
select employee_id, first_name, e.job_id, e.department_id, department_name, job_title
from hr.employees e join hr.departments d on e.department_id = d.department_id 
join hr.jobs j on e.job_id = j.job_id
where e.job_id = 'SH_CLERK';

-- natural join : �÷����� ���� �� ��� �ǹ������� ��
select employee_id, first_name, job_id, department_id, department_name, job_title
from hr.employees  natural join hr.departments  natural join hr.jobs
where job_id = 'SH_CLERK';

-- using
select employee_id, first_name, job_id, department_id, department_name, job_title
from hr.employees  join hr.departments  using (department_id)
join hr.jobs using(job_id) 
where job_id = 'SH_CLERK';


select*
from hr.employees;
select*
from hr.departments;
select*
from hr.locations;
select*
from hr.jobs;
-- ������������ �����ȣ, �̸�, �޿�, ������ ����� ��
-- �μ����� ���̺��� �μ���, �����ȣ(location_id)�� ����ϸ�
-- �ּ����̺��� �����ȣ�� �ش��ϴ� �ּҸ� ����ϼ���.
select employee_id, first_name, salary, department_name, l.location_id
       , e.department_id
from hr.employees e , hr.departments d, hr.locations l
where e.department_id = d.department_id
and d.location_id = l.location_id;

select employee_id, first_name, salary, department_name, l.location_id
       , e.department_id
from hr.employees e join hr.departments d on e.department_id = d.department_id
join hr.locations l on d.location_id = l.location_id;

select employee_id, first_name, salary, department_name, location_id
       , department_id
from hr.employees  natural join hr.departments 
natural join hr.locations;

select employee_id, first_name, salary, department_name, location_id
       , department_id
from hr.employees join hr.departments using(department_id)
join hr.locations  using(location_id);

-- ���� ���� �� �����ȣ , �̸�, ������ ����� �� ���������� ����ϰ�
-- �μ���ȣ�� �μ����� ����ϼ���
select employee_id, first_name, e.job_id, job_title, d.department_id, department_name
from hr.jobs j, hr.employees e, hr.departments d
where j.job_id = e.job_id and e.department_id = d.department_id;

select employee_id, first_name, e.job_id, job_title, d.department_id, department_name
from hr.jobs j join hr.employees e on j.job_id = e.job_id
join hr.departments d on e.department_id = d.department_id;

select employee_id, first_name, job_id, job_title, department_id, department_name
from hr.jobs natural join hr.employees natural join hr.departments;

select employee_id, first_name, job_id, job_title, department_id, department_name
from hr.jobs join hr.employees using(job_id)
join hr.departments using(department_id);

-- ���� ������ ���ϴµ� �����ȣ, �̸�, �޿�, �Ի����� ����� ��
-- ������ ���Ѱ��� ���Ѱ��� ����ϰ� 
-- ���μ��� �μ����� ����ϰ� �μ��� �����ȣ�� �ּҸ� ����ϼ���.
select *
from hr.locations;

select employee_id, first_name, salary, hire_date, e.department_id, j.job_id, 
       max_salary, min_salary, department_name, l.location_id, street_address
from hr.jobs j, hr.employees e, hr.departments d, hr.locations l
where j.job_id = e.job_id and e.department_id = d.department_id and l.location_id = d.location_id;

select employee_id, first_name, salary, hire_date, e.department_id, j.job_id, 
       max_salary, min_salary, department_name, l.location_id, street_address
from hr.jobs j join hr.employees e on j.job_id = e.job_id
join hr.departments d on e.department_id = d.department_id
join hr.locations l on l.location_id = d.location_id;

-- outer join
-- �μ��� ���� ���� ���
select employee_id, first_name, salary, department_id
from hr.employees
where department_id is null;
-- �����ȣ, �̸�, �޿�, ����, �μ���ȣ, �μ��� ���
select employee_id, first_name, salary, job_id, d.department_id, department_name
from hr.employees e left outer join hr.departments d
on e.department_id = d.department_id;
-- ����� ���� �μ����� ���� ����̶�� ��
select employee_id, first_name, salary, job_id, d.department_id, department_name
from  hr.employees e right outer join  hr.departments d
on e.department_id = d.department_id;
-- �� ���� ���� �� ����� ���̶�� ��
select employee_id, first_name, salary, job_id, d.department_id, department_name
from hr.departments d full outer join hr.employees e
on e.department_id = d.department_id;
-- T-SQL �������� �ٲٷ��� : ����ϰ� ���� ���� �ݴ��� (+)�� ����
select employee_id, first_name, salary, job_id, d.department_id, department_name
from hr.employees e , hr.departments d
where e.department_id = d.department_id(+);