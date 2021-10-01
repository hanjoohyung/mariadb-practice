-- inner join
-- 예제 1: employees 테이블과 titles 테이블을 join하여 직원의 이름과 직책을 출력하라

select concat(a.first_name,' ',a.last_name) as 이름, b.title as 직책
	from employees a, titles b
    where a.emp_no = b.emp_no 				-- join 조건(n-1 개가 필요)
		 and b.to_date = '9999-01-01';   	-- row 선택조건
         
-- 예제 2: employees 테이블과 titles 테이블을 join하여 직원의 이름과 직책을 출력하되, 여성 엔지니어만 출력

select concat(a.first_name,' ',a.last_name) as 이름, b.title as 직책, a.gender as 성별
	from employees a, titles b
    where a.emp_no = b.emp_no 				-- join 조건(n-1 개가 필요)
		 and b.to_date = '9999-01-01'   	-- row 선택조건 1
         and a.gender ='f'					-- row 선택조건 2
         and b.title='engineer';			-- row 선택조건 3
         
-- ANSI/ISO SQL1999 JOIN 표준 문법
-- 1) natural join
-- 두 테이블에 공통 컬럼이 있으면 별 다른 조인 조건 없이 암묵적으로 조인이 가능하다
-- 사용 빈도가 매우 낮음
select concat(a.first_name,' ',a.last_name) as 이름, b.title as 직책
	from employees a natural join titles b -- on a.emp_no = b.emp_no 생략
    where b.to_date = '9999-01-01';   	-- row 선택조건
    
-- 2) join ~ using
select concat(a.first_name,' ',a.last_name) as 이름, b.title as 직책
	from employees a join titles b using (emp_no)
    where b.to_date = '9999-01-01';   	-- row 선택조건
    
-- 3) join ~ on
select concat(a.first_name,' ',a.last_name) as 이름, b.title as 직책
	from employees a right join titles b on a.emp_no = b.emp_no
    where b.to_date = '9999-01-01';   	-- row 선택조건