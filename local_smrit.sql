select *from hr.employees;
--보고 싶은 열만 보고 싶은것 : 프로젝션
--보고 싶은 행만 보고 싶은것 : selection(선택)
--시트 두개를 합치는 것 : 조인
--select : 조회
--select ~~ from hr.employees;에서 ~~에 column을 넣을 수 있다.
--EX)select first_name from hr.employees;
--select first_name,10 from hr.employees;
select * from hr.employees where first_name = 'Ellen';
select * from hr.departments; -- *는 모든 자료를 다 가져오라는 뜻.
SELECT department_id, department_name, manager_id, location_id from hr.departments;
--위에 행이랑 *를 쓰는 거랑 같다.
SELECT department_id, location_id from hr.departments;
--위에 행처럼 필요한 행만 가져오는 것을 프로젝션이라고 한다.
--열의 순서는 테이블에 있는 순서가 아닌 사용자 마음대로 나열할 수 있다.

select department_name, '이숭무'
from hr.departments;

select first_name, '회사명', salary, salary*0.1, salary+salary*0.1
from hr.employees;

select employee_id, salary, salary+300
from hr.employees;

-- 각 사원의 연봉에 상여금 100을 더해서 출력
select first_name, email, hire_date, salary, 100+(salary*12)
from hr.employees;
-- 급여에 100을 더한 연봉을 구하시오
select first_name, email, hire_date, salary, (100+salary)*12
from hr.employees;

select first_name, salary, salary*NULL, salary+null, salary-null
from hr.employees;
-- null은 모르는 값이어서 곱하고 더하고 빼도 결과는 null이다.(값은 존재하지만 알 수 없다)

select employee_id, salary, commission_pct*100
from hr.employees;
-- 사원의 급여에 커미션을 더한 연봉을 구하시오
select first_name, salary, commission_pct, (salary+salary*commission_pct)*12
from hr.employees;

select first_name, salary, commission_pct, (salary+salary*commission_pct)*12 year_sal
from hr.employees;
-- column의 이름을 바꿀 때 as를 쓰거나 한 칸 띄우고 바꿀 이름을 써준다.

select first_name, salary, commission_pct, (salary+salary*commission_pct)*12 "Year sal"
from hr.employees;
-- 공백이나 특수 문자를 포함하거나 대소문자를 구분하는 경우 큰 따옴표를 쓴다.

--select '이'+'숭무' from dual; 처럼 문자열의 합은 연결연산자 ||을 써서 붙인다.
select '이'||'숭무'
from dual; -- 가상의 테이블 dual

-- 사원의 사원번호와 이름, 성, 그리고 급여를 출력하는데 성과 이름은 붙여서 출력하세요.
select employee_id, last_name || ' ' || first_name full_name, salary
from hr.employees;

select '이숭무', '221004'
from dual;

select first_name, salary, department_id, '사원', '221004'
from hr.employees;

--ELLEN의 직업은 SA_REP입니다 라고 출력
select first_name || '의 직업은 ' ||job_id || '입니다.'
from hr.employees;

--Administration department's manager_id : 200
select department_name || ' department''s' || ' manager_id : ' || manager_id emp
from hr.departments;
--다른 방법
select department_name || ' department' || q'['s manager_id : ]' || manager_id emp
from hr.departments;

desc hr.employees;

--22.10.05 수업
select employee_id, first_name, job_id
from hr.employees;

--직무만 출력
select job_id
from hr.employees;

--사원들이 하고 있는 직무는 어떤 것이 있는지 출력하시오
select distinct job_id
from hr.employees;

--distinct는 중간에 있을 수 없다. 앞에 있어야 된다.
--select first_name, distinct job_id
--from hr.employees; --오류

--직무와 급여가 같은 것은 한번만 출력 / 3개면 3개 모두 같은 것들만 제외한다.
select distinct salary, job_id, department_id
from hr.employees;

desc hr.employees;

--selection
select * 
from hr.employees
where department_id = 90;

--직무가 AD_VP인 사원들만 출력하세요.
select *
from hr.employees
where job_id = 'AD_VP';
--숫자는 그냥 적고 문자열은 ' '안에 넣어준다.

--사원 번호, 성, 직무, 부서번호를 출력할 때 60인 부서만 가지고 오세요
select employee_id, last_name, job_id,department_id
from hr.employees
where department_id = 60;

select last_name
from hr.employees;

--whalen이라는 직원의 성, 직무, 부서번호를 출력하세요.
select last_name, job_id, department_id
from hr.employees
where last_name = 'Whalen';
--데이터에 대해서는 대소문자를 가리기 때문에 구별해줘야한다.

select hire_date
from hr.employees;

--05/08/17에 입사한 사원들을 출력
select *
from hr.employees
where hire_date = '05/08/17';

select *
from hr.employees
where hire_date = '05-08-17';

select *
from hr.employees
where hire_date = '2005.08.17';

-- 세기 / 년도 / 월 / 일 / 시 / 분 / 초 (두자리씩)

select *
from hr.employees
where commission_pct is null;
-- null은 알 수 없는 값이므로 = 으로 비교를 할 수 없다. 따라서 is null로 비교해준다.

---급여가 3000 미만인 급여를 받는 사원을 가지고 오세요.
select *
from hr.employees
where salary < 3000;

-- 직원의 급여가 2500이상이고 3500이하인 직원을 사원번호, 성, 급여를 projection해서 출력
select employee_id, last_name, salary
from hr.employees
where salary <= 3500 and salary>=2500;
--같은 구문, between a and b에서 a와 b의 값을 바꾸면 안됨
select employee_id, last_name, salary
from hr.employees
where salary between 2500 and 3500;

--사원번호, 성, 급여, 상사번호
--부서번호가 30,60,90인 직원만 출력
select employee_id, last_name, salary, manager_id
from hr.employees
where department_id = 30 or department_id = 60 or department_id = 90;
--같은 구문
select employee_id, last_name, salary, manager_id
from hr.employees
where department_id in(30,60,90);

--상사가 100,101,201인 사원들의 정보 중 사원번호, 성, 급여, 상사에 대한 내용 출력
select employee_id, last_name, salary, manager_id
from hr.employees
where manager_id in(100,101,201);
--성이 'Hartstein', 'Vargas' 직원의 사원번호, 급여, 상사, 부서번호에 대한 내용 출력
select employee_id,salary, manager_id, department_id
from hr.employees
where last_name in('Hartstein', 'Vargas');

select job_id from hr.employees;

--직무에 MA가 포함되어 있는 직원들을 출력
select *
from hr.employees
where job_id like '%MA%'; -- MA% or %MA or %MA%

--직무가 S가 포함되어 있는 직원들을 출력
select *
from hr.employees
where job_id like '%S%'; 

--직무에 K가 포함되어 있는 직원들을 출력
select *
from hr.employees
where job_id like '%K%'; 

--직무에 S로 시작되는 직원들을 출력
select *
from hr.employees
where job_id like 'S%'; 
--%는 0개 이상의 문자를 나타냅니다

--boarder라는 테이블에 contents라는 컬럼에 있는 데이터 중 '이숭무'가 포함된 것을 출력
--select *
--from boarder
--where contents like '%이숭무%';

--직무가 S로 끝나는 직원들을 출력
select *
from hr.employees
where job_id like '%S';

-- 성에서 두번째 글자가 o로 시작하는 사원을 출력
select *
from hr.employees
where last_name like '_o%';

-- 성에서 세번째 글자가 s로 시작하는 사원을 출력
select *
from hr.employees
where last_name like '__s%';
-- _는 임의의 단일 문자를 나타냅니다.

-- 성이 뒤에서 두번째 글자가 s로 끝나는 사원을 출력
select *
from hr.employees
where last_name like '%s_';

-- 직무가 'IT_PROG'이고 급여가 6000인 사원을 출력
select *
from hr.employees
where job_id = 'IT_PROG' and salary = 6000;

-- 직무에 MAN이 포함되어 있고 급여가 10000이상인 사원 출력
-- 사원번호, 성, 직무, 급여
select employee_id, last_name, job_id, salary
from hr.employees
where job_id like '%MAN%' and salary >=10000;

-- 직무에 'MAN'이 포함되어 있는 사원과 급여가 10000이상인 사원을 출력
select *
from hr.employees
where job_id like '%MAN%' or salary >=10000;

--직무에 'IT_PROG', 'ST_CLERK', 'SA_REP'가 아닌 직무를 가진 사원 출력
select last_name, job_id
from hr.employees
where job_id != 'IT_PROG' and job_id != 'ST_CLERK' and job_id != 'SA_REP';

-- not in 사용
select last_name, job_id
from hr.employees
where job_id not in ('IT_PROG','ST_CLERK','SA_REP');

-- 성과 직무 그리고 급여를 출력하는데 직무가 'SA_REP'인 것과 'AD_PRES'인 직무를 수행하는
-- 직원들 중 급여가 15000을 초과하는 사원을 출력
select last_name, job_id, salary
from hr.employees
where job_id in ('SA_REP', 'AD_PRES') and salary > 15000;

select last_name, job_id, salary
from hr.employees
where (job_id = 'SA_REP' or job_id = 'AD_PRES') and salary > 15000;
-- and 연산이 or 연산보다 우선한다.

-- 순서
-- select
-- from 
-- [where] 생략가능해서 from 다음에 order by가 바로 올 수도 있다.
-- [order by] 정렬을 할 때 사용

-- 성, 직무, 부서번호, 입사일을 출력하는데 입사일이 빠른 직원부터(오름차순)
-- 부서번호가 80인 부서만
select last_name, job_id, department_id, hire_date
from hr.employees
where department_id = 80
order by hire_date;

-- 입사일이 늦은 직원부터 (내림차순) -> desc 붙이면 됨
select last_name, job_id, department_id, hire_date
from hr.employees
where department_id = 80
order by hire_date desc;

-- 사원번호, 성, 연봉을 출력하는데 연봉을 내림차순으로 출력
select employee_id, last_name, salary*12 annsal
from hr.employees
order by annsal desc;
-- 오름차순
-- index    1           2          3(order by에서만 사용 가능)
select employee_id, last_name, salary*12 annsal
from hr.employees
order by 3;
-- 연산식도 사용 가능
select employee_id, last_name, salary*12 annsal
from hr.employees
order by salary*12;
-- select 자리에 없는 column도 order by 기준으로 사용 가능
select employee_id, last_name, salary*12 annsal
from hr.employees
order by department_id;

-- 두개 이상의 기준열을 만들자.
-- 각 부서가 내림차순으로 정렬되고 각 부서의 급여가 오름차순으로 정렬
-- 사원번호, 성, 부서번호, 급여 출력
select employee_id, last_name, department_id, salary
from hr.employees
order by department_id desc, salary;

-- 부서를 오름차순으로 정렬하고 각 부서의 직원의 입사일이 내림차순되어 있을 때
-- 부서에 같이 들어온 사원의 급여는 오름차순으로 정렬하여 출력
select employee_id, last_name, department_id, hire_date, salary
from hr.employees
order by department_id, hire_date desc, salary;

-- 부서를 오름차순으로 정렬하고 각부서에서 직무가 내림차순으로 정렬된 상태에서 직무에
-- 따른 급여를 제일 많이 받는 사람부터 출력되게 하세요.
select *
from hr.employees
order by department_id, job_id desc, salary desc;

-- index number를 사용해서 만들기
desc hr.employees
select *
from hr.employees
order by 11, 7 desc, 8 desc;

-- 성이 Austin부터 Sciarra사이에 있는 사원들을 출력
select *
from hr.employees
where last_name between 'Austin' and 'Sciarra'
order by last_name;

--성이 Austin부터 Sciarra 사이에 있는 사원들을 직무별 급여를 모두 내림차순으로 정렬
select *
from hr.employees
where last_name between 'Austin' and 'Sciarra'
order by job_id desc, salary desc;

--22.10.06 수업
--사원들 정보 중 사원번호, 이름, 급여, 직무를 출력하는데 직무가 'FI_ACCOUNT'인 사원들만 출력
select employee_id, first_name, salary, job_id
from hr.employees
where job_id = 'FI_ACCOUNT';

--직무에 '_A'가 있는 사원들을 출력
--원래 _는 공백문자를 뜻하지만 escape를 써서 그 의미에서 벗어날 수 있게 만들어준다.
select *
from hr.employees
where job_id like '%\_A%' escape '\';

-- projection : 원하는 열을 선택 : select
-- selection : 원하는 행을 선택 : where 
-- where 절을 사용하기 위해서 비교(like)와 논리 연산자(not)를 사용

-- AC_ACCOUNT, AD_PRES, PR_REP가 직무에 포함되어 있지 않은 사원 출력
select *
from hr.employees
where job_id not in('AC_ACCOUNT', 'AD_PRES', 'PR_REP');

--부서가 없는 직원 출력
select *
from hr.employees
where department_id is null;

--부서가 있는 직원 출력
select *
from hr.employees
where department_id is not null;

--이름이 Douglas와 Susan 사이에 있는 직원을 출력하는데 직무가 'K_'를 포함하는 직원을 출력하세요
select *
from hr.employees
where first_name between 'Douglas' and 'Susan' and job_id like '%K\_%' escape '\';
--between a and b를 비교연산자로 바꿔줌
select *
from hr.employees
where first_name >= 'Douglas' and first_name <= 'Susan' and job_id like '%K\_%' escape '\';

--입력값이 하나인 것은 단일 행 함수, 입력값이 여러개인 것은 다중 행 함수 하지만 출력값은 오로지 하나
select lower('SQL COURSE')
from dual;
select upper('SQL COURSE')
from dual;
select initcap('SQL COURSE')
from dual;

select last_name, lower(last_name), first_name, upper(first_name)
       , job_id, initcap(job_id)
from hr.employees;

--higgins직원의 정보를 출력
select *
from hr.employees
where last_name = initcap('higgins');
--같음
select *
from hr.employees
where lower(last_name) = 'higgins';

--성이 KING인 직원을 출력하세요
select *
from hr.employees
where upper(last_name) = 'KING';
--같음
select *
from hr.employees
where last_name = initcap('KING');

select concat('Hello', 'World')
from dual;

--OConnellDonald, 07/06/21, SH_CLERK
select concat(last_name, first_name) name, hire_date, job_id
from hr.employees;

--OConnell Donald, 07/06/21, SH_CLERK
--concat은 인수값 두개만 들어감
--성과 이름 사이에 띄우는 방법
select concat(last_name, concat(' ', first_name)) name, hire_date, job_id
from hr.employees;

--substring
--sql에서는 index number는 처음이 1번부터 시작
select substr('HelloWorld', 1,5) 
from dual;
-- -2는 뒤에서 두번째를 뜻하고 그부터 정방향으로 가져온다.
select substr('HelloWorld', -2,5) 
from dual;

--부서 정보에서 부서번호, 부서명, 부서장을 출력하는데 부서명을 두번째 글자부터
--5글자만 출력
select department_id, substr(department_name,2,5), manager_id
from hr.departments;

--instr : indexof('abcdefg', 'c') -> abcdefg에서 c가 몇번째에 있냐
select instr('HelloWorld', 'W')
from dual;
select instr('010-6542-7265', '-')
from dual;
-- 뒤에서부터 찾기
select instr('010-6542-7265', '-',-1)
from dual;

--사원정보 중에 사원번호, 이름, 이메일, 이메일에서 'S'가 있는 위치도 출력
select employee_id, first_name, email, instr(email,'S')
from hr.employees;

--substr과 instr을 같이 사용
--사원번호, 이름, 급여, 이메일, 이메일에서 'S'가 있는 위치부터 5글자 출력
select employee_id, first_name, salary, email, substr(email, instr(email,'S'),5)
from hr.employees;

--length
select length('HelloWorld')
from dual;

select last_name, length(last_name), first_name, length(first_name)
        , email, length(email)
from hr.employees;

--이름의 길이가 6개 이상인 직원을 출력
select *
from hr.employees
where length(first_name) >= 6;

--lpad, rpad
select lpad('Hello',10,'*')
from dual;
--lpad or rpad(문자열 , 문자 개수, 나머지 채울 문자)
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

--이메일에서 앞에서 2글자를 출력하고 나머지는 오른쪽에 *로 채워서 출력하세요.
select employee_id, first_name, email, rpad(substr(email,1,2), length(email), '*')
from hr.employees;

--replace
select replace('JACK and JUE', 'J', 'BL')
from dual;

--직무에 -AS가 있다면 abc로 변경
select employee_id, first_name, job_id, replace(job_id,'_AS','abc') 
from hr.employees;

select ' hello world ', trim(' hello world '),rtrim(' hello world '),ltrim(' hello world ')
from dual;
select ' hello world ', trim(' hello world '),rtrim(' hello world '),ltrim(' hello world ')
from dual;

select * 
from hr.employees
where first_name = trim('    Donald     ');

-- round(n1, n2) : 반올림해서 소수점 n2자리까지 출력
select round(15.19345, 3), round(15.19355, 3), round(145.5554,2)
    , round(145.5554,1), round(145.5554,0), round(145.5554,-1), round(145.5554,-2)
from dual;

--trunc(): 절삭
select trunc(15.19345, 3), trunc(15.19355, 3), trunc(145.5554,2)
    , trunc(145.5554,1), trunc(145.5554,0), trunc(145.5554,-1), trunc(145.5554,-2)
from dual;

--mod(): 나머지
select mod(10,3)
from dual;

-- 사원정보를 출력할 때 이름, 급여, 급여를 5000으로 나눈 나머지를 출력
-- 직무가 SA_REP인 사원
select first_name, salary, mod(salary,5000)
from hr.employees
where job_id = 'SA_REP';

-- sysdate : 오늘 날짜 출력
select sysdate
from dual;

--사원번호, 이름, 급여, 입사일, 입사일로부터 며칠이 지났는지+몇년+며칠 출력
select employee_id, first_name, hire_date, sysdate-hire_date, trunc((sysdate-hire_date)/365,0)
       , trunc(mod(sysdate-hire_date,365),0)
from hr.employees;

-- 이름, 급여, 입사일, 입사한날로부터 몇주가 되었는지 출력
select first_name, hire_date, trunc((sysdate-hire_date)/7,0) week
from hr.employees;

--급여를 500으로 나눈 나머지가 400이상인 사원들을 출력
--사원번호, 이름, 입사일, 직무, 급여
select employee_id, first_name, hire_date, job_id, salary
from hr.employees
where mod(salary,500)>=400;

--오늘 날짜부터 다음 금요일은 며칠입니까?
select next_day(sysdate,'금'), next_day(sysdate,'금요일')
from dual;

--입사한 다음 월요일이 며칠일까요?
--이름, 성, 직무, 입사일
select first_name, last_name, job_id, hire_date, next_day(hire_date,'월')
from hr.employees;

--현재 날짜로부터 5개월 후
SELECT add_months(sysdate,5)
from dual;

--Neena가 입사하고 3개월 후가 정직원이 되는 날이다.
--이름, 성, 입사일, 직무, 사원번호도 같이 출력
select first_name, last_name, hire_date, job_id, employee_id, add_months(hire_date,3)
from hr.employees
where first_name = 'Neena';

--입사한 이후 다음 목요일이 '01/01/18'인 사원을 구하시오.
select *
from hr.employees
where next_day(hire_date,'목') = '01/01/18';

--이번 달 마지막날은 며칠일까?
select last_day(sysdate)
from dual;

--입사한 달의 마지막 날이 29일인 사원들을 출력
--성, 입사일, 마지막날 출력
select last_name, hire_date, last_day(hire_date)
from hr.employees
where last_day(hire_date) like '%/%/29';

--입사일로부터 몇년이 되었는지, 며칠이 되었는지, 몇주가 되었는지
--사원번호, 직무, 입사일
select employee_id,job_id, trunc((sysdate-hire_date)/365,0) year, 
     trunc(sysdate-hire_date) day , trunc((sysdate-hire_date)/7,0) week
     , trunc(months_between(sysdate, hire_date)) month
from hr.employees;

--입사한지 200개월이 지난 사원들을 출력
select *
from hr.employees
where months_between(sysdate,hire_date)>230;

--22.10.07 수업
--변환 함수 : 암시적 형변환 - 자동형변환 / 명시적 형변환 - 강제형변환
select '10'+'10'
from dual;
--자동 형변환이 되기 때문에 굳이 강제적 형변환을 할 필요가 없다.
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

-- 21-06-2007에 입사한 직원을 출력
select*
from hr.employees
where to_char(hire_date, 'dd-mm-yyyy') = '21-06-2007';

-- 21-6-2007에 입사한 직원을 출력
select*
from hr.employees
where to_char(hire_date, 'dd-fmmm-yyyy') = '21-6-2007';

-- 숫자를 문자열로
-- 1234567 => W1,234,567 / $1,234,567 / $1,234,567-
select to_char(1234567.890,'9,999,999'),
       to_char(1234567.890,'9,999,999.00'),
       to_char(1234567.890,'$9,999,999.00'),
       to_char(1234567.890,'L9,999,999.00'),
       to_char(-1234567.890,'L9,999,999.00MI')
from dual;

-- 이름,성,직무,부서 그리고 급여를 세자리씩 ,를 찍고 $가 출력
select first_name, last_name, job_id, department_id, salary, to_char(salary,'$9,999,999,999')
from hr.employees;

-- 03/06/17 이후에 입사한 사람은
select *
from hr.employees
where hire_date > '03/06/17';

select *
from hr.employees
where hire_date > to_date('17/06/03', 'dd/mm/yy');

--06 / 17 / 03  ==> mm/dd/yy형태 지금 형태가 어떤 형태인지 알려주면 됨.
select *
from hr.employees
where hire_date > to_date('06/17/03', 'mm/dd/yy');

-- 06/17/03 이전에 입사한 직원을 조회
select *
from hr.employees
where to_char(hire_date, 'dd/mm/yy') < '06/17/03';
-- 날짜를 비교할 때는 날짜를 문자로 바꾸는 것이 아니라 문자를 날짜로 바꿔서 조회해야된다.
-- 위의 형식(to_char)은 잘못된 것이다. 

-- NVL 함수 (Null Value 함수)
-- 성, 급여, 연봉을 출력
-- 연봉을 계산할 때 월 커미션도 포함
select last_name, salary, (salary+salary*nvl(commission_pct,0))*12 year_sal
from hr.employees;

-- nvl2(commission_pct, 'null이 아닐 때', 'null일 때')
select last_name, salary, commission_pct,(salary+salary*nvl2(commission_pct,commission_pct,0))*12 year_sal
from hr.employees;

-- nullif -> 값이 같으면 null, 값이 다르면 앞에꺼 nullif(a,b)
select first_name , length(first_name) "expr1", last_name, length(last_name) "expr2"
       , nullif(length(first_name), length(last_name)) result
from hr.employees;

-- coalesce
select last_name, employee_id, manager_id, commission_pct,
coalesce(to_char(commission_pct), to_char(manager_id), 'No commission and no manager')
from hr.employees;

-- null 관련 함수 -> 일반 함수(nvl, nvl2, nullif, coalesce)

-- 조건부 표현식: java의 switch ~ case 구문과 비슷.
-- case, decode가 있음
-- 급여에 따른 세금을 출력하고 싶다.
-- 이름, 성, 급여, 직무, 세금을 출력
-- 급여를 2000으로 나눈 몫이 0이면 급여의 0%
--                         1이면 급여의 9%
--                         2이면 급여의 20%
--                         3이면 급여의 30%
--                         4이면 급여의 40%
--                         5이면 급여의 42%
--                         6이면 급여의 44%
--                         이외 급여의 45% 세금이다
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

-- 성, 이름, 직무, 급여, 급여에 따른 직책도 같이 출력
-- 급여가 3000이하이면 사원, 5000이하면 주임, 7000 대리, 9000 과장, 11000 차장, 13000부장, 그 이상 임원
select last_name, first_name, job_id, salary, 
       case when salary <= 3000 then '사원'
        when salary <= 5000 then '주임'
        when salary <= 7000 then '대리'
        when salary <= 9000 then '과장'
        when salary <= 11000 then '차장'
        when salary <= 13000 then '부장'
       else '임원' end saljob
from hr.employees
order by salary;

--decode는 단일값에서만 사용 가능, 범위값에서는 사용 불가
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

-- 회사의 전체 평균 급여, 총급여, 최대 급여, 최소 급여, 급여 받는 사원 수
select avg(salary), sum(salary), max(salary), min(salary), count(salary)
from hr.employees;

-- 직무에 REP를 가지고 있는 사원 급여의 합계와 평균 급여, 급여를 받는 사원 수
-- avg(salary) = sum(salary) / count(salary)
select sum(salary), avg(salary), count(salary)
from hr.employees
where job_id like '%REP%';

-- 입사일이 제일 빠른 날과 제일 늦은 날을 출력하세요
select min(hire_date), max(hire_date)
from hr.employees;

-- 80 부서에 제일 먼저 들어온 사원의 입사일과 제일 늦게 들어온 사원의 입사일
select min(hire_date), max(hire_date)
from hr.employees
where department_id = 80;

-- count 는 null이 아닌 행의 수를 반환
select count(employee_id), count(first_name), count(salary), count(commission_pct),
       count(department_id), count(*)
from hr.employees;

select avg(salary), sum(salary) / count(*), sum(salary) / count(department_id)
from hr.employees;

-- 직원이 속해있는 부서의 수는 (distinct로 중복 제거 후 카운트)
select count(distinct department_id)
from hr.employees;

-- 커미션의 평균을 구하시오(avg는 commission_pct을 안받는 사람은 포함x)
select avg(commission_pct), sum(commission_pct)/count(*)
from hr.employees;
select avg(nvl(commission_pct,0))
from hr.employees;

-- 전 사원
select sum(salary), avg(salary), min(salary), max(salary)
from hr.employees;

-- 80부서의
select sum(salary), avg(salary), min(salary), max(salary)
from hr.employees
where department_id = 80;

-- 각 부서별
select sum(salary), avg(salary), min(salary), max(salary), department_id
from hr.employees
group by department_id;

-- 각 직무별 급여의 평균, 합계, 최대, 최소
select sum(salary), avg(salary), min(salary), max(salary), job_id
from hr.employees
group by job_id;

-- 입사일이 같은 사원 급여의 평균, 합계, 최소 최대
select sum(salary), avg(salary), min(salary), max(salary), hire_date
from hr.employees
group by hire_date;

-- 직무에 REP를 가지고 있는 사원의 급여의 합계, 평균 급여, 각 부서별 평균을 구하시오
select sum(salary), avg(salary), min(salary), max(salary)
from hr.employees
where job_id like '%REP%'
group by department_id;

-- 각 부서의 평균 급여 중 가장 많이 받는 평균 급여는?
select max(avg(salary))
from hr.employees
group by department_id;

select department_id, hire_date, first_name, salary
from hr.employees
order by department_id, hire_date;

-- 각 부서별 직무의 급여의 평균, 합계, 최대, 최소, 직원 수를 구하시오
-- 부서를 오름차순으로 정렬
select department_id, job_id, avg(salary), sum(salary), max(salary), min(salary), count(salary)
from hr.employees
group by department_id, job_id
order by department_id asc;

-- 각 부서에서 직무가 같은 사원들 중 입사일이 같은 사원의 수를 구하시오
select department_id, job_id, hire_date, count(*)
from hr.employees
group by department_id, job_id, hire_date;

-- 직무가 'REP'를 포함하는 각 부서의 평균이 8000이상인 부서의 평균 급여, 합계, 최소, 최대
select department_id, avg(salary), sum(salary), min(salary), max(salary)
from hr.employees
where job_id like '%REP%'
group by department_id
having avg(salary)>=8000
order by department_id;
--group by절에 대한 조건을 주기 위해 having절을 사용

-- 각 부서에서 직무가 같은 사원들 중 입사일이 같은 사원의 수를 구하시오
-- 사원 수가 2명 이상만 출력
select department_id, job_id, hire_date, count(*)
from hr.employees
group by department_id, job_id, hire_date
having count(*)>=2;

-- 부서의 직원 수가 10명 미만인 부서를 출력
select department_id, count(*)
from hr.employees
group by department_id
having count(*)<10;

select *
from hr.employees
order by employee_id;
-- 다음 사원 번호를 출력하세요.
select max(employee_id)+1 
from hr.employees;

-- 2022.10.11. 수업
-- employees : 직원에 대한 정보
-- departments : 부서에 대한 정보
-- 20인 부서의 직원들을 출력하세요 : 
select * 
from employees 
where department_id = 20;
-- 20인 부서의 부서명을 출력하세요 : 
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

-- 1999 구문으로 변경 : ansi - join
select first_name, last_name, hire_date, e.department_id, department_name
from hr.employees e join hr.departments d
on e.department_id = d.department_id
where e.department_id = 20;

-- 직원들 중 직무가 SH_CLERK인 사원들을 출력하세요.
-- 사원번호, 이름 ,급여, 부서명, 직무번호
select employee_id, first_name, salary, department_id, job_id
from hr.employees
where job_id = 'SH_CLERK';
-- 직무 테이블인 JOBS에서 직무가 SH_CLERK인 직무정보를 출력하세요.
select job_title 
from hr.jobs
where job_id = 'SH_CLERK';
-- T-SQL - join
select employee_id, first_name, salary, department_id, hr.employees.job_id, job_title
from hr.employees , hr.jobs
where hr.employees.job_id = hr.jobs.job_id ;
-- 1999 구문으로 변경 : ansi - join
select employee_id, first_name, salary, department_id, e.job_id, job_title
from hr.employees e join hr.jobs j
on e.job_id = j.job_id ;
-- NATURAL JOIN : 두 테이블의 컬럼명이 같아야 된다(job_id)
-- T-SQL과 ansi - join은 컬럼명이 달라도 컬럼값이 같을 때 할 수 있지만 네츄럴은 컬럼명이 동일
-- on e.job_id = j.job_id(on 절)이 생략되어있는 것과 같은 맥락이다.
select employee_id, first_name, salary, department_id, job_id, job_title
from hr.employees  natural join hr.jobs;

select * from hr.employees; --department_id, manager_id가 있고
select * from hr.departments;--department_id, manager_id가 있다

-- ansi join
select first_name, last_name, hire_date, e.manager_id, e.department_id, department_name
from hr.employees e join hr.departments d
on e.department_id = d.department_id and e.manager_id = d.manager_id;

-- 직원들 중 부서장을 상사로 둔 직원들의 부서명을 출력하시오. - T-SQL join
select first_name, last_name, hire_date, e.manager_id, e.department_id, department_name
from hr.employees e , hr.departments d
where e.manager_id = d.manager_id and e.department_id = d.department_id;
-- natural join에서는 별칭 쓰지 않는다.
select first_name, last_name, hire_date, manager_id, department_id, department_name
from hr.employees natural join hr.departments;

-- using 절에서 사용한 컬럼은 select 절에 테이블 별칭을 주지 않는다.
select first_name, last_name, hire_date, e.manager_id, department_id, department_name
from hr.employees e join hr.departments d
using (department_id);
select first_name, last_name, hire_date, manager_id, department_id, department_name
from hr.employees e join hr.departments d
using (department_id, manager_id);
-- 비교하는 테이블에 같은 컬럼이 여러개인 경우 특정 개수만 비교하고 싶을 때 using을 사용

select*
from hr.employees;
select*
from hr.departments;
select*
from hr.jobs;
-- T-SQL join, ansi join, natural join, using절
-- 각 직원의 직원번호, 직무번호, 부서번호, 부서명
-- 이 때 20, 30, 50, 80인 부서만 출력
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

-- 부서번호, 부서명, 우편번호(Location_id), 주소(street_address)를 출력하는데 
-- 우편번호가 1400만 출력
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

-- 3way join : 다중 조인
-- SH_CLERK을 직무로 가진 사원의 사원번호, 이름, 직무, 부서번호 출력하는데 
-- SH_CLERK의 직무 내용을 확인하고
-- SH_CLERK의 직무를 가지고 있는 사원의 부서명을 출력하시오
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

-- natural join : 컬럼명이 같은 것 모두 의무적으로 비교
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
-- 직원정보에서 사원번호, 이름, 급여, 직무를 출력할 때
-- 부서정보 테이블에서 부서명, 우편번호(location_id)를 출력하며
-- 주소테이블에서 우편번호에 해당하는 주소를 출력하세요.
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

-- 직원 정보 중 사원번호 , 이름, 직무를 출력할 때 직무내용을 출력하고
-- 부서번호와 부서명을 출력하세요
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

-- 직원 정보를 구하는데 사원번호, 이름, 급여, 입사일을 출력할 때
-- 직무의 상한값과 하한값을 출력하고 
-- 각부서의 부서명을 출력하고 부서의 우편번호와 주소를 출력하세요.
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
-- 부서가 없는 직원 출력
select employee_id, first_name, salary, department_id
from hr.employees
where department_id is null;
-- 사원번호, 이름, 급여, 직무, 부서번호, 부서명 출력
select employee_id, first_name, salary, job_id, d.department_id, department_name
from hr.employees e left outer join hr.departments d
on e.department_id = d.department_id;
-- 사원이 없는 부서까지 전부 출력이라는 뜻
select employee_id, first_name, salary, job_id, d.department_id, department_name
from  hr.employees e right outer join  hr.departments d
on e.department_id = d.department_id;
-- 둘 영역 전부 다 출력할 것이라는 뜻
select employee_id, first_name, salary, job_id, d.department_id, department_name
from hr.departments d full outer join hr.employees e
on e.department_id = d.department_id;
-- T-SQL 형식으로 바꾸려면 : 출력하고 싶은 영역 반대편에 (+)을 쓴다
select employee_id, first_name, salary, job_id, d.department_id, department_name
from hr.employees e , hr.departments d
where e.department_id = d.department_id(+);