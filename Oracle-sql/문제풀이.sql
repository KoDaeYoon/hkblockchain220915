--1. 직원번호, 이름 , 이메일, 입사일 
select employee_id, first_name, email, hire_date
from hr.employees;
-- 2. 직원번호, 이름 , 급여, 각 사원 급여에 100더하시오
select employee_id, first_name, salary, salary+100
from hr.employees;
-- 3. 직원번호, 성, 입사일, 직무, 연봉을 출력하시오
select employee_id, last_name, hire_date, job_id, salary*12 
from hr.employees;
-- 부서정보
select *
from hr.employees;
--- 4. 주소, 부서번호, 부서장번호, 부서명순으로 출력
select *
from hr.departments;
-- 5. 사원테이블에서 직원번호 , 입사일, 성, 급여순으로 출력
SELECT employee_id, hire_date, last_name, salary
from hr.employees;
-- 6. 연산:
-- 사원테이블에서 사원번호, 부서번호 , 직무, 연봉을 출력하는데 
-- 매월 300씩 보너스가 지급이 된다.
select employee_id, department_id, job_id, (salary+300)*12
from hr.employees;
-- 7. 사원테이블에서 사원번호, 부서번호 , 직무, 연봉을 출력하는데 
-- 마지막 달에 300이 특별 보너스로 지급이 된다.
select employee_id, department_id, job_id, salary*12+300
from hr.employees;
-- 8. 사원테이블에서 사원번호, 성, 이메일 , 급여에 대한 커미션이 30%씩 지급이될 때
-- 커미션 까지 출력하시오.
select employee_id, last_name, email, salary*0.3 commission_pct
from hr.employees;
-- 9.  사원테이블에서 직원번호 이메일 이름 입사일 급여, 커미션퍼센트를 출력
select employee_id, email, first_name, hire_date, salary, commission_pct
from hr.employees;
-- 10을 출력하시오
select 10 
from dual;
-- 10에  null을 곱하시오.
select 10*null
from dual;
-- 10.  사원테이블에서 직원번호 이메일 이름 입사일 급여, 커미션퍼센트를 출력하는데
-- 각 사원이 받는 커미션의 금액도 같이 출력하시오.
select employee_id, email, first_name, hire_date, salary, commission_pct, salary*commission_pct
from hr.employees;
-- 11. 직원번호, 이메일, 이름, 입사일, 연락처, 부서번호, 급여, 커미션퍼센트, 
-- 그리고 커미션이 포한된 연봉을 출력하시오,
select employee_id, email, first_name, hire_date, phone_number,department_id, salary, commission_pct, (salary+salary*commission_pct)*12
from hr.employees;
--- 16. 직원번호, last_name first_name(KingSteven),급여, 직무
select employee_id, last_name || first_name, salary, job_id
from hr.employees;
--17. 16번문제에서 성과 이름에 공백문자를 넣자.
select employee_id, last_name || ' ' || first_name, salary, job_id
from hr.employees;
-- 18. 사원번호와 급여를 출력하는 사이에 아래 내용이 출력되게 하시오. 
-- "KingSteven의 직무는 AD_PRES입니다"로 출력하자.
select employee_id, last_name || ' ' || first_name || '의 직무는 ' || job_id ||'입니다', salary
from hr.employees;
-- 19. 직원의 부서번호만 출력하시오.
select department_id
from hr.employees;
-- 20. 직원의 부서를 모두 출력하지 말고 한번씩만 출력하시오.
--     직원이 속해있는 부서가 어떠한 부서들인지 알고 싶다.
select distinct department_id
from hr.employees;
-- 21. 직무와 입사일이 중복되지 않은 것만 출력하시오.
select distinct job_id, hire_date
from hr.employees;
-- 22. 90인 부서의 사원들을 출력하시오
select *
from hr.employees
where department_id = 90;
-- 23. 사원번호, 성, 이름, 급여를 출력
select employee_id, last_name, first_name, salary
from hr.employees;
-- 24. 90인 부서의 사원들을 출력할 때 사원번호, 이름 , 성, 급여 출력
select employee_id, last_name, first_name, salary
from hr.employees
where department_id = 90;
-- 25. 이름이 'Nancy'인 사원의 입사일 , 직무, 급여, 커미션퍼센트를 출력하세요.
select hire_date, job_id, salary,commission_pct 
from hr.employees
where first_name = 'Nancy';
-- 26. 입사일이 06/01/03인 사원을 출력하시오.
-- hire_date의 데이터 타입이 date 나 timestamp
select *
from hr.employees
where hire_date = '06/01/03';
-- 27. 급여가 3000이상인 사원들의 성, 급여를 출력하시오.
select last_name, salary
from hr.employees
where salary >= 3000;
-- 28. 입사일이 06/01/03보다 늦게 입사한 직원의 사원번호 이름 급여를 출력하시오.
select employee_id, first_name, salary
from hr.employees
where hire_date>'06/01/03';
-- 30. 급여가 3000이 아닌 사원을 모두 출력하시오.
select *
from hr.employees
where salary!=3000;
-- 31. 급여가 2500에서 3500사이인 사원들 중 사원번호와 이름, 급여, 직무, 입사일을 출력
select employee_id, first_name, salary, job_id, hire_date
from hr.employees
where salary>=2500 and salary<=3500;
-- 32. 성이 King부터  Smith사이에 있는 사원들을 출력하시오.
select *
from hr.employees
where last_name between 'King' and 'Smith';









--- 1. 이름이 'steven'인 사람을  출력하시오.
select*
from hr.employees
where lower(first_name) = 'steven';
-- 2. 성이 KING인 직원을 출력하세요.
select*
from hr.employees
where last_name = initcap('KING');
-- 3. 이름의 글자의 갯수가 5인 사원들을 출력하세요.
select*
from hr.employees
where length(first_name) =5;
-- 4.  급여가 5자리 이상인 사원을 구하시오.
select*
from hr.employees
where length(salary)>=5;
-- 5. 이름에 's'를 가지 사원들 중 이름에 몇번째에 있는지 출력하세요.
select instr(first_name, 's')
from hr.employees;
-- 6.  이름에 's'가 3번째에 있는 사원들을 출력하세요.
select *
from hr.employees
where instr(first_name,'s') =3;
-- 7. 이름과 성과 급여와 직무를 출력할 때 이메일은 3번째 글자 부터 출력하시오.
select first_name, last_name, salary, job_id, email, substr(email,3)
from hr.employees;
-- 8. 이메일에 'S'부터 출력하고, 급여, 입사일, 이름 ,성을 출력하세요.
select salary, hire_date, first_name, last_name, email
      , substr(email, instr(email,'S'))
from hr.employees;
--9. 이름 , 급여, 직무, 부서를 출력할 때 이메일은 3번째 부터 4글짜를 출력하시오.
select first_name, salary, job_id, department_id, substr(email,3,4)
from hr.employees;
--10. 이메일에 3번째부터 4글자에 'ARTS'가 있는 상원을 출력하세요.
select *
from hr.employees
where substr(email,3,4)='ARTS';
--11.이메일에 's'가 5번째에 있는 사원을 출력하시오.
select*
from hr.employees
where instr(email,'s') = 5;
-- 12. 이메일에서 앞에서 2글자를 출력하고 나머지는 오른쪽에 *로 채워서 출력하세요.
select rpad(substr(email,1,2),length(email),'*')
from hr.employees;
-- 13. 입사일이 03/06/17 전화번호가 515.123.4567인 사원의 이메일을 
--     앞에서 3글자만 출력하고 나머지는 *로 출력하세요
select rpad(substr(email,1,3), length(email),'*')
from hr.employees
where hire_date = '03/06/17' and phone_number = '515.123.4567';
-- 14. 직무가 _AS가 있다면 abc로 변경하시오,
select replace(job_id, '_AS', 'abc'), job_id
from hr.employees
where job_id like '%_AS%';
-- 15.이메일에 'A'가 처음과 끝에 있다면 이메일에서 삭제하여 출력하자.
select email, trim(email), trim('A' from email)
from hr.employees;
-- 16. 이메일에서 뒤에서 한글자가지고 오고 또 이메일에서 뒤에서 부터 2글자 가지고 오며,
--     이메일에서 뒤에서 3번째부터 2글자만 출력하세요.
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

--- 18. 이름, 입사일, 부서번호, 급여, 년봉을 출력하세요.
select first_name, hire_date, department_id, salary, salary*12
from hr.employees;
-- 19. 이름, 입사일, 부서번호, 급여 그리고 년봉을 출력할 때 
-- 년봉에는 커미션이 포함되어야 한다.
select first_name, hire_date, department_id, salary, (salary+salary*commission_pct)*12
from hr.employees;
-- 20. 커미션이 null이라면 커미션 값을 0으로 대입하여 이름, 부서, 입사일, 직무,
--     급여, 커미션, 그리고 년봉을 출력하세요.

-- 23. 입사일로부터 오늘날짜까지 몇일이 지났는지 일로 출력하세요.
--  입사일, 이름, 성, 직무도 같이 출력
select hire_date, first_name, last_name, job_id, trunc(sysdate-hire_date,0)
from hr.employees;
-- 24. 입사일, 이름, 성, 직무을 출력할 때 입사일로 부터 몇 주가 지났는지 출력하시오.
select hire_date, first_name, last_name, job_id, trunc((sysdate-hire_date)/7,0)
from hr.employees;
-- 25. 입사일, 이름, 성, 직무을 출력할 때 입사일로 부터 몇 년차인지 출력하시오.
select hire_date, first_name, last_name, job_id, trunc((sysdate-hire_date)/365,0)
from hr.employees;
-- 26.년차가 17년 이상인 사원을 출력하시오.
select *
from hr.employees
where (sysdate-hire_date)/365 >=17;
-- 27. 이름, 성, 입사일 , 급여를 출력할 때 급여를 400으로 나눈 나머지를 출력하세요.
select first_name, last_name, hire_date, salary, mod(salary,400)
from hr.employees;
-- 28. 급여를 500으로 나눈 나머지가 400 이상인 사원들을 출력하시오
select*
from hr.employees
where mod(salary,500)>=400;
--29. 오늘 날짜부터 다음 금요일은 몇일입니까?
select next_day(sysdate,'금')
from dual;
-- 30. 이름 , 성, 직무, 입사일을 출력할 때 입사일로부터 다음 목요일이 언제였는지 출력하세요.
select first_name, last_name, job_id, hire_date, next_day(hire_date,'목')
from hr.employees;
--31. Neena가 입사하고 3개월 후가 정직원이 되는 날이다.
--    정직원이 되는 날이 언제인지, 이름 , 성 , 입사일, 직무, 사원번호와 같이 출력하시오.
select first_name, last_name, hire_date, job_id, employee_id, add_months(hire_date,3) 
from hr.employees
where first_name = 'Neena' or last_name = 'Neena';
-- 32. 입사한 이후 다음 목요일이 '01/01/18'인사원을 구하시오.
select*
from hr.employees
where next_day(hire_date, '목') = '01/01/18';
-- 33. 윤달에 입사한 사원을 출력하시오.
select*
from hr.employees
where last_day(hire_date) like '%/%/29';
-- 34. 입사일로 부터 현재까지 몇달이 지났나요, 이름, 성, 직무, 입사일도 같이 출력
select first_name, last_name, job_id, hire_date, trunc(months_between(sysdate,hire_date),0)
from hr.employees;
-- 35 각 사원이 직무를 담당한 달은 몇달인지 출력하시오.

-- 36. 입사한지 200개월이 지난 사원들을 출력하시오.
select*
from hr.employees
where months_between(sysdate,hire_date)>=200;
--- 19. 성이 모두 소문자인 grant와 모두 대문자인 'GRANT'로 직원테이블에서
--- 해당 사원을 찾으려 한다.
select *
from hr.employees
where upper(last_name) = 'GRANT' or lower(last_name) = 'grant';
---20. 'GranT'로 입력했을때 사원테이블에서 성이 'Grant'인 사원을 찾으시오
select*
from hr.employees
where initcap(last_name) = 'Grant';
-- 21. 성은 모두 대문자로 변환하고 이름 모두 소문자로 변환하여
-- 성과 이름을 붙여 출력할 때 ' 나는 GRANT douglas 입니다'로 
-- 출력되게 하시오
select '나는 ' || upper(last_name) || ' ' || lower(first_name) || '입니다.'
from hr.employees;
-- 22. 성과 이름을 붙여 출력
select concat(last_name, first_name)
from hr.employees;
--- 23. 성이 Davies에서 av만 출력하시오.
select substr(last_name,2,2)
from hr.employees
where last_name = 'Davies';
--- 24. 성이 두번째 글자부터 모두 출력하시오.
select substr(last_name,2)
from hr.employees;
--- 25. 성의 마지막 글자에서 두글자만 가져오시오.
select substr(last_name,-2,2)
from hr.employees;
--- 26. 성의 뒤에 on으로 끝나는 사람을 찾으시오
select *
from hr.employees
where substr(last_name,-2,2) = 'on';
-- 27. 성의 뒤에 세번째 글자가 so인 사람을 출력하시오
select*
from hr.employees
where substr(last_name,-3,2) = 'so';
-- 28. 직원 정보를 출력하는데 이메일은 왼쪽에서 3글자만 출력하시오.
--     직원번호, 성, 급여, 직무, 이메일
select employee_id, last_name, salary, job_id, substr(email,1,3)
from hr.employees;
-- 29. 직원 정보를 출력하는데 이메일은 오른쪽에서 3글자만 출력하시오.
-- 직원번호, 성, 급여, 직무, 이메일
select employee_id, last_name, salary, job_id, substr(email,-3,3)
from hr.employees;
-- 30. 직원 정보를 출력하는데 이메일은 오른쪽에서 3글자만 출력하고 나머지는 ‘-’로 출력
---    직원번호, 성, 급여, 직무, 이메일
select employee_id, last_name, salary, job_id, rpad(substr(email,-3,3), length(email), '*')
from hr.employees;
--- 31. o가 있는 성중 o가 몇번째에 있는 위치인지 출력하시오. 
--      직원번호 성, 성의 위치, 직무
select employee_id, last_name, instr(last_name,'o'), job_id
from hr.employees
where last_name like '%o%';
--- 32. oc가 있는 성중 oc가 몇번째에 있는 위치인지 출력하시오.  
-- 직원번호 성, 성의 위치, 직무
select employee_id, last_name, instr(last_name,'oc'), job_id
from hr.employees
where last_name like '%oc%';
--33. 직무에 RE가 있는 경우 RE부터 3글자만 출력하시오.
--    직원번호 성,  직무, 가공된 직무
select employee_id, last_name, job_id, substr(job_id, instr(job_id,'RE'),3)
from hr.employees
where job_id like '%RE%';
--- 34. 직원번호, 성, 입사일 , 급여, 
--- 급여를 10칸에 출력하고 나머지 공간 앞에 * 표시가 되게 하자.
select employee_id, last_name, hire_date, lpad(salary,10,'*')
from hr.employees;
-- 35. 직원번호, 성, 입사일 , 급여, 
--- 급여를 10칸에 출력하고 나머지 공간 뒤에 * 표시가 되게 하자.
select employee_id, last_name, hire_date, rpad(salary,10,'*')
from hr.employees;
-- 36. 직원번호, 성, 입사일, 직무를 출력하는데 
---    직무에 RE가 있다면 RE를 AB로 변경하여 출력.
select employee_id, last_name, hire_date, replace(job_id, 'RE', 'AB')
from hr.employees;
-- 37. 직원번호, 연락처, 커미션, 부서번호,급여
-- 급여를 3000으로 나누었을 때의 나머지를 출력하시오.
select employee_id, phone_number, commission_pct, department_id, mod(salary,3000)
from hr.employees;
-- 38. 2002년도부터 입사한 직원들을 출력하시오
select*
from hr.employees
where hire_date >= '02/01/01';
-- 39. 올해는 오늘까지 몇주가 지났는지 확인하시오.
select trunc((sysdate-to_date('22/01/01'))/7,0)
from dual;
-- 40. 직원마다 몇년 근무했지를 출력하시오. 직원번호, 성, 연락처,부서, 근무년수
select employee_id, last_name,phone_number, department_id, trunc((sysdate-hire_date)/365,0)
from hr.employees;
-- 41. 근속년수 8년 이상인 사원들만 출력하시오
select *
from hr.employees
where trunc((sysdate-hire_date)/365,0)>=8;
--- 42. 예시 : 게시판리스트에서 제목을 5글자****인 것 처럼 
--- 직원의 성을 3글자만 출력 뒤에 *을 세번찍어서 출력하시오.
--- 직원번호, 입사일, 성
select employee_id, hire_date , rpad(substr(last_name,1,3), 6,'*')
from hr.employees;
--- 43. 홍길동은 몇글자입니까?
select length('홍길동')
from dual;
--- 44. )"홍길동 \n"으로 되어 있는 것을 html에서 행 바꿈이되도록
---      "홍길동 <br>"변경하시오.


-- 20. 커미션이 null이라면 커미션 값을 0으로 대입하여 이름, 부서, 입사일, 직무,
--     급여, 커미션, 그리고 년봉을 출력하세요.
select first_name, department_id , hire_date, job_id, salary, 
       nvl(commission_pct,0), (salary+salary*nvl(commission_pct,0))*12 
from hr.employees;

---37. 03/06/17이후에 입사한 사람은?
select*
from hr.employees
where to_char(hire_date, 'yy/mm/dd') >= '03/06/17';

---38. 17/06/03(일월년)이후에 입사한 사람은?
select*
from hr.employees
where hire_date >= to_date('17/06/03','dd/mm/yy');

-- 40. 25-04-2003 보다 늦게 입사한 사람을 출력 
select*
from hr.employees
where to_char(hire_date,'dd-mm-yyyy') > '25-04-2003';

-- 41. 이름, 성, 직무 부서 그리고 급여를 세자리씩 ,를 찍고 $가 출력되게 하시오.
select first_name, last_name, job_id, department_id, to_char(salary, '$9,999,999')
from hr.employees;

-- 42. janette또는 JANETTE 또는 jaNette 값을 전달 받았다.
---   이름이 'Janette'인 사원을 출력하시오.
select *
from hr.employees
where first_name = initcap('janette') or first_name = initcap('JANETTE') or first_name = initcap('jaNette');

-- 43. job_id이 'IT_PROG' 급여를 10%상승
--              'ST_CLERK' 급여를 15%상승
--              'SA_REP' 급여를 20%상승
--                  그이외는 급여
-- 성, 이름, 급여도 같이 출력
select last_name, first_name, salary, 
case when job_id = 'IT_PROG' then salary*1.10
            when job_id = 'ST_CLERK' then salary*1.15
            when job_id = 'SA_REP' then salary*1.20
            else salary end saljob
from hr.employees;

--- 44. 성, 이름, 직무, 급여, 급여에 따른 직책도 같이 출력하세요.
--- 급여가 3000이하이면 사원 
--        5000이하이면 주임
--        7000이하이면 대리
--        9000이하이면 과장
--       11000이하이면 차장
--       13000이하이면 부장
--       그 이상 이면 임원
select last_name, first_name, job_id, salary,
       case when salary <=3000 then '사원'
            when salary <=5000 then '주임'
            when salary <=7000 then '대리'
            when salary <=9000 then '과장'
            when salary <=11000 then '차장'
            when salary <=13000 then '부장'
            else '임원' end job
from hr.employees;

-- 45. 급여에 따른 세금을 출력하고 싶다. 이름 , 성, 급여, 직무, 세금을 출력하시오.
---  급여를 2000으로 나눈 몫이 0이면 급여의 0%
---                         1이면 급여의 9%
---                         2이면 급여의 20%
---                         3이면 급여의 30%
---                         4이면 급여의 40%
---                         5이면 급여의 42%
---                         6이면 급여의 44%
---                         이외 급여의 45% 세금이다.
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

-- 1. 성과 이름을 붙여서 출력하시오.
select last_name || first_name
from hr.employees;
-- 2. nvl
-- 성, 이름, 직무, 급여, 커미션을 포함한 년봉
select last_name, first_name, job_id, salary, salary+salary*nvl(commission_pct,0)
from hr.employees;
-- 3. nvl2
--           널이 아니면 두번째 값 출력
--           널이면 세번째 값 출력
select last_name, first_name, job_id, salary, salary+salary*nvl2(commission_pct, commission_pct, 0)
from hr.employees;

-- 4. nullif
-- exp1과 exp2가 같으면  null출력
-- exp1과 exp2가 다르면 exp1를 출력
select first_name, length(first_name) exp1, last_name, length(last_name) exp2, 
       nullif(length(first_name), length(last_name))
from hr.employees;

---6. 급여를 제일 많이 받는 사람과 적게 받는 사람을 출력, 급여 평균
select max(salary), min(salary), avg(salary)
from hr.employees;

--- 7. 급여를 받는 사람의 수와, 부서를 가지고 있는 사람의 수를 출력하시오.
select count(salary), count(department_id)
from hr.employees;

-- 8. 커미션을 받는 사원들의 커미션의 평균과 직원 전체의 커미션 평균을 구하시오.
select avg(commission_pct), sum(commission_pct)/count(*)
from hr.employees;

--9. 전체의 사원의 수를 구하시오. (행 전체의 갯수)
select count(*)
from hr.employees;

-- 10. 제일 늦게 입사한 사원과 제일 처음에 입사한 사원을 출력하시오.
select min(hire_date), max(hire_date)
from hr.employees;

--11.직무에 'REP'를 가지고 있는 사원들 중 제일 많이 받는 급여와 적게 받는 급여를 출력,
--    평균 급여와 사원의 수, 급여의 합계 
select max(salary), min(salary), avg(salary), count(*), sum(salary)
from hr.employees
where job_id like '%REP%';

-- 12.80번 부서에서 커미션을 받는 사원의 수와 최대 커미션 값과 최소 커미션 값을 출력
--     부서에 속해 있는 사원의 수 
select count(commission_pct), max(commission_pct), min(commission_pct), count(*)
from hr.employees
where department_id = 80;

-- 13. 중복되지 않은 부서는?
select distinct department_id
from hr.employees;

-- 14. 중복되지 않은 부서의 수는?
select count(distinct department_id)
from hr.employees;

-- 15. 커미션의 받는 사원의 커미션 평균과 
--    커미션을 받지 않는 사원의 커미션의 평균을 구하시오.
select avg(commission_pct), sum(commission_pct)/count(*), avg(nvl(commission_pct,0))
from hr.employees;

--- 16. 90인부서의 급여의 평균, 합계, 최대, 최소, 사원의 수
select avg(salary), sum(salary), max(salary), min(salary), count(*)
from hr.employees
where department_id = 90;

-- 17. 각 부서별 부서의 급여의 평균, 합계, 최대, 최소, 사원의 수
select department_id, avg(salary), sum(salary), max(salary), min(salary), count(*)
from hr.employees
group by department_id;

-- 18. 같은 직무를 하는 사원들 중 제일 먼저 들어 온 사원가 제일 늦게 들어온 사원의 
---    입사일을 출력하시오.
select job_id, min(hire_date), max(hire_date)
from hr.employees
group by job_id;

-- 19. 사원번호,  이름, 입사일, 직무, 부서를 출력할 때.
-- 부서는 오름차순으로 정렬하고 각 부서의 직무를 오름차순으로 정렬하여 출력하시오.  
select employee_id, first_name, hire_date, job_id, department_id
from hr.employees
order by department_id asc, job_id asc;

-- 20.  각 부서의 직무별 급여 평균 , 합계, 담당하는 사원의 수를 출력
select department_id, job_id, avg(salary), sum(salary), count(*)
from hr.employees
group by department_id, job_id;

-- 20. 90부서에서 직무별 급여 합계와 평균 구하시오.
select sum(salary), avg(salary)
from hr.employees
where department_id = 90
group by job_id;

-- 21. 각부서에서 직무가 같은 사원들 중 입사일이 같은 사원의 수를 구하시오.
-- 사원수가 2명이상만 출력
select count(*)
from hr.employees
group by department_id, job_id, hire_date
having count(*)>=2;

-- 22. 평균급여가 7000이상인 부서만 출력하시오.평균 급여 높은 것 부터 출력하시오
select department_id, avg(salary)
from hr.employees
group by department_id
having avg(salary)>=7000
order by avg(salary);

-- 23. 부서의 직원 수가 10명 미만이 부서를 출력하시오.
select department_id, count(*)
from hr.employees
group by department_id
having count(*)<10;

-- 25. 직무에 'REP'가 포함되어 있지 않은 직무별 급여의 평균, 합계, 최소, 
--- 최대 값을 출력할때 급여의 합계가 13000이상인 직무만 출력하시오.
select job_id, avg(salary), sum(salary), min(salary), max(salary)
from hr.employees
where job_id not like '%REP%'
group by job_id
having sum(salary)>=13000;

-- 1.  사원의 성, 급여 , 입사일, 직무를 출력할 대 직무명도 같이 출력하시오.
select last_name, salary, hire_date, j.job_id, job_title
from hr.employees e, hr.jobs j
where e.job_id = j.job_id;

-- 2. 부서 테이블에서 90인 부서정보를 출력하시오.
select *
from hr.departments
where department_id = 90;

-- 3. 90인 부서의 직원을 구하시오.
select *
from hr.employees
where department_id = 90;

-- 4. 100번 사원 정보를 출력하시오.
select *
from hr.employees
where employee_id = 100;

-- 5. 2 ~ 4번을 한번에 출력하세요.
select employee_id, d.department_id, first_name, hire_date, salary
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and e.department_id = 90 and employee_id = 100;

-- 6. 직원번호, 성, 이름, 급여, 직무, 부서번호, 지역번호, 부서명을 출력
select employee_id, last_name, first_name, salary, job_id, d.department_id, location_id, department_name
from  hr.employees e, hr.departments d
where e.department_id = d.department_id;

-- 7. 직원번호 .성, 이름 급여 부서번호, 부서명을 100사원만 출력하시오.
select employee_id, last_name, first_name, salary, d.department_id, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and employee_id = 100;

-- 8. 직원 번호, 성, 이름 , 직무, 직무명을 출력하세요.
select employee_id, last_name, first_name, j.job_id, job_title
from hr.employees e, hr.jobs j
where e.job_id = j.job_id;

select*
from hr.employees;
select*
from hr.departments;
--9. 부서장이 상사인 직원을 구하시오.
-- 직원번호, 성, 급여 입사일, 부서번호, 부서장번호를 출력하시오.
select employee_id, last_name, salary, hire_date,d.department_id, d.manager_id
from hr.employees e, hr.departments d
where e.manager_id = d.manager_id;

-- 10. 성 이름 직원번호 , 전화번호 , 급여 부서번호, 부서명을 출력
select last_name, first_name, employee_id, phone_number, salary, d.department_id, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id;

select*
from hr.employees;
select*
from hr.departments;
-- 11. 각 부서의 부서의 정보와 부서장의 이름을 출력 하시오
select d.manager_id, d.department_id, department_name, first_name
from hr.employees e, hr.departments d
where e.employee_id = d.manager_id;


-- 12. 직원 번호, 직무 번호 , 직무내용
select employee_id, j.job_id, job_title
from hr.employees e, hr.jobs j
where e.job_id = j.job_id;

-- 13. 직원번호, 부서번호, 부서명
select employee_id, d.department_id, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id;

-- 14. 각 직원의 직원번호, 직무번호, 직무 내용, 부서번호, 부서명
select employee_id, j.job_id, job_title, d.department_id, department_name
from hr.jobs j, hr.employees e, hr.departments d
where j.job_id = e.job_id and e.department_id = d.department_id;

--15. 부서장의 직무내용을 출력하시오. 부서장 번호, 직무내용
select job_title, e.manager_id
from hr.jobs j , hr.employees e, hr.departments d
where j.job_id = e.job_id and e.employee_id = d.manager_id;

-- 16. 부서가 없는 직원도 같이 출력
select employee_id, first_name, last_name, e.department_id, d.department_id
from hr.employees e left outer join hr.departments d
on e.department_id = d.department_id
where e.department_id is null;

select *
from hr.departments;
-- 17. 직원이 없는 부서 를 출력
select e.department_id, d.department_id, department_name
from hr.employees e right outer join hr.departments d
on e.department_id = d.department_id
where e.department_id is null;

-- 18. 부서가 없는 직원과 직원이 없는 부서까지 모두 출력
select employee_id, first_name, last_name, e.department_id, d.department_id
from hr.employees e full outer join hr.departments d
on e.department_id = d.department_id;

--1. 직원번호, 성, 이름, 직무, 부서번호, 지역번호, 직무내용, 주소를 출력
select employee_id, last_name, first_name, j.job_id, d.department_id, l.location_id,
       job_title, street_address
from hr.jobs j, hr.employees e, hr.departments d, hr.locations l
where j.job_id = e.job_id and e.department_id = d.department_id 
and d.location_id = l.location_id;

-- 2. 커미션이 null인 사람의 부서명을 출력하시오
select commission_pct, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and commission_pct is null;

-- 3. 부서장의 성, 이름, 커미션을 출력하시오.
select last_name, first_name, commission_pct
from hr.employees e, hr.departments d
where e.employee_id = d.department_id;

-- 4. 부서장을 상사로 둔 직원들의 성, 이름, 이메일을 출력하시오.
select last_name, first_name, email
from hr.employees e, hr.departments d
where e.manager_id = d.manager_id;

-- 5. 직원이 없는 부서를 ansi join 방식으로 출력하시오.
select e.department_id, d.department_id, department_name
from hr.employees e , hr.departments d
where e.department_id(+) = d.department_id
and e.department_id is null;

select job_id
from hr.employees;
-- 가장 많은 직원을 가진 직무는 어떤 직무인지 직무내용과 함께 출력하시오.
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

-- countries 테이블에서 국가번호와 국가이름을 출력하고
-- regions 테이블에서 국가별 분류번호와 분류이름을 출력하시오.
-- 4가지로 출력
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

-- 직원, 성, 급여, 직무, 직무내용을 출력하고
-- 직무 히스토리 테이블에서 각 직무의 시작일과 마지막일을 출력하시오.
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

-- 6. 직원번호, 성, 이름, 주소, 직무, 부서번호, 지역번호, 직무내용, 나라 이름을 출력
select employee_id, last_name, first_name, j.job_id, d.department_id, l.location_id,
       job_title, street_address, country_name
from hr.jobs j, hr.employees e, hr.departments d, hr.locations l, hr.countries c
where j.job_id = e.job_id and e.department_id = d.department_id 
and d.location_id = l.location_id and l.country_id = c.country_id;

-- 7. 직무가 'ST_CLERK'인 사람의 국적은?
select last_name, first_name, j.job_id, country_name
from hr.jobs j, hr.employees e, hr.departments d, hr.locations l, hr.countries c
where j.job_id = e.job_id and e.department_id = d.department_id
and d.location_id = l.location_id and l.country_id = c.country_id
and j.job_id = 'ST_CLERK';

-- 8. 마케팅 부서의 사원의 연봉은?
select salary, first_name, last_name, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and department_name = 'Marketing';

-- 9. 직원이 없는 부서의 개수를 구하시오.
select count(*)
from hr.departments
where manager_id is null;

-- 10. 직무 히스토리 테이블에서 시작일과 마지막일이 5년 이상 차이나는 직원의 성, 이름, 부서명을 출력
select last_name, first_name, department_name
from hr.job_history j, hr.employees e, hr.departments d
where j.employee_id = e.employee_id and e.department_id = d.department_id
and j.end_date-j.start_date > 1825;



