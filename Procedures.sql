/*PROCEDURE 1 */


delimiter $

drop procedure if exists driver_insert$
create procedure driver_insert(IN AT char(10), IN name varchar(20), IN lname varchar(20), IN salary float(7,2), IN license enum('LOCAL','ABROAD'), IN route enum('LOCAL','ABROAD'), IN experience tinyint)

Begin
	declare br_code int;
	declare flag int;
	declare first_record cursor for 


		select wrk_br_code from worker group by wrk_br_code order by count(*) asc;
	
	declare continue handler for not found set flag = 1;
	Open first_record;
	set flag = 0;

	repeat

		Fetch first_record into br_code;
		if (flag = 0) then
			insert into worker values(AT, name, lname, salary, br_code);
			insert into driver values(AT, license, route, experience);
		End if;
		Until(flag = 1)
	End repeat;
	close first_record;
End$
delimiter ;
