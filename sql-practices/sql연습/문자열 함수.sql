-- 함수 : 문자열 함수

-- upper (대문자로 바꿔줌)
select upper('buSan'), upper('busan'), upper('Douzone');
select upper(first_name) from employees;

-- lower (소문자로 바꿔줌)
select lower('buSan'), lower('busan'), lower('Douzone');
select lower(first_name) from employees;

-- substring (문자열, index, length) - index부터 length만큼을 출력
select substring('Hello World', 3, 2);
-- 예제 : 1989년에 입사한 사원들의 이름, 입사일을 출력하라
select concat(first_name, ' ', last_name) as 이름, hire_date as 입사일
	from employees
    where hire_date = substring(hire_date,1,4);
    
-- lpad(오른쪽 정렬), rpad(왼쪽 정렬)
select lpad('1234', 10, '-');
select rpad('1234', 10, '-');

-- 예제 : 직원들의 월급을 오른쪽 정렬로(빈공간은 *) 출력
select lpad(salary, 10, '*') from salaries;

-- trim, ltrim, rtrim [trim은 space bar, 지정한 문자를 제거한다 하지만 중간에 있는건 제거되지 않음]
select concat('---',ltrim('    hello    '),'---');
select concat('---',rtrim('    hello    '),'---');
select concat('---',trim(both 'x' from 'xxxxhelloxxxx'),'---');