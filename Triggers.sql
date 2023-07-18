/* Trigger -1- */

/* Inserts */


delimiter $
create trigger keep_Log_Insert_trip
after insert on trip
for each row 
Begin
	insert into Log values (CURRENT_TIMESTAMP, 'Insert', 'Trip', 1);
End$
delimiter ;




delimiter $
create trigger keep_Log_Insert_reservation
after insert on reservation
for each row 
Begin
	insert into Log values (CURRENT_TIMESTAMP, 'Insert', 'Reservation', 1);
End$
delimiter ;



delimiter $
create trigger keep_Log_Insert_event
after insert on event
for each row 
Begin
	insert into Log values (CURRENT_TIMESTAMP, 'Insert', 'Event', 1);
End$
delimiter ;


delimiter $
create trigger keep_Log_Insert_travel_to
after insert on travel_to
for each row 
Begin
	insert into Log values (CURRENT_TIMESTAMP, 'Insert', 'Travel_to', 1);
End$
delimiter ;


delimiter $
create trigger keep_Log_Insert_destination
after insert on destination
for each row 
Begin
	insert into Log values (CURRENT_TIMESTAMP, 'Insert', 'Destination', 1);
End$
delimiter ;










/* Updates */

delimiter $
create trigger keep_Log_Update_trip
after update on trip
for each row
Begin
	insert into Log values (CURRENT_TIMESTAMP, 'Update', 'Trip', 1);
End$
delimiter ;


delimiter $
create trigger keep_Log_Update_reservation
after update on reservation
for each row
Begin
	insert into Log values (CURRENT_TIMESTAMP, 'Update', 'Reservation', 1);
End$
delimiter ;


delimiter $
create trigger keep_Log_Update_event
after update on event
for each row
Begin
	insert into Log values (CURRENT_TIMESTAMP, 'Update', 'Event', 1);
End$
delimiter ;


delimiter $
create trigger keep_Log_Update_travel_to
after update on travel_to
for each row
Begin
	insert into Log values (CURRENT_TIMESTAMP, 'Update', 'Travel_to', 1);
End$
delimiter ;


delimiter $
create trigger keep_Log_Update_destination
after update on destination
for each row
Begin
	insert into Log values (CURRENT_TIMESTAMP, 'Update', 'Destination', 1);
End$
delimiter ;









/* Deletes */

delimiter $
create trigger keep_Log_Delete_trip
after delete on trip
for each row 
Begin
	insert into log values (CURRENT_TIMESTAMP, 'Delete', 'Trip', 1);
End$
delimiter ;



delimiter $
create trigger keep_Log_Delete_reservation
after delete on reservation
for each row 
Begin
	insert into log values (CURRENT_TIMESTAMP, 'Delete', 'Reservation', 1);
End$
delimiter ;


delimiter $
create trigger keep_Log_Delete_event
after delete on event
for each row 
Begin
	insert into log values (CURRENT_TIMESTAMP, 'Delete', 'Event', 1);
End$
delimiter ;


delimiter $
create trigger keep_Log_Delete_travel_to
after delete on travel_to
for each row 
Begin
	insert into log values (CURRENT_TIMESTAMP, 'Delete', 'Travel_to', 1);
End$
delimiter ;


delimiter $
create trigger keep_Log_Delete_destination
after delete on destination
for each row 
Begin
	insert into log values (CURRENT_TIMESTAMP, 'Delete', 'Destination', 1);
End$
delimiter ;

