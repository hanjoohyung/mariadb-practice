-- 함수 : 수학

-- abs(절대값)
select abs(-1), abs(1);

-- mod(나머지)
select mod(10, 3);

-- floor(정수만 출력)
select floor(3.14);

-- ceil
select ceil(3.14);
select ceiling(3.14);

-- round(x) : x에 가장 근접한 정수 [반올림]
-- round(x, d) : x값 중 소수점 d자리에서 가장 근접한 실수(해당 자리에서 반올림)
select round(1.498);
select round(1.498, 0);

-- pow(x,y), power(x,y) : x의 y승
select pow(2,3);
select power(2,3);

-- sign(x) : 수가 양수 인지 음수인지 0인지 확인
select sign(20);
select sign(-20);
select sign(0);

-- greatest(x,y,....);[최대값 뽑아내기] least(x,y,.....);[최소값 뽑아내기]
select greatest(10,30,20,40);
select least(10,30,20,40);
select greatest('c','A','b');
select least('c','A','b');
select greatest('hello','hellp','hellq');
