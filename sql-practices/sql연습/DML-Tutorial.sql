-- Basic Query

-- table 삭제
drop table pet;

-- table 생성
create table pet(
   name varchar(20),
   owner varchar(20),
   species varchar(20),
   gender char(1),
   birth DATE,
   death DATE
);

-- scheme 확인
desc pet;

-- 조회
select name, owner, species, gender, birth, death from pet;

-- 데이터 생성, create
insert 
		into pet
		value ('박원균', '한주형', 'dog', 'm', '1997-10-13', null);
       
-- 데이터 삭제, delete
delete 
		from pet
		where name = '박원균';
        
-- load data local infile
load data local infile 'c:\\pet.txt' into table pet;

-- update death
update pet 
	set death=null
    where name != 'Bowser';

-- 조회연습 1 : where
-- 1990년도 이후에 태어난 아이들은 ?
select name, species, birth
	from pet
	where birth > '1990-12-31';
    
-- Gwen과 함께 사는 아이는?
select name, species, owner
	from pet
    where owner = 'Gwen';
    
-- null 다루기 1 : 살아있는 아이들은?
select name , birth, death
	from pet 
	where death is null;
    
-- null 다루기 2 : 죽은 아이들은?
select name, birth, death
	from pet
	where death is not null;
    
-- like 검색 (패턴 매칭) : 이름이 b로 시작하는 아이들은?
select name, species
	from pet
    where name like 'b%';  -- b%로 하면 b로 시작하는 단어 출력
    
-- like 검색 (패턴 매칭) : 이름이 b로 시작하는 아이들 중에 이름이 6글자인 아이는?
select name, species
	from pet
    where name like 'b_____';
    
-- 통계,집계 함수 
select count(*)
	from pet
    where death is not null; 
    
select count(death)
	from pet;
-- 위에 두 함수는 동일 하다.

		