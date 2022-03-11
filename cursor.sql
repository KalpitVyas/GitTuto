drop procedure if exists cur1;
delimiter $
create procedure cur1()
BEGIN
		declare empno, mgr, sal, comm, deptno, bonusid int;
		declare ename, job, username, pwd, phone varchar(30);
		declare hiredate DATE;
		declare isActive tinyint;
		declare cur cursor for select * from emp;
		declare exit handler for 1329 select "End of File" as "Message";
		open cur;
			L1 : LOOP
				fetch cur into empno, mgr, sal, comm, deptno, bonusid, ename, job, username, pwd, phone, hiredate, isActive;
				select empno, mgr, sal, comm, deptno, bonusid, ename, job, username, pwd, phone, hiredate, isActive;
			end loop L1;
		close cur;
	end $
delimiter ;

/*
drop procedure if exists pro2;
delimiter $
create procedure pro2( nameFirst varchar(15), nameLast varchar(15), DOB DATE, emailID VARCHAR(30))
BEGIN
	declare x int;
	set x:= call myAutoNumber();
	insert into student values(x, nameFirst, nameLast, DOB, emailID);
end $
delimiter ;

	
drop function if exists myAutoNumber;
delimiter $
create function myAutoNumber() returns int;
DETERMINISTIC
BEGIN
	declare insertData varchar(100);
	declare randomID int;
	set randomID=round(rand()*10);
	return (randomID);
end $
delimiter ;	
*/	
	
	
	
	
	
	
	

