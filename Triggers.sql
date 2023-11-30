/* Trigger -1- */

/* Inserts */

drop trigger keep_Log_Insert_trip;
delimiter $
create trigger keep_Log_Insert_trip
after insert on trip
for each row 
Begin


	set @It_AT = 'Unknown';
	
	select IT_AT into @It_AT from IT_Logged_In Limit 1;
	
	
	insert into Log values (CURRENT_TIMESTAMP, 'Insert', 'Trip', @It_AT);
	
End$
delimiter ;



drop trigger keep_Log_Insert_reservation;
delimiter $
create trigger keep_Log_Insert_reservation
after insert on reservation
for each row 
Begin

	set @It_AT = 'Unknown';	

	select IT_AT into @It_AT from IT_Logged_In Limit 1;

	insert into Log values (CURRENT_TIMESTAMP, 'Insert', 'Reservation', @It_AT);
	


End$
delimiter ;


drop trigger keep_Log_Insert_event;
delimiter $
create trigger keep_Log_Insert_event
after insert on event
for each row 
Begin

	set @It_AT = 'Unknown';
	select IT_AT into @It_AT from IT_Logged_In Limit 1;

	insert into Log values (CURRENT_TIMESTAMP, 'Insert', 'Event', @It_AT);
	

End$
delimiter ;

 
drop trigger keep_Log_Insert_travel_to;
delimiter $
create trigger keep_Log_Insert_travel_to
after insert on travel_to
for each row 
Begin
	
	set @It_AT = 'Unknown';
	select IT_AT into @It_AT from IT_Logged_In Limit 1;
	insert into Log values (CURRENT_TIMESTAMP, 'Insert', 'Travel_to', @It_AT);
End$
delimiter ;

 
drop trigger keep_Log_Insert_destination;
delimiter $
create trigger keep_Log_Insert_destination
after insert on destination
for each row 
Begin

	set @It_AT = 'Unknown';
	select IT_AT into @It_AT from IT_Logged_In Limit 1;
	insert into Log values (CURRENT_TIMESTAMP, 'Insert', 'Destination', @It_AT);
End$
delimiter ;











/* Updates */

drop trigger keep_Log_Update_trip;
delimiter $
create trigger keep_Log_Update_trip
after update on trip
for each row
Begin

	set @It_AT = 'Unknown';
	select IT_AT into @It_AT from IT_Logged_In Limit 1;
	insert into Log values (CURRENT_TIMESTAMP, 'Update', 'Trip', @It_AT);
End$
delimiter ;




drop trigger keep_Log_Update_reservation;
delimiter $
create trigger keep_Log_Update_reservation
after update on reservation
for each row
Begin

	set @It_AT = 'Unknown';
	select IT_AT into @It_AT from IT_Logged_In Limit 1;
	insert into Log values (CURRENT_TIMESTAMP, 'Update', 'Reservation', @It_AT);
End$
delimiter ;


drop trigger keep_Log_Update_event;
delimiter $
create trigger keep_Log_Update_event
after update on event
for each row
Begin

	set @It_AT = 'Unknown';
	select IT_AT into @It_AT from IT_Logged_In Limit 1;
	insert into Log values (CURRENT_TIMESTAMP, 'Update', 'Event', @It_AT);
End$
delimiter ;


drop trigger keep_Log_Update_travel_to;
delimiter $
create trigger keep_Log_Update_travel_to
after update on travel_to
for each row
Begin

	set @It_AT = 'Unknown';
	select IT_AT into @It_AT from IT_Logged_In Limit 1;
	insert into Log values (CURRENT_TIMESTAMP, 'Update', 'Travel_to', @It_AT);
End$
delimiter ;


drop trigger keep_Log_Update_destination;
delimiter $
create trigger keep_Log_Update_destination
after update on destination
for each row
Begin

	set @It_AT = 'Unknown';
	select IT_AT into @It_AT from IT_Logged_In Limit 1;
	insert into Log values (CURRENT_TIMESTAMP, 'Update', 'Destination', @It_AT);
End$
delimiter ;






/* Deletes */

drop trigger keep_Log_Delete_trip;
delimiter $
create trigger keep_Log_Delete_trip
after delete on trip
for each row 
Begin

	set @It_AT = 'Unknown';
	select IT_AT into @It_AT from IT_Logged_In Limit 1;
	insert into log values (CURRENT_TIMESTAMP, 'Delete', 'Trip', @It_AT);
End$
delimiter ;


drop trigger keep_Log_Delete_reservation;
delimiter $
create trigger keep_Log_Delete_reservation
after delete on reservation
for each row 
Begin

	set @It_AT = 'Unknown';
	select IT_AT into @It_AT from IT_Logged_In Limit 1;
	insert into log values (CURRENT_TIMESTAMP, 'Delete', 'Reservation', @It_AT);
End$
delimiter ;


drop trigger keep_Log_Delete_event;
delimiter $
create trigger keep_Log_Delete_event
after delete on event
for each row 
Begin

	set @It_AT = 'Unknown';
	select IT_AT into @It_AT from IT_Logged_In Limit 1;
	insert into log values (CURRENT_TIMESTAMP, 'Delete', 'Event', @It_AT);
End$
delimiter ;


drop trigger keep_Log_Delete_travel_to;
delimiter $
create trigger keep_Log_Delete_travel_to
after delete on travel_to
for each row 
Begin

	set @It_AT = 'Unknown';
	select IT_AT into @It_AT from IT_Logged_In Limit 1;
	insert into log values (CURRENT_TIMESTAMP, 'Delete', 'Travel_to', @It_AT);
End$
delimiter ;


drop trigger keep_Log_Delete_destination;
delimiter $
create trigger keep_Log_Delete_destination
after delete on destination
for each row 
Begin

	set @It_AT = 'Unknown';
	select IT_AT into @It_AT from IT_Logged_In Limit 1;
	insert into log values (CURRENT_TIMESTAMP, 'Delete', 'Destination', @It_AT);
End$
delimiter ;



















/* Trigger -2- */

drop trigger prevent_update;
delimiter $
create trigger prevent_update /* αποτρέπει την αλλαγή της ημερομηνίας αναχώρησης, ημερομηνίας επιστροφής και του κόστους του ταξιδιού, αν έχουν ήδη γίνει κρατήσεις γι’ αυτό */

before update on trip
for each row
Begin
	declare reservation_count int;
	
	
	select count(*) into reservation_count
	from reservation
	where res_tr_id = New.tr_id;
	
	if reservation_count > 0 Then
		SIGNAL SQLSTATE '45000'
			set message_text = 'The date of Departure/Return and cost of trip cannot be updated because there are already booked reservations.';
	End if;
	
	
	
End$
delimiter ;











/* Trigger -3- */

drop trigger prevent_salary_reduction;
delimiter $
create trigger prevent_salary_reduction
before update on worker
for each row
Begin
	if New.wrk_salary < old.wrk_salary Then
		SIGNAL SQLSTATE '45000'
			set message_text = 'The decrease of the Salary cannot be done.';
	End if;
End$

delimiter ;


