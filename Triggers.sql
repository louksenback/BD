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




















/* Trigger -2- */

delimiter $
create trigger prevent_update /* αποτρέπει την αλλαγή της ημερομηνίας αναχώρησης, ημερομηνίας επιστροφής και του κόστους του ταξιδιού, αν έχουν ήδη γίνει κρατήσεις γι’ αυτό */

before update on trip
for each row
Begin
	declare reservation_count int;
	
	/* Έλεγχος αν υπάρχουν κρατήσεις για το ταξίδι με την νέα ημερομηνία αναχώρησης */
	select count(*) into reservation_count
	from trip
	where tr_id = New.tr_id AND tr_departure <> New.tr_departure;
	
	if reservation_count > 0 Then
		SIGNAL SQLSTATE '45000'
			set message_text = 'Η ημερομηνία αναχώρησης δεν μπορεί να αλλάξει λόγω υπαρχουσών 				κρατήσεων.';
	End if;
	
	/* Έλεγχος αν υπάρχουν κρατήσεις για το ταξίδι με τη νέα ημερομηνία επιστροφής */
	
	select count(*) into reservation_count
	from trip
	where tr_id = New.tr_id AND tr_return <> New.tr_return;

	if reservation_count > 0 Then
		SIGNAL SQLSTATE '45000'
			set message_text = 'Η ημερομηνία επιστροφής δεν μπορεί να αλλάξει λόγω υπαρχουσών 				κρατήσεων.';
	End if;

	/*  Έλεγχος αν υπάρχουν κρατήσεις για το ταξίδι με το νέο κόστος  */
	select count(*) into reservation_count
	from trip
	where tr_id = New.tr_id AND tr_cost <> New.tr_cost;

	if reservation_count > 0 Then
		SIGNAL SQLSTATE '45000'
			set message_text ='Το κόστος του ταξιδιού δεν μπορεί να αλλάξει λόγω υπαρχουσών 				κρατήσεων.';
	End if;
	
End$
delimiter ;
