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
