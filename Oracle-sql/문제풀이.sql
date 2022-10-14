--1. ������ȣ, �̸� , �̸���, �Ի��� 
select employee_id, first_name, email, hire_date
from hr.employees;
-- 2. ������ȣ, �̸� , �޿�, �� ��� �޿��� 100���Ͻÿ�
select employee_id, first_name, salary, salary+100
from hr.employees;
-- 3. ������ȣ, ��, �Ի���, ����, ������ ����Ͻÿ�
select employee_id, last_name, hire_date, job_id, salary*12 
from hr.employees;
-- �μ�����
select *
from hr.employees;
--- 4. �ּ�, �μ���ȣ, �μ����ȣ, �μ�������� ���
select *
from hr.departments;
-- 5. ������̺��� ������ȣ , �Ի���, ��, �޿������� ���
SELECT employee_id, hire_date, last_name, salary
from hr.employees;
-- 6. ����:
-- ������̺��� �����ȣ, �μ���ȣ , ����, ������ ����ϴµ� 
-- �ſ� 300�� ���ʽ��� ������ �ȴ�.
select employee_id, department_id, job_id, (salary+300)*12
from hr.employees;
-- 7. ������̺��� �����ȣ, �μ���ȣ , ����, ������ ����ϴµ� 
-- ������ �޿� 300�� Ư�� ���ʽ��� ������ �ȴ�.
select employee_id, department_id, job_id, salary*12+300
from hr.employees;
-- 8. ������̺��� �����ȣ, ��, �̸��� , �޿��� ���� Ŀ�̼��� 30%�� �����̵� ��
-- Ŀ�̼� ���� ����Ͻÿ�.
select employee_id, last_name, email, salary*0.3 commission_pct
from hr.employees;
-- 9.  ������̺��� ������ȣ �̸��� �̸� �Ի��� �޿�, Ŀ�̼��ۼ�Ʈ�� ���
select employee_id, email, first_name, hire_date, salary, commission_pct
from hr.employees;
-- 10�� ����Ͻÿ�
select 10 
from dual;
-- 10��  null�� ���Ͻÿ�.
select 10*null
from dual;
-- 10.  ������̺��� ������ȣ �̸��� �̸� �Ի��� �޿�, Ŀ�̼��ۼ�Ʈ�� ����ϴµ�
-- �� ����� �޴� Ŀ�̼��� �ݾ׵� ���� ����Ͻÿ�.
select employee_id, email, first_name, hire_date, salary, commission_pct, salary*commission_pct
from hr.employees;
-- 11. ������ȣ, �̸���, �̸�, �Ի���, ����ó, �μ���ȣ, �޿�, Ŀ�̼��ۼ�Ʈ, 
-- �׸��� Ŀ�̼��� ���ѵ� ������ ����Ͻÿ�,
select employee_id, email, first_name, hire_date, phone_number,department_id, salary, commission_pct, (salary+salary*commission_pct)*12
from hr.employees;
--- 16. ������ȣ, last_name first_name(KingSteven),�޿�, ����
select employee_id, last_name || first_name, salary, job_id
from hr.employees;
--17. 16���������� ���� �̸��� ���鹮�ڸ� ����.
select employee_id, last_name || ' ' || first_name, salary, job_id
from hr.employees;
-- 18. �����ȣ�� �޿��� ����ϴ� ���̿� �Ʒ� ������ ��µǰ� �Ͻÿ�. 
-- "KingSteven�� ������ AD_PRES�Դϴ�"�� �������.
select employee_id, last_name || ' ' || first_name || '�� ������ ' || job_id ||'�Դϴ�', salary
from hr.employees;
-- 19. ������ �μ���ȣ�� ����Ͻÿ�.
select department_id
from hr.employees;
-- 20. ������ �μ��� ��� ������� ���� �ѹ����� ����Ͻÿ�.
--     ������ �����ִ� �μ��� ��� �μ������� �˰� �ʹ�.
select distinct department_id
from hr.employees;
-- 21. ������ �Ի����� �ߺ����� ���� �͸� ����Ͻÿ�.
select distinct job_id, hire_date
from hr.employees;
-- 22. 90�� �μ��� ������� ����Ͻÿ�
select *
from hr.employees
where department_id = 90;
-- 23. �����ȣ, ��, �̸�, �޿��� ���
select employee_id, last_name, first_name, salary
from hr.employees;
-- 24. 90�� �μ��� ������� ����� �� �����ȣ, �̸� , ��, �޿� ���
select employee_id, last_name, first_name, salary
from hr.employees
where department_id = 90;
-- 25. �̸��� 'Nancy'�� ����� �Ի��� , ����, �޿�, Ŀ�̼��ۼ�Ʈ�� ����ϼ���.
select hire_date, job_id, salary,commission_pct 
from hr.employees
where first_name = 'Nancy';
-- 26. �Ի����� 06/01/03�� ����� ����Ͻÿ�.
-- hire_date�� ������ Ÿ���� date �� timestamp
select *
from hr.employees
where hire_date = '06/01/03';
-- 27. �޿��� 3000�̻��� ������� ��, �޿��� ����Ͻÿ�.
select last_name, salary
from hr.employees
where salary >= 3000;
-- 28. �Ի����� 06/01/03���� �ʰ� �Ի��� ������ �����ȣ �̸� �޿��� ����Ͻÿ�.
select employee_id, first_name, salary
from hr.employees
where hire_date>'06/01/03';
-- 30. �޿��� 3000�� �ƴ� ����� ��� ����Ͻÿ�.
select *
from hr.employees
where salary!=3000;
-- 31. �޿��� 2500���� 3500������ ����� �� �����ȣ�� �̸�, �޿�, ����, �Ի����� ���
select employee_id, first_name, salary, job_id, hire_date
from hr.employees
where salary>=2500 and salary<=3500;
-- 32. ���� King����  Smith���̿� �ִ� ������� ����Ͻÿ�.
select *
from hr.employees
where last_name between 'King' and 'Smith';









--- 1. �̸��� 'steven'�� �����  ����Ͻÿ�.
select*
from hr.employees
where lower(first_name) = 'steven';
-- 2. ���� KING�� ������ ����ϼ���.
select*
from hr.employees
where last_name = initcap('KING');
-- 3. �̸��� ������ ������ 5�� ������� ����ϼ���.
select*
from hr.employees
where length(first_name) =5;
-- 4.  �޿��� 5�ڸ� �̻��� ����� ���Ͻÿ�.
select*
from hr.employees
where length(salary)>=5;
-- 5. �̸��� 's'�� ���� ����� �� �̸��� ���°�� �ִ��� ����ϼ���.
select instr(first_name, 's')
from hr.employees;
-- 6.  �̸��� 's'�� 3��°�� �ִ� ������� ����ϼ���.
select *
from hr.employees
where instr(first_name,'s') =3;
-- 7. �̸��� ���� �޿��� ������ ����� �� �̸����� 3��° ���� ���� ����Ͻÿ�.
select first_name, last_name, salary, job_id, email, substr(email,3)
from hr.employees;
-- 8. �̸��Ͽ� 'S'���� ����ϰ�, �޿�, �Ի���, �̸� ,���� ����ϼ���.
select salary, hire_date, first_name, last_name, email
      , substr(email, instr(email,'S'))
from hr.employees;
--9. �̸� , �޿�, ����, �μ��� ����� �� �̸����� 3��° ���� 4��¥�� ����Ͻÿ�.
select first_name, salary, job_id, department_id, substr(email,3,4)
from hr.employees;
--10. �̸��Ͽ� 3��°���� 4���ڿ� 'ARTS'�� �ִ� ����� ����ϼ���.
select *
from hr.employees
where substr(email,3,4)='ARTS';
--11.�̸��Ͽ� 's'�� 5��°�� �ִ� ����� ����Ͻÿ�.
select*
from hr.employees
where instr(email,'s') = 5;
-- 12. �̸��Ͽ��� �տ��� 2���ڸ� ����ϰ� �������� �����ʿ� *�� ä���� ����ϼ���.
select rpad(substr(email,1,2),length(email),'*')
from hr.employees;
-- 13. �Ի����� 03/06/17 ��ȭ��ȣ�� 515.123.4567�� ����� �̸����� 
--     �տ��� 3���ڸ� ����ϰ� �������� *�� ����ϼ���
select rpad(substr(email,1,3), length(email),'*')
from hr.employees
where hire_date = '03/06/17' and phone_number = '515.123.4567';
-- 14. ������ _AS�� �ִٸ� abc�� �����Ͻÿ�,
select replace(job_id, '_AS', 'abc'), job_id
from hr.employees
where job_id like '%_AS%';
-- 15.�̸��Ͽ� 'A'�� ó���� ���� �ִٸ� �̸��Ͽ��� �����Ͽ� �������.
select email, trim(email), trim('A' from email)
from hr.employees;
-- 16. �̸��Ͽ��� �ڿ��� �ѱ��ڰ����� ���� �� �̸��Ͽ��� �ڿ��� ���� 2���� ������ ����,
--     �̸��Ͽ��� �ڿ��� 3��°���� 2���ڸ� ����ϼ���.
select email, substr(email,-1,1), substr(email,-2,2), substr(email,-3,2)
from hr.employees;
-- 17. 010-7146-1970 , 010-****-1970, 02-314-1970 02-***-1970
select substr('010-7146-1970', 1 ,instr('010-7146-1970','-'))
from dual;

select substr('010-7146-1970',1,instr('010-7146-1970','-',-1))
from dual;

select substr('010-7146-1970',-5,instr('010-7146-1970','-',-1))
from dual;

select substr('010-7146-1970', 1 ,instr('010-7146-1970','-')) ||
     lpad(substr('010-7146-1970',-5,instr('010-7146-1970','-',-1)), 
     length(substr('010-7146-1970',1,instr('010-7146-1970','-',-1))), '*')
from dual;

--- 18. �̸�, �Ի���, �μ���ȣ, �޿�, ����� ����ϼ���.
select first_name, hire_date, department_id, salary, salary*12
from hr.employees;
-- 19. �̸�, �Ի���, �μ���ȣ, �޿� �׸��� ����� ����� �� 
-- ������� Ŀ�̼��� ���ԵǾ�� �Ѵ�.
select first_name, hire_date, department_id, salary, (salary+salary*commission_pct)*12
from hr.employees;
-- 20. Ŀ�̼��� null�̶�� Ŀ�̼� ���� 0���� �����Ͽ� �̸�, �μ�, �Ի���, ����,
--     �޿�, Ŀ�̼�, �׸��� ����� ����ϼ���.

-- 23. �Ի��Ϸκ��� ���ó�¥���� ������ �������� �Ϸ� ����ϼ���.
--  �Ի���, �̸�, ��, ������ ���� ���
select hire_date, first_name, last_name, job_id, trunc(sysdate-hire_date,0)
from hr.employees;
-- 24. �Ի���, �̸�, ��, ������ ����� �� �Ի��Ϸ� ���� �� �ְ� �������� ����Ͻÿ�.
select hire_date, first_name, last_name, job_id, trunc((sysdate-hire_date)/7,0)
from hr.employees;
-- 25. �Ի���, �̸�, ��, ������ ����� �� �Ի��Ϸ� ���� �� �������� ����Ͻÿ�.
select hire_date, first_name, last_name, job_id, trunc((sysdate-hire_date)/365,0)
from hr.employees;
-- 26.������ 17�� �̻��� ����� ����Ͻÿ�.
select *
from hr.employees
where (sysdate-hire_date)/365 >=17;
-- 27. �̸�, ��, �Ի��� , �޿��� ����� �� �޿��� 400���� ���� �������� ����ϼ���.
select first_name, last_name, hire_date, salary, mod(salary,400)
from hr.employees;
-- 28. �޿��� 500���� ���� �������� 400 �̻��� ������� ����Ͻÿ�
select*
from hr.employees
where mod(salary,500)>=400;
--29. ���� ��¥���� ���� �ݿ����� �����Դϱ�?
select next_day(sysdate,'��')
from dual;
-- 30. �̸� , ��, ����, �Ի����� ����� �� �Ի��Ϸκ��� ���� ������� ���������� ����ϼ���.
select first_name, last_name, job_id, hire_date, next_day(hire_date,'��')
from hr.employees;
--31. Neena�� �Ի��ϰ� 3���� �İ� �������� �Ǵ� ���̴�.
--    �������� �Ǵ� ���� ��������, �̸� , �� , �Ի���, ����, �����ȣ�� ���� ����Ͻÿ�.
select first_name, last_name, hire_date, job_id, employee_id, add_months(hire_date,3) 
from hr.employees
where first_name = 'Neena' or last_name = 'Neena';
-- 32. �Ի��� ���� ���� ������� '01/01/18'�λ���� ���Ͻÿ�.
select*
from hr.employees
where next_day(hire_date, '��') = '01/01/18';
-- 33. ���޿� �Ի��� ����� ����Ͻÿ�.
select*
from hr.employees
where last_day(hire_date) like '%/%/29';
-- 34. �Ի��Ϸ� ���� ������� ����� ��������, �̸�, ��, ����, �Ի��ϵ� ���� ���
select first_name, last_name, job_id, hire_date, trunc(months_between(sysdate,hire_date),0)
from hr.employees;
-- 35 �� ����� ������ ����� ���� ������� ����Ͻÿ�.

-- 36. �Ի����� 200������ ���� ������� ����Ͻÿ�.
select*
from hr.employees
where months_between(sysdate,hire_date)>=200;
--- 19. ���� ��� �ҹ����� grant�� ��� �빮���� 'GRANT'�� �������̺���
--- �ش� ����� ã���� �Ѵ�.
select *
from hr.employees
where upper(last_name) = 'GRANT' or lower(last_name) = 'grant';
---20. 'GranT'�� �Է������� ������̺��� ���� 'Grant'�� ����� ã���ÿ�
select*
from hr.employees
where initcap(last_name) = 'Grant';
-- 21. ���� ��� �빮�ڷ� ��ȯ�ϰ� �̸� ��� �ҹ��ڷ� ��ȯ�Ͽ�
-- ���� �̸��� �ٿ� ����� �� ' ���� GRANT douglas �Դϴ�'�� 
-- ��µǰ� �Ͻÿ�
select '���� ' || upper(last_name) || ' ' || lower(first_name) || '�Դϴ�.'
from hr.employees;
-- 22. ���� �̸��� �ٿ� ���
select concat(last_name, first_name)
from hr.employees;
--- 23. ���� Davies���� av�� ����Ͻÿ�.
select substr(last_name,2,2)
from hr.employees
where last_name = 'Davies';
--- 24. ���� �ι�° ���ں��� ��� ����Ͻÿ�.
select substr(last_name,2)
from hr.employees;
--- 25. ���� ������ ���ڿ��� �α��ڸ� �������ÿ�.
select substr(last_name,-2,2)
from hr.employees;
--- 26. ���� �ڿ� on���� ������ ����� ã���ÿ�
select *
from hr.employees
where substr(last_name,-2,2) = 'on';
-- 27. ���� �ڿ� ����° ���ڰ� so�� ����� ����Ͻÿ�
select*
from hr.employees
where substr(last_name,-3,2) = 'so';
-- 28. ���� ������ ����ϴµ� �̸����� ���ʿ��� 3���ڸ� ����Ͻÿ�.
--     ������ȣ, ��, �޿�, ����, �̸���
select employee_id, last_name, salary, job_id, substr(email,1,3)
from hr.employees;
-- 29. ���� ������ ����ϴµ� �̸����� �����ʿ��� 3���ڸ� ����Ͻÿ�.
-- ������ȣ, ��, �޿�, ����, �̸���
select employee_id, last_name, salary, job_id, substr(email,-3,3)
from hr.employees;
-- 30. ���� ������ ����ϴµ� �̸����� �����ʿ��� 3���ڸ� ����ϰ� �������� ��-���� ���
---    ������ȣ, ��, �޿�, ����, �̸���
select employee_id, last_name, salary, job_id, rpad(substr(email,-3,3), length(email), '*')
from hr.employees;
--- 31. o�� �ִ� ���� o�� ���°�� �ִ� ��ġ���� ����Ͻÿ�. 
--      ������ȣ ��, ���� ��ġ, ����
select employee_id, last_name, instr(last_name,'o'), job_id
from hr.employees
where last_name like '%o%';
--- 32. oc�� �ִ� ���� oc�� ���°�� �ִ� ��ġ���� ����Ͻÿ�.  
-- ������ȣ ��, ���� ��ġ, ����
select employee_id, last_name, instr(last_name,'oc'), job_id
from hr.employees
where last_name like '%oc%';
--33. ������ RE�� �ִ� ��� RE���� 3���ڸ� ����Ͻÿ�.
--    ������ȣ ��,  ����, ������ ����
select employee_id, last_name, job_id, substr(job_id, instr(job_id,'RE'),3)
from hr.employees
where job_id like '%RE%';
--- 34. ������ȣ, ��, �Ի��� , �޿�, 
--- �޿��� 10ĭ�� ����ϰ� ������ ���� �տ� * ǥ�ð� �ǰ� ����.
select employee_id, last_name, hire_date, lpad(salary,10,'*')
from hr.employees;
-- 35. ������ȣ, ��, �Ի��� , �޿�, 
--- �޿��� 10ĭ�� ����ϰ� ������ ���� �ڿ� * ǥ�ð� �ǰ� ����.
select employee_id, last_name, hire_date, rpad(salary,10,'*')
from hr.employees;
-- 36. ������ȣ, ��, �Ի���, ������ ����ϴµ� 
---    ������ RE�� �ִٸ� RE�� AB�� �����Ͽ� ���.
select employee_id, last_name, hire_date, replace(job_id, 'RE', 'AB')
from hr.employees;
-- 37. ������ȣ, ����ó, Ŀ�̼�, �μ���ȣ,�޿�
-- �޿��� 3000���� �������� ���� �������� ����Ͻÿ�.
select employee_id, phone_number, commission_pct, department_id, mod(salary,3000)
from hr.employees;
-- 38. 2002�⵵���� �Ի��� �������� ����Ͻÿ�
select*
from hr.employees
where hire_date >= '02/01/01';
-- 39. ���ش� ���ñ��� ���ְ� �������� Ȯ���Ͻÿ�.
select trunc((sysdate-to_date('22/01/01'))/7,0)
from dual;
-- 40. �������� ��� �ٹ������� ����Ͻÿ�. ������ȣ, ��, ����ó,�μ�, �ٹ����
select employee_id, last_name,phone_number, department_id, trunc((sysdate-hire_date)/365,0)
from hr.employees;
-- 41. �ټӳ�� 8�� �̻��� ����鸸 ����Ͻÿ�
select *
from hr.employees
where trunc((sysdate-hire_date)/365,0)>=8;
--- 42. ���� : �Խ��Ǹ���Ʈ���� ������ 5����****�� �� ó�� 
--- ������ ���� 3���ڸ� ��� �ڿ� *�� ������ ����Ͻÿ�.
--- ������ȣ, �Ի���, ��
select employee_id, hire_date , rpad(substr(last_name,1,3), 6,'*')
from hr.employees;
--- 43. ȫ�浿�� ������Դϱ�?
select length('ȫ�浿')
from dual;
--- 44. )"ȫ�浿 \n"���� �Ǿ� �ִ� ���� html���� �� �ٲ��̵ǵ���
---      "ȫ�浿 <br>"�����Ͻÿ�.


-- 20. Ŀ�̼��� null�̶�� Ŀ�̼� ���� 0���� �����Ͽ� �̸�, �μ�, �Ի���, ����,
--     �޿�, Ŀ�̼�, �׸��� ����� ����ϼ���.
select first_name, department_id , hire_date, job_id, salary, 
       nvl(commission_pct,0), (salary+salary*nvl(commission_pct,0))*12 
from hr.employees;

---37. 03/06/17���Ŀ� �Ի��� �����?
select*
from hr.employees
where to_char(hire_date, 'yy/mm/dd') >= '03/06/17';

---38. 17/06/03(�Ͽ���)���Ŀ� �Ի��� �����?
select*
from hr.employees
where hire_date >= to_date('17/06/03','dd/mm/yy');

-- 40. 25-04-2003 ���� �ʰ� �Ի��� ����� ��� 
select*
from hr.employees
where to_char(hire_date,'dd-mm-yyyy') > '25-04-2003';

-- 41. �̸�, ��, ���� �μ� �׸��� �޿��� ���ڸ��� ,�� ��� $�� ��µǰ� �Ͻÿ�.
select first_name, last_name, job_id, department_id, to_char(salary, '$9,999,999')
from hr.employees;

-- 42. janette�Ǵ� JANETTE �Ǵ� jaNette ���� ���� �޾Ҵ�.
---   �̸��� 'Janette'�� ����� ����Ͻÿ�.
select *
from hr.employees
where first_name = initcap('janette') or first_name = initcap('JANETTE') or first_name = initcap('jaNette');

-- 43. job_id�� 'IT_PROG' �޿��� 10%���
--              'ST_CLERK' �޿��� 15%���
--              'SA_REP' �޿��� 20%���
--                  ���ܴ̿� �޿�
-- ��, �̸�, �޿��� ���� ���
select last_name, first_name, salary, 
case when job_id = 'IT_PROG' then salary*1.10
            when job_id = 'ST_CLERK' then salary*1.15
            when job_id = 'SA_REP' then salary*1.20
            else salary end saljob
from hr.employees;

--- 44. ��, �̸�, ����, �޿�, �޿��� ���� ��å�� ���� ����ϼ���.
--- �޿��� 3000�����̸� ��� 
--        5000�����̸� ����
--        7000�����̸� �븮
--        9000�����̸� ����
--       11000�����̸� ����
--       13000�����̸� ����
--       �� �̻� �̸� �ӿ�
select last_name, first_name, job_id, salary,
       case when salary <=3000 then '���'
            when salary <=5000 then '����'
            when salary <=7000 then '�븮'
            when salary <=9000 then '����'
            when salary <=11000 then '����'
            when salary <=13000 then '����'
            else '�ӿ�' end job
from hr.employees;

-- 45. �޿��� ���� ������ ����ϰ� �ʹ�. �̸� , ��, �޿�, ����, ������ ����Ͻÿ�.
---  �޿��� 2000���� ���� ���� 0�̸� �޿��� 0%
---                         1�̸� �޿��� 9%
---                         2�̸� �޿��� 20%
---                         3�̸� �޿��� 30%
---                         4�̸� �޿��� 40%
---                         5�̸� �޿��� 42%
---                         6�̸� �޿��� 44%
---                         �̿� �޿��� 45% �����̴�.
select first_name, last_name, salary, job_id, 
       case when trunc(salary/2000) = 0 then salary*0.00
            when trunc(salary/2000) = 1 then salary*0.09
            when trunc(salary/2000) = 2 then salary*0.20
            when trunc(salary/2000) = 3 then salary*0.30
            when trunc(salary/2000) = 4 then salary*0.40
            when trunc(salary/2000) = 5 then salary*0.42
            when trunc(salary/2000) = 6 then salary*0.44
            else salary*0.45 end tax
from hr.employees;

-- 1. ���� �̸��� �ٿ��� ����Ͻÿ�.
select last_name || first_name
from hr.employees;
-- 2. nvl
-- ��, �̸�, ����, �޿�, Ŀ�̼��� ������ ���
select last_name, first_name, job_id, salary, salary+salary*nvl(commission_pct,0)
from hr.employees;
-- 3. nvl2
--           ���� �ƴϸ� �ι�° �� ���
--           ���̸� ����° �� ���
select last_name, first_name, job_id, salary, salary+salary*nvl2(commission_pct, commission_pct, 0)
from hr.employees;

-- 4. nullif
-- exp1�� exp2�� ������  null���
-- exp1�� exp2�� �ٸ��� exp1�� ���
select first_name, length(first_name) exp1, last_name, length(last_name) exp2, 
       nullif(length(first_name), length(last_name))
from hr.employees;

---6. �޿��� ���� ���� �޴� ����� ���� �޴� ����� ���, �޿� ���
select max(salary), min(salary), avg(salary)
from hr.employees;

--- 7. �޿��� �޴� ����� ����, �μ��� ������ �ִ� ����� ���� ����Ͻÿ�.
select count(salary), count(department_id)
from hr.employees;

-- 8. Ŀ�̼��� �޴� ������� Ŀ�̼��� ��հ� ���� ��ü�� Ŀ�̼� ����� ���Ͻÿ�.
select avg(commission_pct), sum(commission_pct)/count(*)
from hr.employees;

--9. ��ü�� ����� ���� ���Ͻÿ�. (�� ��ü�� ����)
select count(*)
from hr.employees;

-- 10. ���� �ʰ� �Ի��� ����� ���� ó���� �Ի��� ����� ����Ͻÿ�.
select min(hire_date), max(hire_date)
from hr.employees;

--11.������ 'REP'�� ������ �ִ� ����� �� ���� ���� �޴� �޿��� ���� �޴� �޿��� ���,
--    ��� �޿��� ����� ��, �޿��� �հ� 
select max(salary), min(salary), avg(salary), count(*), sum(salary)
from hr.employees
where job_id like '%REP%';

-- 12.80�� �μ����� Ŀ�̼��� �޴� ����� ���� �ִ� Ŀ�̼� ���� �ּ� Ŀ�̼� ���� ���
--     �μ��� ���� �ִ� ����� �� 
select count(commission_pct), max(commission_pct), min(commission_pct), count(*)
from hr.employees
where department_id = 80;

-- 13. �ߺ����� ���� �μ���?
select distinct department_id
from hr.employees;

-- 14. �ߺ����� ���� �μ��� ����?
select count(distinct department_id)
from hr.employees;

-- 15. Ŀ�̼��� �޴� ����� Ŀ�̼� ��հ� 
--    Ŀ�̼��� ���� �ʴ� ����� Ŀ�̼��� ����� ���Ͻÿ�.
select avg(commission_pct), sum(commission_pct)/count(*), avg(nvl(commission_pct,0))
from hr.employees;

--- 16. 90�κμ��� �޿��� ���, �հ�, �ִ�, �ּ�, ����� ��
select avg(salary), sum(salary), max(salary), min(salary), count(*)
from hr.employees
where department_id = 90;

-- 17. �� �μ��� �μ��� �޿��� ���, �հ�, �ִ�, �ּ�, ����� ��
select department_id, avg(salary), sum(salary), max(salary), min(salary), count(*)
from hr.employees
group by department_id;

-- 18. ���� ������ �ϴ� ����� �� ���� ���� ��� �� ����� ���� �ʰ� ���� ����� 
---    �Ի����� ����Ͻÿ�.
select job_id, min(hire_date), max(hire_date)
from hr.employees
group by job_id;

-- 19. �����ȣ,  �̸�, �Ի���, ����, �μ��� ����� ��.
-- �μ��� ������������ �����ϰ� �� �μ��� ������ ������������ �����Ͽ� ����Ͻÿ�.  
select employee_id, first_name, hire_date, job_id, department_id
from hr.employees
order by department_id asc, job_id asc;

-- 20.  �� �μ��� ������ �޿� ��� , �հ�, ����ϴ� ����� ���� ���
select department_id, job_id, avg(salary), sum(salary), count(*)
from hr.employees
group by department_id, job_id;

-- 20. 90�μ����� ������ �޿� �հ�� ��� ���Ͻÿ�.
select sum(salary), avg(salary)
from hr.employees
where department_id = 90
group by job_id;

-- 21. ���μ����� ������ ���� ����� �� �Ի����� ���� ����� ���� ���Ͻÿ�.
-- ������� 2���̻� ���
select count(*)
from hr.employees
group by department_id, job_id, hire_date
having count(*)>=2;

-- 22. ��ձ޿��� 7000�̻��� �μ��� ����Ͻÿ�.��� �޿� ���� �� ���� ����Ͻÿ�
select department_id, avg(salary)
from hr.employees
group by department_id
having avg(salary)>=7000
order by avg(salary);

-- 23. �μ��� ���� ���� 10�� �̸��� �μ��� ����Ͻÿ�.
select department_id, count(*)
from hr.employees
group by department_id
having count(*)<10;

-- 25. ������ 'REP'�� ���ԵǾ� ���� ���� ������ �޿��� ���, �հ�, �ּ�, 
--- �ִ� ���� ����Ҷ� �޿��� �հ谡 13000�̻��� ������ ����Ͻÿ�.
select job_id, avg(salary), sum(salary), min(salary), max(salary)
from hr.employees
where job_id not like '%REP%'
group by job_id
having sum(salary)>=13000;

-- 1.  ����� ��, �޿� , �Ի���, ������ ����� �� ������ ���� ����Ͻÿ�.
select last_name, salary, hire_date, j.job_id, job_title
from hr.employees e, hr.jobs j
where e.job_id = j.job_id;

-- 2. �μ� ���̺��� 90�� �μ������� ����Ͻÿ�.
select *
from hr.departments
where department_id = 90;

-- 3. 90�� �μ��� ������ ���Ͻÿ�.
select *
from hr.employees
where department_id = 90;

-- 4. 100�� ��� ������ ����Ͻÿ�.
select *
from hr.employees
where employee_id = 100;

-- 5. 2 ~ 4���� �ѹ��� ����ϼ���.
select employee_id, d.department_id, first_name, hire_date, salary
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and e.department_id = 90 and employee_id = 100;

-- 6. ������ȣ, ��, �̸�, �޿�, ����, �μ���ȣ, ������ȣ, �μ����� ���
select employee_id, last_name, first_name, salary, job_id, d.department_id, location_id, department_name
from  hr.employees e, hr.departments d
where e.department_id = d.department_id;

-- 7. ������ȣ .��, �̸� �޿� �μ���ȣ, �μ����� 100����� ����Ͻÿ�.
select employee_id, last_name, first_name, salary, d.department_id, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and employee_id = 100;

-- 8. ���� ��ȣ, ��, �̸� , ����, �������� ����ϼ���.
select employee_id, last_name, first_name, j.job_id, job_title
from hr.employees e, hr.jobs j
where e.job_id = j.job_id;

select*
from hr.employees;
select*
from hr.departments;
--9. �μ����� ����� ������ ���Ͻÿ�.
-- ������ȣ, ��, �޿� �Ի���, �μ���ȣ, �μ����ȣ�� ����Ͻÿ�.
select employee_id, last_name, salary, hire_date,d.department_id, d.manager_id
from hr.employees e, hr.departments d
where e.manager_id = d.manager_id;

-- 10. �� �̸� ������ȣ , ��ȭ��ȣ , �޿� �μ���ȣ, �μ����� ���
select last_name, first_name, employee_id, phone_number, salary, d.department_id, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id;

select*
from hr.employees;
select*
from hr.departments;
-- 11. �� �μ��� �μ��� ������ �μ����� �̸��� ��� �Ͻÿ�
select d.manager_id, d.department_id, department_name, first_name
from hr.employees e, hr.departments d
where e.employee_id = d.manager_id;


-- 12. ���� ��ȣ, ���� ��ȣ , ��������
select employee_id, j.job_id, job_title
from hr.employees e, hr.jobs j
where e.job_id = j.job_id;

-- 13. ������ȣ, �μ���ȣ, �μ���
select employee_id, d.department_id, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id;

-- 14. �� ������ ������ȣ, ������ȣ, ���� ����, �μ���ȣ, �μ���
select employee_id, j.job_id, job_title, d.department_id, department_name
from hr.jobs j, hr.employees e, hr.departments d
where j.job_id = e.job_id and e.department_id = d.department_id;

--15. �μ����� ���������� ����Ͻÿ�. �μ��� ��ȣ, ��������
select job_title, e.manager_id
from hr.jobs j , hr.employees e, hr.departments d
where j.job_id = e.job_id and e.employee_id = d.manager_id;

-- 16. �μ��� ���� ������ ���� ���
select employee_id, first_name, last_name, e.department_id, d.department_id
from hr.employees e left outer join hr.departments d
on e.department_id = d.department_id
where e.department_id is null;

select *
from hr.departments;
-- 17. ������ ���� �μ� �� ���
select e.department_id, d.department_id, department_name
from hr.employees e right outer join hr.departments d
on e.department_id = d.department_id
where e.department_id is null;

-- 18. �μ��� ���� ������ ������ ���� �μ����� ��� ���
select employee_id, first_name, last_name, e.department_id, d.department_id
from hr.employees e full outer join hr.departments d
on e.department_id = d.department_id;

--1. ������ȣ, ��, �̸�, ����, �μ���ȣ, ������ȣ, ��������, �ּҸ� ���
select employee_id, last_name, first_name, j.job_id, d.department_id, l.location_id,
       job_title, street_address
from hr.jobs j, hr.employees e, hr.departments d, hr.locations l
where j.job_id = e.job_id and e.department_id = d.department_id 
and d.location_id = l.location_id;

-- 2. Ŀ�̼��� null�� ����� �μ����� ����Ͻÿ�
select commission_pct, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and commission_pct is null;

-- 3. �μ����� ��, �̸�, Ŀ�̼��� ����Ͻÿ�.
select last_name, first_name, commission_pct
from hr.employees e, hr.departments d
where e.employee_id = d.department_id;

-- 4. �μ����� ���� �� �������� ��, �̸�, �̸����� ����Ͻÿ�.
select last_name, first_name, email
from hr.employees e, hr.departments d
where e.manager_id = d.manager_id;

-- 5. ������ ���� �μ��� ansi join ������� ����Ͻÿ�.
select e.department_id, d.department_id, department_name
from hr.employees e , hr.departments d
where e.department_id(+) = d.department_id
and e.department_id is null;

select job_id
from hr.employees;
-- ���� ���� ������ ���� ������ � �������� ��������� �Բ� ����Ͻÿ�.
select job_id, job_title
from hr.jobs
where job_id = (select job_id 
                from hr.employees 
                group by job_id 
                having count(*)
            = (select max(count(*)) 
               from hr.employees 
               group by job_id));
            
select * 
from hr.regions;

-- countries ���̺��� ������ȣ�� �����̸��� ����ϰ�
-- regions ���̺��� ������ �з���ȣ�� �з��̸��� ����Ͻÿ�.
-- 4������ ���
select country_id, country_name, r.region_id, region_name
from hr.countries c, hr.regions r
where c.region_id = r.region_id;

select country_id, country_name, r.region_id, region_name
from hr.countries c join hr.regions r
on c.region_id = r.region_id;

select country_id, country_name, region_id, region_name
from hr.countries natural join hr.regions;

select country_id, country_name, region_id, region_name
from hr.countries join hr.regions using(region_id);

-- ����, ��, �޿�, ����, ���������� ����ϰ�
-- ���� �����丮 ���̺��� �� ������ �����ϰ� ���������� ����Ͻÿ�.
select e.employee_id, last_name, salary, 
       e.job_id, job_title,
       start_date, end_date
from hr.job_history h, hr.jobs j, hr.employees e
where h.job_id = j.job_id and j.job_id = e.job_id;

select e.employee_id, last_name, salary, 
       e.job_id, job_title,
       start_date, end_date
from hr.job_history h join hr.jobs j on h.job_id = j.job_id
join hr.employees e on j.job_id = e.job_id;

select employee_id, last_name, salary, 
       job_id, job_title,
       start_date, end_date
from hr.job_history natural join hr.jobs 
natural join hr.employees;

-- 6. ������ȣ, ��, �̸�, �ּ�, ����, �μ���ȣ, ������ȣ, ��������, ���� �̸��� ���
select employee_id, last_name, first_name, j.job_id, d.department_id, l.location_id,
       job_title, street_address, country_name
from hr.jobs j, hr.employees e, hr.departments d, hr.locations l, hr.countries c
where j.job_id = e.job_id and e.department_id = d.department_id 
and d.location_id = l.location_id and l.country_id = c.country_id;

-- 7. ������ 'ST_CLERK'�� ����� ������?
select last_name, first_name, j.job_id, country_name
from hr.jobs j, hr.employees e, hr.departments d, hr.locations l, hr.countries c
where j.job_id = e.job_id and e.department_id = d.department_id
and d.location_id = l.location_id and l.country_id = c.country_id
and j.job_id = 'ST_CLERK';

-- 8. ������ �μ��� ����� ������?
select salary, first_name, last_name, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and department_name = 'Marketing';

-- 9. ������ ���� �μ��� ������ ���Ͻÿ�.
select count(*)
from hr.departments
where manager_id is null;

-- 10. ���� �����丮 ���̺��� �����ϰ� ���������� 5�� �̻� ���̳��� ������ ��, �̸�, �μ����� ���
select last_name, first_name, department_name
from hr.job_history j, hr.employees e, hr.departments d
where j.employee_id = e.employee_id and e.department_id = d.department_id
and j.end_date-j.start_date > 1825;



