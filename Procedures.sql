/*PROCEDURE 1 */


delimiter $

drop procedure if exists driver_insert$   -- Briskei to branch me tous ligoterous odhgous kai prosthetei ton odhgo pou tou dinoume se auto to branch


create procedure driver_insert(IN AT char(10), IN name varchar(20), IN lname varchar(20), IN salary float(7,2), IN license enum('A','B','C','D'), IN route enum('LOCAL','ABROAD'), IN experience tinyint)

Begin

declare Branch_code INT;

SELECT br_code into Branch_code FROM 
    (SELECT br_code, COUNT(drv_AT) as drv_count 
     FROM branch 
     INNER JOIN worker ON br_code = wrk_br_code 
     INNER JOIN driver ON wrk_AT = drv_AT 
     GROUP BY br_code 
     ORDER BY COUNT(drv_AT) ASC) AS subquery
ORDER BY drv_count ASC
LIMIT 1;


insert into worker values (AT, name, lname, salary, Branch_code);
insert into driver values (AT, license, route, experience);

End$
delimiter ;





/*PROCEDURE 2*/

delimiter $
drop procedure if exists trip_info$

create procedure trip_info(IN br_code Int, in depStart datetime, in depEnd datetime)
Begin
declare trip_ID int;
declare trip_departure datetime;
declare trip_return datetime;
declare maxseats tinyint;
declare cost float(7, 2);
declare trip_br_code int;
declare guide_AT char(10);
declare driver_AT char(10);
declare flag int;
declare reservation_num int;
declare driver_Fname varchar(20);
declare driver_Lname varchar(20);
declare guide_Fname varchar(20);
declare guide_Lname varchar(20);
declare empty_seats int;


declare tr_Info_cursor cursor for 
select * from trip where tr_departure>=depStart AND tr_departure<=depEnd AND tr_br_code = br_code;
declare continue handler for not found set flag=1;

Open tr_Info_cursor;

set flag = 0;

fetch tr_Info_cursor into trip_ID,trip_departure,trip_return,maxseats, cost, trip_br_code, guide_AT,driver_AT;


delete from result_trip_Info_table; 										/* Here we delete * from the table we store data about the trip Info in order to not have doublicate records */                                                                            


while(flag=0)
Do
select count(*) into reservation_num from reservation inner join trip on 
res_tr_id=trip_ID where tr_departure>=depStart AND tr_departure<=depEnd
AND tr_br_code=br_code AND res_tr_id=tr_id;

select wrk_name,wrk_lname into driver_Fname, driver_Lname from trip inner join worker
on tr_drv_AT=wrk_AT where tr_id=trip_ID;

select wrk_name,wrk_lname into guide_Fname, guide_Lname from trip inner join worker
on tr_gui_AT=wrk_AT where tr_id=trip_ID;

set empty_seats=maxseats-reservation_num;





insert into result_trip_Info_table(trip_ID, tr_cost, maxseats, reservation_num, empty_seats, driver_lname, driver_fname, guide_lname, guide_fname, trip_departure, trip_return)
select trip_ID as 'Trip ID', cost AS 'Cost', maxseats AS 'Maxseats', reservation_num AS 'Number of Reservations', empty_seats AS 'Empty Seats', driver_Lname AS 'Driver Lastname', driver_Fname AS 'Driver Name', guide_Lname AS 'Guide Lastname', guide_Fname AS 'Guide Name', trip_departure AS 'Departure', trip_return AS 'Return';




fetch tr_Info_cursor into trip_ID,trip_departure,trip_return,maxseats,cost , trip_br_code, guide_AT,driver_AT;
End while;


close tr_Info_cursor;

select * from result_trip_Info_table;
End$
delimiter ;










/*PROCEDURE 3*/

delimiter $

drop procedure if exists delete_If_Administrative$
create procedure delete_If_Administrative(IN name varchar(20), IN lname varchar(20))
Begin
    declare admin_AT varchar(20);
    
    select adm_AT into admin_AT from worker inner join admin on wrk_AT = adm_AT where wrk_name = name AND wrk_lname = lname;
    
    if admin_AT is not null then
        if exists (select mng_adm_AT from manages where mng_adm_AT = admin_AT) then
            select 'The Worker you provided is a manager of a branch. You are not allowed to delete him.';  
        else
            delete from worker where wrk_name = name AND wrk_lname = lname;  
        end if;
    else
        select "Oops! The worker you provided doesn't exist in our database. Check the name and lastname you provided and try again.";
    end if;
End$

delimiter ;

/* PROCEDURE 4a */
/* ΧΩΡΙΣ ΕΥΡΕΤΗΡΙΟ ΕΡΩΤΗΜΑ Α */

delimiter $
drop procedure if exists Return_Reservation_Offers$
create procedure Return_Reservation_Offers(in LowerPrePurch float(7, 2), in MaxPrePurch float(7, 2))
Begin
	select lname, fname from reservation_offers where prePurch between LowerPrePurch AND MaxPrePurch;
End$
delimiter ;


/* ΧΩΡΙΣ ΕΥΡΕΤΗΡΙΟ ΕΡΩΤΗΜΑ Β */

delimiter $

drop procedure if exists ReturnCustomerInfo$

create procedure ReturnCustomerInfo(IN LastName varchar(255))
Begin
    select fname, lname, reservation_offer_id from reservation_offers where lname = 'Dorian' group by reservation_offer_id;
End$

delimiter ;


/* ΜΕ ΕΥΡΕΤΗΡΙΟ ΕΡΩΤΗΜΑ Α */

create index res_offers_BTree on reservation_offers(prePurch);
drop index res_offers_BTree on reservation_offers;

/* ΜΕ ΕΥΡΕΤΗΡΙΟ ΕΡΩΤΗΜΑ Β */

create index cust_Info on reservation_offers(lname) using hash;




