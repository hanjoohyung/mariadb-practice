-- 함수 : 날짜 함수

-- CURDATE(), CURRENT_DATE : 현재 날짜
select CURDATE();
select CURRENT_DATE;

-- CURTIME(), CURRENT_TIME : 현재 시간
select CURTIME();
select CURRENT_TIME;

-- now(), sysdate() : CURDATE와 CURTIME 을 합친 것 [now는 쿼리가 실행됬을때의 시간, sysdate는 함수가 실행된 시간]
select now();
select sysdate();
select now(), sleep(2), now();
select sysdate(), sleep(2), sysdate();

-- date_format(date, format) : 시간을 출력하는 것을 따로 지정
select date_format(now(), '%Y년 %m월 %d일 - %h시 %i분 %s초') as date_format;
select date_format(now(), '%Y년 %c월 %d일 - %h시 %i분 %s초') as date_format;

-- period_diff : 특정 날짜의 차이를 출력
-- YYMM, YYYYMM
-- 예제 : 근무 개월 수를 출력하라
select concat(first_name, ' ', last_name)as 이름, hire_date as 입사일, 
		period_diff(date_format(curdate(), '%Y%m'), date_format(hire_date,'%Y%m')) as 일수
	from employees
order by 일수 desc; -- 띄어쓰기로 칼럼명을 한다면 이렇게 활용이 안됨

-- date_add(=adddate), date_sub(=subdate) 날짜를 date에 type(day, month, year)형식의 표현식을 더하고 빼는 함수
-- 각 사원들의 근무 년수가 5년이 되는 날은 언제인가 ?
select concat(first_name, ' ', last_name)as 이름, hire_date as 입사일, date_add(hire_date, interval 5 year) as '5년 달성'
	from employees;
    
-- cast
select '12345' + 10, cast('12345' as int) + 10;
select date_format(cast('2021-10-01' as date), '%Y %m %d');
select cast(1-2 as unsigned);
select cast(cast(1-2 as unsigned) as signed);

-- mysql type
-- varchar, char(), text, CLOB(Character Large OBject)
-- signed(unsigned), int(integer), medium int, big int, 대부분 int하면 int(11)
-- float, double
-- time, date, datetime
-- LOB : CLOB, BLOB

    

