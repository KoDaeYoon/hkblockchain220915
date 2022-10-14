-- --1. 성, 이름 , 급여, 부서, 부서명, 지역번호, 우편주소를 출력하시오
select last_name, first_name, salary, d.department_id, department_name, 
       l.location_id, street_address
from hr.employees e, hr.departments d, hr.locations l
where e.department_id = d.department_id and d.location_id = l.location_id;

--2. 부서가 없는 직원과 직원이 없는 부서를 출력하며 지역과 우편주소를 출력하시오.
select employee_id, d.department_id, l.location_id, street_address
from hr.employees e  full outer join hr.departments d on e.department_id = d.department_id
left outer join hr.locations l on d.location_id = l.location_id;

--3. 직무, 직무내용, 부서명, 우편주소를 이름과 함께 출력하시오.
select j.job_id, job_title, department_name, street_address, first_name
from hr.jobs j, hr.employees e, hr.departments d, hr.locations l
where j.job_id = e.job_id and e.department_id = d.department_id 
and d.location_id = l.location_id;

--4. 이름, 성, 부서명, 지역번호를 사원번호가 152인 사원만 출력하시오
select first_name, last_name, department_name, location_id
from hr.employees e, hr.departments d
where e.department_id = d.department_id 
and e.employee_id = 152;

--5. 직원번호, 이름, 성, 직무, 직무내용, 부서명, 우편번호, 지역번호, 지역명, 국가명을 출력하시오 
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
--1. 직원번호, 성, 이름, 이메일, 부서번호, 부서명을 출력해주세요.
select employee_id, last_name, first_name, email, d.department_id, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id;

--2. 직무번호, 직무내용, 성, 이름, 입사일을 출력하고,
--직무번호가 'SA_REP' 이며 입사일이 '020816' 일부터 '050921'까지인 직원정보를 출력해주세요.
select j.job_id, job_title, last_name, first_name, hire_date
from hr.jobs j, hr.employees e
where j.job_id = e.job_id
and j.job_id = 'SA_REP' and e.hire_date between '02/08/16' and '05/09/21';

--3. 직원번호, 성, 이름, 부서번호, 부서명을 출력하며 커미션을 받지 않는사람만 출력해주세요.
select employee_id, last_name, first_name, d.department_id, department_name
       , nvl(commission_pct,0)
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and e.commission_pct is null;

--4. 직원번호, 성, 이름, 부서번호, 부서명, 지역번호, 주소를 출력하고 도시가 'Toronto'에 사는 사람만 출력해주세요. 
select employee_id, last_name, first_name, d.department_id, department_name
       , l.location_id, street_address, City
from hr.employees e, hr.departments d, hr.locations l
where e.department_id = d.department_id and d.location_id = l.location_id
and l.city = 'Toronto';

--5. 직무내용, 성, 이름, 부서명, 주소, 출신국가를 출력하고 직원이 없는 모든국가를 출력해주세요.
select job_title, last_name, first_name, department_name, street_address
       , country_name
from hr.jobs j join hr.employees e on j.job_id = e.job_id 
join hr.departments d on e.department_id = d.department_id
join hr.locations l on d.location_id = l.location_id
right outer join hr.countries c on l.country_id = c.country_id;
------------------------------------------------------------------------
-- 1. 부서번호가 60인 사원의 성, 이름, 사원 번호, 급여, 부서명을 출력하시오.
select last_name, first_name, employee_id, salary, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and d.department_id = 60;

-- 2. 급여가 4800인 사원의 사원 번호,직무 번호, 직무명, 최소급여, 최대급여를 출력하시오.
select employee_id, j.job_id, job_title, min_salary, max_salary, salary
from hr.employees e, hr.jobs j
where e.job_id = j.job_id
and salary = 4800;

-- 3. 지역번호가 1700인 사원의 성과 이름, 전화번호, 고용일을 출력하시오.
select last_name, first_name, phone_number, hire_date, location_id
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and d.location_id = 1700;

--4.최소 급여가 4000인 직무를 가진 사원의 성, 이름, 직무명을 출력하시오.
select last_name, first_name, job_title, min_salary
from hr.employees e, hr.jobs j
where e.job_id = j.job_id
and min_salary = 4000;

-- 5.지역 번호가 4인 국가의 번호와 이름을 출력하시오.
select country_id, country_name
from hr.countries
where region_id =4;

--6. 지역 번호와 주소, 우편번호, 도시명이 출력되도록 하시오.
-- 단, UK인 국가만 나오도록 출력하시오.
select location_id, street_address, postal_code, city, country_name
from hr.locations l, hr.countries c
where l.country_id = c.country_id
and c.country_id = 'UK';

-- 7.평균 급여가 가장 높은 직무를 출력하시오.
select job_id
from hr.employees
group by job_id
having avg(salary) = (select max(avg(salary))
                      from hr.employees
                      group by job_id);

-- 8. 우편번호가 비어있는 주소와 도시명을 출력하시오.
select street_address, city, postal_code
from hr.locations
where postal_code is null;

-- 9. 부서번호가 50인 사원의 입사일과 퇴사일을 출력하시오.
select start_date, end_date, department_id
from hr.job_history
where department_id = 50;

-- 10. 나라 번호, 나라명, 지역 번호, 지역명을 출력하시오
-- 단 region_id 가 1인 것만 출력되도록 하시오.
select country_id, country_name, r.region_id, region_name
from hr.countries c, hr.regions r
where c.region_id = r.region_id
and r.region_id =1;
----------------------------------------------------------------------
-- 1. 이름이 'Daniel'부터 'Irene'인 사원들의
-- 사원번호, 이름, 급여
-- 부서 번호, 부서명을 출력하시오
-- 단, 이름을 기준으로 오름차순으로 정렬하시오.
select employee_id, first_name, salary, d.department_id, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and first_name between 'Daniel' and 'Irene'
order by first_name asc;

-- 2. 부서별로 가장 높은 급여를 출력하시오.
-- 단, 부서 번호를 기준으로 내림차순으로 정렬하시오.
select max(salary), department_id
from hr.employees
group by department_id
order by department_id desc;

-- 3. 직무에 'MA'가 들어가는 사원 중
-- 급여가 8000이 넘는 사원의 
-- 사원번호, 이름, 성, 직무
-- 부서 번호, 부서명을 출력하시오.
select employee_id, first_name, last_name, job_id
       , d.department_id, department_name
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and job_id like '%MA%' and salary>8000;

-- 4. 커미션이 null인 값은 0으로 바꾸고
-- 커미션을 포함한 사원들의 연봉을 구하시오
-- 사원 번호, 이름, 급여, 커미션, 연봉 출력
-- 단, 연봉의 별칭을 YEAR_SAL 로 표시하시오
select employee_id, first_name, salary, commission_pct
      , (salary+salary*nvl(commission_pct,0))*12 YEAR_SAL
from hr.employees;

-- 5. 부서번호가 20, 50, 80인 부서의 부서번호와 
-- 평균 급여, 최대 급여, 최소 급여, 급여 총 합을 출력하시오
select avg(salary), max(salary), min(salary), sum(salary)
from hr.employees
group by department_id
having department_id in (20,50,80);

-- 6. 최소 급여가 4000인 직무명, 
-- 해당 직무를 가진 직원의 성, 이름, 급여를 출력하시오.
select job_title, last_name, first_name, salary, min_salary
from hr.jobs j, hr.employees e
where j.job_id = e.job_id
and min_salary = 4000;

-- 7.  부서 번호
-- 해당 부서의 직원 번호, 성, 
-- 지역 번호, 주소를 출력하시오.
-- 단, 부서가 없는 직원도 출력한다.
select d.department_id, employee_id, last_name, l.location_id, street_address
from hr.employees e left outer join hr.departments d on e.department_id = d.department_id
left outer join hr.locations l on d.location_id = l.location_id;

-- 8. 직원 번호가 150번부터 173번인 직원의
-- 부서 번호, 부서명
-- 직원 번호, 성, 이름
-- 직무명, 직무 내용을 출력하시오
-- 단, 직원 번호를 기준으로 내림차순으로 정렬하시오
select d.department_id, department_name, employee_id, last_name, first_name
       , j.job_id, job_title
from hr.jobs j, hr.employees e, hr.departments d
where j.job_id = e.job_id and e.department_id = d.department_id
and employee_id between 150 and 173
order by employee_id desc;

-- 9. 지역번호가 2700인 부서의 부서번호와 주소를 출력하시오
select d.department_id, street_address, l.location_id
from hr.departments d, hr.locations l
where d.location_id = l.location_id
and l.location_id = 2700;

-- 10. 이름에 'AN'이 들어가는 직원의
-- 직원 번호, 이름, 부서, 부서명을 출력하시오
-- 단, 이름은 소문자, 대문자 상관없음
select employee_id, first_name, d.department_id, department_name 
from hr.employees e, hr.departments d
where e.department_id = d.department_id
and first_name like initcap('%AN%');

-- 11. 이름에 'AN'이 들어가지 않는 직원의
-- 직원 번호, 이름, 부서, 부서명, 직무명, 직무내용을 출력하시오
-- 단, 이름은 소문자, 대문자 상관없음
select employee_id, first_name, d.department_id, department_name, j.job_id, job_title
from hr.jobs j, hr.employees e, hr.departments d
where j.job_id = e.job_id and e.department_id = d.department_id
and first_name not like initcap('%AN%');
----------------------------------------------------------------------
--1번 직원 정보 중 사원번호, 이름, 직무를 출력할 때 직무내용을 출력하고
-- 부서장과 지역번호를 출력하세요
select employee_id, first_name, j.job_id, job_title, location_id
from hr.jobs j, hr.employees e, hr.departments d
where j.job_id = e.job_id and e.employee_id = d.department_id;

--2번 직원정보 사원번호, 이름 , 급여, 직무, 직무내용을 출력할때
-- 부서 정보 테이블에서 부서명, 부서장을 출력하시오.
select employee_id, first_name, salary, j.job_id, job_title, department_name
from hr.jobs j, hr.employees e, hr.departments d
where j.job_id = e.job_id and e.employee_id = d.department_id;

--3번 직원, 성, 급여, 직무, 직무내용을 출력하고 
-- 직무 히스토리 테이블에서 각 직무의 시작일과 마지막일 을 출력하시오.
select e.employee_id, last_name, salary, j.job_id, job_title, start_date, end_date
from hr.job_history h, hr.jobs j, hr.employees e
where h.employee_id = e.employee_id and e.job_id = j.job_id;

--4번 직원, 직무, 부서, 부서명 using 사용하여 출력하시오.
select employee_id, job_id, department_id, department_name
from hr.employees join  hr.departments using(department_id);

-- 5번 countries 테이블에서 국가번호 와 국가 이름 출력하고
-- regions 테이블에서 국가별 분류번호 와 분류이름을 출력하시오
select country_id, country_name, r.region_id, region_name
from hr.countries c, hr.regions r
where c.region_id = r.region_id;

-------------------------------------------------------------------------
-- 1) 해당 직무의 최저급여를 받는 사원의 정보를 출력하시오
--    사번, 이름, 직무, 급여, 최저급여
select employee_id, first_name, j.job_id, min_salary
from hr.jobs j, hr.employees e
where j.job_id = e.job_id;


-- 2) 부서 위치가 1800인 부서의 국가코드, 국가명, 지역코드, 지역명을 출력하시오
select c.country_id, country_name, r.region_id, region_name, location_id
from hr.locations l, hr.countries c, hr.regions r
where l.country_id = c.country_id and c.region_id = r.region_id
and location_id = 1800;

-- 3) 부서장이며 급여가 해당 직무의 최저 급여 이상인 사원의 정보를 출력하시오
-- 사번, 성, 직무, 부서명, 상사, 급여, 최저급여
select e.employee_id, last_name, j.job_id,
       department_name, e.manager_id, salary, min_salary
from hr.jobs j, hr.employees e, hr.departments d
where j.job_id = e.job_id and e.employee_id = d.department_id;

-- 4) 사번이 201번인 퇴사자와 사번 및 부서번호가 같은 사원의 정보를 출력하시오
--    사번, 이름, 부서번호, 부서명
select e.employee_id, first_name, d.department_id, department_name
from hr.job_history h, hr.employees e, hr.departments d
where h.employee_id = e.employee_id and e.department_id = d.department_id
and e.employee_id = 201 and d.department_id = 20;

-- 5) 상사가 있지만 부서장인 사원의 이름과 부서명을 출력하시오
select first_name, department_name, e.manager_id
from hr.employees e, hr.departments d
where e.employee_id = d.department_id 
and e.manager_id is not null;

-- 6) 직원들 중 직무가 AD_VP인 사원의 직무내용을 출력하시오.
--    직원 이름, 직원번호, 직업번호, 직무내용 출력
select first_name, employee_id, job_title
from hr.jobs j, hr.employees e
where j.job_id = e.job_id 
and j.job_id = 'AD_VP';

-- 7) 부서장이 상사인 직원의 부서이름과 최저연봉, 최고연봉을 구하시오.
--    이름, 부서장번호, 부서번호, 최저연봉, 최고연봉 출력
select first_name, employee_id, d.department_id, department_name,
       (min_salary)*12, (max_salary)*12
from hr.jobs j, hr.employees e, hr.departments d
where j.job_id = e.job_id and e.manager_id = d.manager_id;

-- 8) 입사일이 '03/06/17' 이후인 사원들의 부서와 지역번호를 출력
--    사원번호, 이름, 입사일, 부서번호, 부서명, 지역번호 출력
select employee_id, first_name, hire_date, d.department_id, department_name
       , location_id
from hr.employees e, hr.departments d
where e.department_id = d.department_id 
and hire_date > '03/06/17';

-- 9) 이름이 'Payam' 직원의 퇴사일을 구하시오.
--    사원번호, 이름, 부서번호, 부서이름, 퇴사일을 출력
select e.employee_id, first_name, d.department_id, department_name, end_date
from hr.job_history j, hr.employees e, hr.departments d
where j.employee_id = e.employee_id and e.department_id = d.department_id
and first_name = 'Payam';

-- 10) 사원이 없는 부서의 주소를 출력하세요.
--     부서번호, 부서이름, 주소 출력
select d.department_id, department_name, l.location_id
from hr.employees e right outer join hr.departments d
on e.department_id = d.department_id join hr.locations l
on d.location_id = l.location_id
where e.department_id is null;




--1. ANSI-JOIN을 사용해서 사원번호, 이름, 부서번호, 위치를 출력하는데 상사가 149인 사원들만 출력하시오.
select employee_id, first_name, d.department_id, location_id
from hr.employees e join hr.departments d
on e.department_id = d.department_id
where e.manager_id = 149;

--2. 직무에 4번째에서 6번째까지 PRO가 있다면 it_program으로 출력
--                                 ACC가 있다면 finance_account
--                                 나머지는 business로 출력하시오.
select *
from hr.jobs;
select*
from hr.employees;
select*
from hr.departments;
-- 3. 직무에 REP가 포함되어 있는 사원들의 평균 급여와 최소급여
--      최대급여 급여의 합계를 구하시오.
select avg(salary), min(salary), max(salary), sum(salary)
from hr.employees
where job_id like '%REP';

-- 5.  부서별 최대 급여가 10000이상인 부서만 출력하시오.
select department_id
from hr.employees
group by department_id
having max(salary)>=10000;

