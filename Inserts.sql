Branch

INSERT INTO branch (br_code, br_street, br_num, br_city) VALUES 
(1, 'Street1', 123, 'City1'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(2, 'Street2', 456, 'City2'),				/* Στο br_code μπαινει αυτοματα τιμή*/		
(3, 'Street3', 789, 'City3'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(4, 'Street4', 101, 'City4'),				/* Στο br_code μπαινει αυτοματα τιμή*/	
(5, 'Street5', 202, 'City5'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(6, 'Street6', 303, 'City6'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(7, 'Street7', 404, 'City7'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(8, 'Street8', 505, 'City8'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(9, 'Street9', 606, 'City9'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(10, 'Street10', 707, 'City10'),			/* Στο br_code μπαινει αυτοματα τιμή*/
(11, 'Street11', 808, 'City1'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(12, 'Street12', 909, 'City2'),				/* Στο br_code μπαινει αυτοματα τιμή*/		
(13, 'Street13', 111, 'City3'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(14, 'Street14', 222, 'City4'),				/* Στο br_code μπαινει αυτοματα τιμή*/	
(15, 'Street15', 333, 'City5'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(16, 'Street16', 444, 'City6'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(17, 'Street17', 555, 'City7'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(18, 'Street18', 666, 'City8'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(19, 'Street19', 777, 'City9'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(20, 'Street20', 888, 'City10'),			/* Στο br_code μπαινει αυτοματα τιμή*/
(21, 'Street21', 000, 'City1'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(22, 'Street22', 234, 'City2'),				/* Στο br_code μπαινει αυτοματα τιμή*/		
(23, 'Street23', 345, 'City3'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(24, 'Street24', 456, 'City4'),				/* Στο br_code μπαινει αυτοματα τιμή*/	
(25, 'Street25', 567, 'City5'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(26, 'Street26', 678, 'City6'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(27, 'Street27', 789, 'City7'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(28, 'Street28', 890, 'City8'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(29, 'Street29', 901, 'City9'),				/* Στο br_code μπαινει αυτοματα τιμή*/
(30, 'Street30', 012, 'City10');            		/* Στο br_code μπαινει αυτοματα τιμή*/










Phones

INSERT INTO phones (ph_br_code, ph_number) VALUES
(1, '1234567890'),
(2, '2345678901'),
(3, '3456789012'),
(4, '4567890123'),
(5, '5678901234'),
(6, '6789012345'),
(7, '7890123456'),
(8, '8901234567'),
(9, '9012345678'),
(10, '0011223344'),
(11, '1122334455'),
(12, '2233445566'),
(13, '3344556677'),
(14, '4455667788'),
(15, '5566778899'),
(16, '6677889900'),
(17, '7788990011'),
(18, '8899001122'),
(19, '9900112233'),
(20, '0001112223'),
(21, '1112223334'),
(22, '2223334445'),
(23, '3334445556'),
(24, '4445556667'),
(25, '5556667778'),
(26, '6667778889'),
(27, '7778889990'),
(28, '8889990001'),
(29, '9990001112'),
(30, '0000111122');


Worker

INSERT INTO worker (wrk_AT, wrk_name, wrk_lname, wrk_salary, wrk_br_code) VALUES
('AT1234567', 'John', 'Doe', 50000.00, 1),
('AT2345678', 'Alice', 'Smith', 55000.00, 2),
('AT3456789', 'Bob', 'Johnson', 48000.00, 3),
('AT4567890', 'Eva', 'Brown', 52000.00, 4),
('AT5678901', 'Michael', 'Wilson', 53000.00, 5),
('AT6789012', 'Sophia', 'Lee', 49000.00, 6),
('AT7890123', 'David', 'Hall', 51000.00, 7),
('AT8901234', 'Olivia', 'Young', 48000.00, 8),
('AT9012345', 'James', 'Clark', 54000.00, 9),
('AT0123456', 'Emma', 'Lewis', 56000.00, 10),
('AT1122334', 'Liam', 'Johnson', 48000.00, 5),
('AT2233445', 'Ava', 'Williams', 52000.00, 6),
('AT3344556', 'Noah', 'Brown', 50000.00, 7),
('AT4455667', 'Emma', 'Miller', 49000.00, 8),
('AT5566778', 'Oliver', 'Garcia', 53000.00, 9),
('AT6677889', 'Amelia', 'Martinez', 51000.00, 10),
('AT7788990', 'William', 'Robinson', 54000.00, 1),
('AT8899001', 'Sophia', 'Clark', 56000.00, 2),
('AT9900112', 'James', 'Lewis', 49000.00, 3),
('AT0011223', 'Isabella', 'Young', 55000.00, 4),
('AT0001112', 'Ethan', 'Davis', 48000.00, 5),
('AT1112223', 'Sophie', 'Johnson', 52000.00, 6),
('AT2223334', 'Alexander', 'Smith', 50000.00, 7),
('AT3334445', 'Grace', 'Brown', 49000.00, 8),
('AT4445556', 'Lucas', 'Garcia', 53000.00, 9),
('AT5556667', 'Aria', 'Martinez', 51000.00, 10),
('AT6667778', 'Henry', 'Robinson', 54000.00, 1),
('AT7778889', 'Zoe', 'Clark', 56000.00, 2),
('AT9990001', 'Carter', 'Lewis', 49000.00, 3),
('AT0000221', 'Lily', 'Young', 55000.00, 4),
('AX1111111', 'Dimitris', 'Papadopoulos', 48000.00, 5),
('AX2222222', 'Eleni', 'Konstantinou', 52000.00, 6),
('AX3333333', 'Giorgos', 'Andreadis', 50000.00, 7),
('AX4444444', 'Maria', 'Papandreou', 49000.00, 8),
('AX5555555', 'Nikos', 'Papadakis', 53000.00, 9),
('AX6666666', 'Sophia', 'Nikolaidou', 51000.00, 10),
('AX7777777', 'Alex', 'Antoniou', 54000.00, 1),
('AX8888888', 'Katerina', 'Papageorgiou', 56000.00, 2),
('AX9999999', 'Christos', 'Georgiou', 49000.00, 3),
('AX0000000', 'Eva', 'Michelakakis', 55000.00, 4),
('AX1122334', 'Athena', 'Papadopoulou', 48000.00, 5),
('AX2233445', 'Ilias', 'Konstantopoulos', 52000.00, 6),
('AX3344556', 'Julia', 'Andreas', 50000.00, 7),
('AX4455667', 'Kostas', 'Papadimitriou', 49000.00, 8),
('AX5566778', 'Lena', 'Papoutsaki', 53000.00, 9),
('AX6677889', 'Marios', 'Nikolopoulos', 51000.00, 10),
('AX7788990', 'Natalia', 'Antonopoulos', 54000.00, 1),
('AX8899001', 'Orestis', 'Papazoglou', 56000.00, 2),
('AX9900112', 'Panos', 'Georgiadis', 49000.00, 3),
('AX0011223', 'Qiana', 'Mitsotakis', 55000.00, 4),
('BB111111', 'Carlos', 'García', 48000.00, 5),
('BB222222', 'Beatriz', 'Martínez', 52000.00, 6),
('BB333333', 'Adrián', 'Fernández', 50000.00, 7),
('BB444444', 'Elena', 'López', 49000.00, 8),
('BB555555', 'Sergio', 'Rodríguez', 53000.00, 9),
('BB666666', 'María', 'Sánchez', 51000.00, 10),
('BB777777', 'Javier', 'Torres', 54000.00, 1),
('BB888888', 'Isabel', 'Díaz', 56000.00, 2),
('BB999999', 'Alejandro', 'Ruiz', 49000.00, 3),
('BB000000', 'Laura', 'Hernández', 55000.00, 4),
('BB111112', 'Diego', 'Herrera', 48000.00, 5),
('BB222223', 'Sofía', 'Pérez', 52000.00, 6),
('BB333334', 'Martín', 'Gómez', 50000.00, 7),
('BB444445', 'Camila', 'Díaz', 49000.00, 8),
('BB555556', 'Alejandro', 'López', 53000.00, 9),
('BB666667', 'Valentina', 'Martín', 51000.00, 10),
('BB777778', 'Joaquín', 'Castro', 54000.00, 1),
('BB888889', 'Lucía', 'Ortega', 56000.00, 2),
('BB999990', 'Gonzalo', 'Ramírez', 49000.00, 3),
('BB000001', 'Clara', 'Vargas', 55000.00, 4),

INSERT INTO worker (wrk_AT, wrk_name, wrk_lname, wrk_salary, wrk_br_code) VALUES      /* For Extra Drivers */
('CC000000', 'Carlos', 'Brown', 55000.00, 1),
('CC000001', 'Giwrgos', 'Kalathis', 35000.00, 2),
('CC000002', 'Maria', 'Triliva', 65000.00, 3),
('CC000003', 'Bassilis', 'Papandreou', 25000.00, 4),
('CC000004', 'Panagiotis', 'Poulos', 35000.00, 5),
('CC000005', 'Giannis', 'Mpatsikas', 50000.00, 6),
('CC000006', 'Xrhstos', 'Mpatsikas', 58000.00, 7),
('CC000007', 'Terel', 'Parks', 45000.00, 8),
('CC000008', 'Andreas', 'Mpourdoumis', 50000.00, 9);


('CC000009', 'Fwtis', 'Tsigdemoglou', 52000.00, 10);


Admin



insert into admin values ('BB777778', 'LOGISTICS', 'This worker has diploma for ADMINISTRATIVE at: University of salford.');		    /* Branch Code = 1*/
insert into admin values ('BB777777', 'ACCOUNTING', '');	                                                                            /* Branch Code = 1*/
insert into admin values ('AX7777777', 'ADMINISTRATIVE', '');	                                                                        /* Branch Code = 1*/

insert into admin values ('AX8899001', 'LOGISTICS', '');		                                                                        /* Branch Code = 2*/
insert into admin values ('BB888888', 'ACCOUNTING', '');	                                                                            /* Branch Code = 2*/	
insert into admin values ('AT8899001', 'ADMINISTRATIVE', '');	                                                                        /* Branch Code = 2*/

insert into admin values ('AT3456789', 'LOGISTICS', '');	                                                                            /* Branch Code = 3*/
insert into admin values ('AX9999999', 'ACCOUNTING', '');	                                                                            /* Branch Code = 3*/
insert into admin values ('AX9900112', 'ADMINISTRATIVE', '');	                                                                        /* Branch Code = 3*/

insert into admin values ('BB000001', 'ADMINISTRATIVE', '');	                                                                        /* Branch Code = 4*/
insert into admin values ('AX0011223', 'LOGISTICS', '');		                                                                        /* Branch Code = 4*/
insert into admin values ('AT4567890', 'ACCOUNTING', '');		                                                                        /* Branch Code = 4*/

insert into admin values ('AX1111111', 'ADMINISTRATIVE', '');		                                                                    /* Branch Code = 5*/
insert into admin values ('BB111111', 'LOGISTICS', '');			                                                                        /* Branch Code = 5*/
insert into admin values ('BB111112', 'ACCOUNTING', '');		                                                                        /* Branch Code = 5*/

insert into admin values ('AT2233445', 'ADMINISTRATIVE', '');			                                                                /* Branch Code = 6*/
insert into admin values ('BB222222', 'LOGISTICS', '');		                                                                            /* Branch Code = 6*/
insert into admin values ('BB222223', 'ACCOUNTING', '');			                                                                    /* Branch Code = 6*/

insert into admin values ('AT7890123', 'ADMINISTRATIVE', '');		                                                                    /* Branch Code = 7*/
insert into admin values ('AT3344556', 'LOGISTICS', '');			                                                                    /* Branch Code = 7*/
insert into admin values ('AT2223334', 'ACCOUNTING', '');			                                                                    /* Branch Code = 7*/

insert into admin values ('AT8901234', 'ADMINISTRATIVE', '');		                                                                    /* Branch Code = 8*/
insert into admin values ('AT4455667', 'LOGISTICS', '');			                                                                    /* Branch Code = 8*/
insert into admin values ('AT3334445', 'ACCOUNTING', '');		                                                                        /* Branch Code = 8*/

insert into admin values ('AT5566778', 'ADMINISTRATIVE', '');		                                                                    /* Branch Code = 9*/
insert into admin values ('AT4445556', 'LOGISTICS', '');		                                                                        /* Branch Code = 9*/
insert into admin values ('BB555555', 'ACCOUNTING', '');			                                                                    /* Branch Code = 9*/

insert into admin values ('AX6666666', 'ADMINISTRATIVE', '');		                                                                    /* Branch Code = 10*/
insert into admin values ('AX6677889', 'LOGISTICS', '');			                                                                    /* Branch Code = 10*/
insert into admin values ('AT6677889', 'ACCOUNTING', '');		                                                                        /* Branch Code = 10*/


Manages


insert into manages values ('AX7777777', 1);                /* */
insert into manages values ('AT8899001', 2);                /* */                
insert into manages values ('AX9900112', 3);                /* */
insert into manages values ('BB000001', 4);                 /* */
insert into manages values ('AX1111111', 5);                /* */
insert into manages values ('AT2233445', 6);                /* */
insert into manages values ('AT7890123', 7);                /* */
insert into manages values ('AT8901234', 8);                /* */
insert into manages values ('AT5566778', 9);                /* */
insert into manages values ('AX6666666', 10);               /* */


Guide


insert into guide values ('AT1234567', 'John Doe is from UK and knows everything about greek mythology.');                                  /* Guide for Branch = 1 */
insert into guide values ('AX8888888', 'Katerina Papageorgiou is from Salamina and has knowledge of most of the sightseeing in Greece.');   /* Guide for Branch = 2 */
insert into guide values ('BB999990', 'Gonzalo Ramírez is from Spain and loves the History behind greek islands.');                         /* Guide for Branch = 3 */
insert into guide values ('AX0000000', 'Eva Michelakakis');                                                                                 /* Guide for Branch = 4 */
insert into guide values ('AT1122334', 'Liam Johnson');                                                                                     /* Guide for Branch = 5 */
insert into guide values ('AT1112223', 'Sophie Johnson ');                                                                                  /* Guide for Branch = 6 */
insert into guide values ('AX3333333', 'Giorgos Andreadis');                                                                                /* Guide for Branch = 7 */
insert into guide values ('BB444444', 'Elena López');                                                                                       /* Guide for Branch = 8 */
insert into guide values ('AT9012345', 'James Clark');                                                                                      /* Guide for Branch = 9 */
insert into guide values ('AT5556667', 'Aria Martinez');                                                                                    /* Guide for Branch = 10 */


Languages

insert into languages values ('AT1234567', 'ENGLISH');  /* For Guide Branch=1 */
insert into languages values ('AX8888888', 'GREEK');    /* For Guide Branch=2 */
insert into languages values ('BB999990', 'SPANISH');   /* For Guide Branch=3 */
insert into languages values ('AX0000000', 'GREEK');    /* For Guide Branch=4 */
insert into languages values ('AT1122334', 'SPANISH');  /* For Guide Branch=5 */
insert into languages values ('AT1112223', 'SPANISH');  /* For Guide Branch=6 */
insert into languages values ('AX3333333', 'GREEK');    /* For Guide Branch=7 */
insert into languages values ('BB444444', 'SPANISH');   /* For Guide Branch=8 */
insert into languages values ('AT9012345', 'FRENCH');   /* For Guide Branch=9 */
insert into languages values ('AT5556667', 'GERMAN');   /* For Guide Branch=10 */



Driver

insert into driver values ('AX7788990', 'A', 'LOCAL', DEFAULT);          /* Driver for Branch = 1 */
insert into driver values ('AT7788990', 'B', 'ABROAD', DEFAULT);         /* Driver for Branch = 1 */
insert into driver values ('CC000000', 'D', 'ABROAD', DEFAULT);         /* Driver for Branch = 1 */

insert into driver values ('AT2345678', 'B', 'ABROAD', DEFAULT);         /* Driver for Branch = 2 */
insert into driver values ('AT7778889', 'C', 'LOCAL', DEFAULT);          /* Driver for Branch = 2 */
insert into driver values ('CC000001', 'D', 'LOCAL', DEFAULT);          /* Driver for Branch = 2 */

insert into driver values ('AT9900112', 'C', 'LOCAL', DEFAULT);          /* Driver for Branch = 3 */
insert into driver values ('AT9990001', 'A', 'ABROAD', DEFAULT);         /* Driver for Branch = 3 */
insert into driver values ('CC000002', 'D', 'ABROAD', DEFAULT);         /* Driver for Branch = 3 */

insert into driver values ('AT0011223', 'D', 'ABROAD', DEFAULT);         /* Driver for Branch = 4 */
insert into driver values ('BB000000', 'B', 'LOCAL', DEFAULT);           /* Driver for Branch = 4 */
insert into driver values ('CC000003', 'D', 'LOCAL', DEFAULT);           /* Driver for Branch = 4 */

insert into driver values ('AX1122334', 'A', 'LOCAL', DEFAULT);          /* Driver for Branch = 5 */
insert into driver values ('AT5678901', 'C', 'ABROAD', DEFAULT);         /* Driver for Branch = 5 */
insert into driver values ('CC000004', 'D', 'ABROAD', DEFAULT);         /* Driver for Branch = 5 */

insert into driver values ('AT6789012', 'B', 'ABROAD', DEFAULT);         /* Driver for Branch = 6 */
insert into driver values ('AX2233445', 'A', 'LOCAL', DEFAULT);          /* Driver for Branch = 6 */
insert into driver values ('CC000005', 'D', 'LOCAL', DEFAULT);          /* Driver for Branch = 6 */

insert into driver values ('AX3344556', 'C', 'LOCAL', DEFAULT);          /* Driver for Branch = 7 */
insert into driver values ('BB333333', 'B', 'ABROAD', DEFAULT);          /* Driver for Branch = 7 */
insert into driver values ('CC000006', 'D', 'ABROAD', DEFAULT);          /* Driver for Branch = 7 */

insert into driver values ('BB444445', 'D', 'ABROAD', DEFAULT);          /* Driver for Branch = 8 */
insert into driver values ('AX4444444', 'C', 'LOCAL', DEFAULT);          /* Driver for Branch = 8 */
insert into driver values ('CC000007', 'D', 'LOCAL', DEFAULT);          /* Driver for Branch = 8 */

insert into driver values ('AX5555555', 'A', 'LOCAL', DEFAULT);          /* Driver for Branch = 9 */
insert into driver values ('AX5566778', 'A', 'ABROAD', DEFAULT);         /* Driver for Branch = 9 */
insert into driver values ('CC000008', 'D', 'ABROAD', DEFAULT);         /* Driver for Branch = 9 */

insert into driver values ('BB666666', 'B', 'ABROAD', DEFAULT);          /* Driver for Branch = 10 */
insert into driver values ('BB666667', 'B', 'LOCAL', DEFAULT);           /* Driver for Branch = 10 */


Trip

insert into trip values (1, '2022-01-01 12:30:00', '2022-01-10 12:30:00', 15, 800, 1, 'AT1234567', 'AX7788990');            /* Branch = 1 LOCAL */
insert into trip values (2, '2022-01-15 12:30:00', '2022-01-25 12:30:00', 20, 1000, 1, 'AT1234567', 'AT7788990');           /* Branch = 1 ABROAD */
insert into trip values (3, '2022-01-01 12:30:00', '2022-01-10 12:30:00', 35, 1200, 2, 'AX8888888', 'AT2345678');           /* Branch = 2 LOCAL */
insert into trip values (4, '2022-01-15 12:30:00', '2022-01-25 12:30:00', 50, 1500, 2, 'AX8888888', 'AT7778889');           /* Branch = 2 ABROAD */
insert into trip values (5, '2022-01-03 13:30:00', '2022-01-09 13:30:00', 50, 900, 3, 'BB999990', 'AT9900112');             /* Branch = 3 LOCAL */
insert into trip values (6, '2022-01-13 13:30:00', '2022-01-17 13:30:00', 25, 400, 3, 'BB999990', 'AT9990001');             /* Branch = 3 ABROAD */
insert into trip values (7, '2022-01-20 13:30:00', '2022-01-25 13:30:00', 50, 500, 4, 'AX0000000', 'BB000000 ');            /* Branch = 4 LOCAL */       
insert into trip values (8, '2022-01-27 13:30:00', '2022-01-31 13:30:00', 40, 500, 4, 'AX0000000', 'AT0011223');            /* Branch = 4 ABROAD */
insert into trip values (9, '2022-02-07 13:00:00', '2022-02-14 13:00:00', 35, 1500, 5, 'AT1122334', 'AX1122334');           /* Branch = 5 LOCAL */
insert into trip values (10, '2022-02-20 13:30:00', '2022-02-28 13:30:00', 20, 1600, 5, 'AT1122334', 'AT5678901');          /* Branch = 5 ABROAD */
insert into trip values (11, '2022-02-05 13:30:00', '2022-02-10 13:30:00', 15, 600, 6, 'AT1112223', 'AX2233445');           /* Branch = 6 LOCAL */
insert into trip values (12, '2022-01-25 13:30:00', '2022-01-31 13:30:00', 50, 1000, 6, 'AT1112223', 'AT6789012');          /* Branch = 6 ABROAD */
insert into trip values (13, '2022-01-01 13:30:00', '2022-01-15 13:30:00', 25, 2000, 7, 'AX3333333', 'AX3344556');          /* Branch = 7 LOCAL */
insert into trip values (14, '2022-01-18 13:30:00', '2022-01-24 13:30:00', 45, 1500, 7, 'AX3333333', 'BB333333');           /* Branch = 7 ABROAD */
insert into trip values (15, '2022-03-15 13:30:00', '2022-03-20 13:30:00', 50, 800, 8, 'BB444444', 'AX4444444 ');           /* Branch = 8 LOCAL */
insert into trip values (16, '2022-02-20 13:30:00', '2022-02-28 13:30:00', 50, 1500, 8, 'BB444444', 'BB444445');            /* Branch = 8 ABROAD */
insert into trip values (17, '2022-04-11 13:30:00', '2022-04-17 13:30:00', 50, 1000, 9, 'AT9012345', 'AX5555555');          /* Branch = 9 LOCAL */
insert into trip values (18, '2022-01-31 13:30:00', '2022-02-05 13:30:00', 50, 1100, 9, 'AT9012345', 'AX5566778');          /* Branch = 9 ABROAD */
insert into trip values (19, '2022-06-01 13:30:00', '2022-06-11 13:30:00', 50, 2100, 10, 'AT5556667', 'BB666667 ');         /* Branch = 10 LOCAL */
insert into trip values (20, '2022-07-14 13:30:00', '2022-07-20 13:30:00', 50, 800, 10, 'AT5556667', 'BB666666');           /* Branch = 10 ABROAD */


Destination

Ελλάδα: 1000 (Ότι ξεκινάει με 1 θα ανήκει στον μεγάλο προορισμό Ελλάδα).
Ισπανία: 2000 (Ότι ξεκινάει με 2 θα ανήκει στον μεγάλο προορισμό Ισπανία).
Ιταλία: 3000 (Ότι ξεκινάει με 3 θα ανήκει στον μεγάλο προορισμό Ιταλία).


insert into destination(dst_id, dst_name, dst_descr, dst_rtype, dst_language, dst_location) values
(1000, 'Greece', 'Local Destination', 'LOCAL', 'GREEK', 1000),                  /* Pateras Destination 1000 */
(1001, 'Ioannina', 'Trip to the city of Ioannina.', 'LOCAL', 'GREEK', 1000),    /* Destination tou patera location 1000 */
(1002, 'Nauplio', 'Trip to the city of Nauplio.', 'LOCAL', 'GREEK', 1000),      /* Destination tou patera location 1000 */
(2000, 'Spain', 'Abroad Destination', 'ABROAD', 'ENGLISH', 2000),               /* Pateras Destination 2000 */
(2001, 'Seville', 'Visit the beautiful Seville!!', 'ABROAD', 'ENGLISH', 2000),  /* Destination tou patera location 2000 */
(2002, 'Madrid', 'Visit the beautiful Madrid!', 'ABROAD', 'ENGLISH', 2000),     /* Destination tou patera location 2000 */
(3000, 'Italy', 'Abroad Destination', 'ABROAD', 'ENGLISH', 3000),               /* Pateras Destination 3000 */               
(3001, 'Volcano', 'Visit the volcano of Italy!', 'ABROAD', 'ENGLISH', 3000),      /* Destination tou patera location 3000 */
(3002, 'Rome', 'Visit Rome!!', 'ABROAD', 'ENGLISH', 3000);                     /* Destination tou patera location 3000 */






Travel_to

insert into travel_to(to_tr_id, to_dst_id, to_departure, to_return) values
(1, 1000, '2022-01-01 12:30:00', '2022-01-10 12:30:00'),   /* travel_to Pateras Destination 1000 (Dhladh Greece)*/
(3, 1001, '2022-01-04 12:30:00', '2022-01-10 12:30:00'),   /* travel_to Destination Ioannina (1001) */
(5, 1002, '2022-01-05 13:30:00', '2022-01-08 13:30:00'),   /* travel_to Destination Nauplio (1002) */
(2, 2000, '2022-01-15 12:30:00', '2022-01-25 12:30:00'),   /* travel_to Pateras Destination 2000 (Dhladh Spain)*/
(4, 2001, '2022-01-20 12:30:00', '2022-01-25 12:30:00'),   /* travel_to Destination Sevilla (2001) */
(6, 2002, '2022-01-13 13:30:00', '2022-01-17 13:30:00'),   /* travel_to Destination Madrid (2002) */
(8, 3000, '2022-01-27 13:30:00', '2022-01-31 13:30:00'),   /* travel_to Pateras Destination 3000 (Dhladh Italy)*/
(10, 3001,'2022-02-23 13:30:00', '2022-02-28 13:30:00'),   /* travel_to Destination 3001 (Dhladh volcano)*/
(12, 3002,'2022-01-25 13:30:00', '2022-01-31 13:30:00');   /* travel_to Destination 3002 (Dhladh Rome)*/


Event 

insert into event(ev_tr_id, ev_start, ev_end, ev_descr) values
(3, '2022-01-05 12:30:00', '2022-01-05 14:30:00', 'Visit the Castle of Ioannina.'),           /* Event for trip connected to Destination Ioannina */
(3, '2022-01-06 13:00:00', '2022-01-06 15:00:00', 'Visit the Museum of Ancient History.'),    /* Event for trip connected to Destination Ioannina */
(3, '2022-01-07 10:00:00', '2022-01-07 12:00:00', 'Visit the Cave of Perama.'),               /* Event for trip connected to Destination Ioannina */
(6, '2022-01-14 10:00:00', '2022-01-14 12:00:00', 'Visit the Santiago Bernabeu Stadium.'),    /* Event for trip connected to Destination Madrid */      
(6, '2022-01-14 13:00:00', '2022-01-14 15:00:00', 'Launch Break.'),                           /* Event for trip connected to Destination Madrid */
(10, '2022-02-24 11:30:00', '2022-02-24 14:30:00' , 'Volcano Visit'),                         /* Event for trip connected to Destination Volcano */
(10, '2022-02-24 14:30:00', '2022-02-24 16:30:00' , 'Launch Break');                          /* Event for trip connected to Destination Volcano */


Reservation


insert into reservation (res_tr_id, res_seatnum, res_name, res_lname, res_lsadult) values
(3, 3, 'Loukas', 'Christidis', 'ADULT'),            /* Reservation for the trip going to Ioannina ( res_tr_id = 3 = to_tr_id) */
(3, 4, 'Giwrgos', 'Christidis', 'ADULT'),           /* Reservation for the trip going to Ioannina ( res_tr_id = 3 = to_tr_id) */
(3, 5, 'Fanhs', 'Christidis', 'MINOR'),             /* Reservation for the trip going to Ioannina ( res_tr_id = 3 = to_tr_id) */
(3, 6, 'Alexios', 'Christidis', 'MINOR'),           /* Reservation for the trip going to Ioannina ( res_tr_id = 3 = to_tr_id) */
(5, 1, 'Panagiotis', 'Oikonomou', 'MINOR'),         /* Reservation for the trip going to Nauplio ( res_tr_id = 5 = to_tr_id) */
(5, 2, 'Bassilis', 'Oikonomou', 'ADULT'),           /* Reservation for the trip going to Nauplio ( res_tr_id = 5 = to_tr_id) */
(4, 25, 'Konstantinos', 'Papadopoulos', 'ADULT'),   /* Reservation for the trip going to Sevilla ( res_tr_id = 4 = to_tr_id) */
(4, 27, 'Eleni', 'Papadopoulou', 'ADULT'),          /* Reservation for the trip going to Sevilla ( res_tr_id = 4 = to_tr_id) */
(4, 28, 'Gewrgios', 'Gewrgiou', 'MINOR'),           /* Reservation for the trip going to Sevilla ( res_tr_id = 4 = to_tr_id) */
(10, 19, 'Athanasios', 'Athanasiou', 'ADULT');      /* Reservation for the trip going to Volcano ( res_tr_id = 10 = to_tr_id) */


Offers

insert into offers(offers_id, offers_starting, offers_ending, offers_costPerPerson, offers_dst_id) values
(100, '2022-08-31 12:00:00', '2022-09-30 23:59:59', 1500, 1001),    /* This Offer has unique offers_id = 100, starts at 31 August and ends at 30 September and is for destination Ioannina ( dst_id = 1001)*/
(101, '2022-04-30 12:00:00', '2022-05-31 23:59:59', 2500, 1002),    /* This Offer has unique offers_id = 101, starts at 30 April and ends at 31 May and is for destination Nauplio ( dst_id = 1002)*/
(102, '2022-01-01 12:00:00', '2022-12-31 23:59:59', 4000, 2001),    /* This Offer has unique offers_id = 102, starts at 1 January and ends at 31 December and is for destination Sevilla ( dst_id = 2001)*/
(103, '2022-01-01 12:00:00', '2022-12-31 23:59:59', 4000, 2002),    /* This Offer has unique offers_id = 103, starts at 1 January and ends at 31 December and is for destination Madrid ( dst_id = 2002)*/
(104, '2022-02-01 12:00:00', '2022-05-31 23:59:59', 1500, 3001),    /* This Offer has unique offers_id = 104, starts at 1 February and ends at 31 May and is for destination Volcano ( dst_id = 3001)*/
(105, '2022-08-15 12:00:00', '2022-10-25 23:59:59', 1600, 3002);    /* This Offer has unique offers_id = 105, starts at 15 August and ends at 25 October and is for destination Rome ( dst_id = 3002)*/



Reservation Offers

insert into reservation_offers(reservation_offer_id, lname, fname, offers_id, prePurch) values
(10000, 'Kollosis', 'Alexandros', 100, 100),            /* This Reservation Offer has unique reservation_offer_id = 10000,  offers_id = 100 (dhladh gia to offer sta Ioannina pou exoume parapanw) */
(10001, 'Karpas', 'Alexandros', 101, 100),              /* This Reservation Offer has unique reservation_offer_id = 10001,  offers_id = 101 (dhladh gia to offer sto Nauplio pou exoume parapanw) */
(10002, 'Karpas', 'Athanasios', 101, 100),              /* This Reservation Offer has unique reservation_offer_id = 10002,  offers_id = 101 (dhladh gia to offer sto Nauplio pou exoume parapanw) */
(10003, 'Koutsogewrgiou', 'Anastasis', 101, 100),       /* This Reservation Offer has unique reservation_offer_id = 10003,  offers_id = 101 (dhladh gia to offer sto Nauplio pou exoume parapanw) */
(10004, 'Euthimakis', 'Dimitrios', 102, 150),           /* This Reservation Offer has unique reservation_offer_id = 10004,  offers_id = 102 (dhladh gia to offer sto Sevilla pou exoume parapanw) */
(10005, 'Papandreou', 'Giwrgos', 102, 150),             /* This Reservation Offer has unique reservation_offer_id = 10005,  offers_id = 102 (dhladh gia to offer sto Sevilla pou exoume parapanw) */
(10006, 'Mitsotakis', 'Orestis', 102, 150),             /* This Reservation Offer has unique reservation_offer_id = 10006,  offers_id = 102 (dhladh gia to offer sto Sevilla pou exoume parapanw) */
(10007, 'Papadouris', 'Nikolaos', 103, 200),            /* This Reservation Offer has unique reservation_offer_id = 10007,  offers_id = 103 (dhladh gia to offer sto Madrid pou exoume parapanw) */
(10008, 'Stereou', 'Eleni', 103, 200),                  /* This Reservation Offer has unique reservation_offer_id = 10008,  offers_id = 103 (dhladh gia to offer sto Madrid pou exoume parapanw) */
(10009, 'Christidis', 'Nikolaos', 103, 200),            /* This Reservation Offer has unique reservation_offer_id = 10009,  offers_id = 103 (dhladh gia to offer sto Madrid pou exoume parapanw) */
(10010, 'Christidis', 'Giwrgos', 103, 200),             /* This Reservation Offer has unique reservation_offer_id = 10010,  offers_id = 103 (dhladh gia to offer sto Madrid pou exoume parapanw) */
(10011, 'Karpas', 'Eutixios', 104, 150),                /* This Reservation Offer has unique reservation_offer_id = 10011,  offers_id = 104 (dhladh gia to offer sto Volcano pou exoume parapanw) */
(10012, 'Kogkos', 'Andreas', 104, 150),                 /* This Reservation Offer has unique reservation_offer_id = 10012,  offers_id = 104 (dhladh gia to offer sto Volcano pou exoume parapanw) */
(10013, 'Kogkos', 'Aristofanis', 104, 150),             /* This Reservation Offer has unique reservation_offer_id = 10013,  offers_id = 104 (dhladh gia to offer sto Volcano pou exoume parapanw) */
(10014, 'Tsironis', 'Anastasios', 105, 300),            /* This Reservation Offer has unique reservation_offer_id = 10014,  offers_id = 105 (dhladh gia to offer sto Rome pou exoume parapanw) */
(10015, 'Tsironis', 'Gewrgios', 105, 300),              /* This Reservation Offer has unique reservation_offer_id = 10015,  offers_id = 105 (dhladh gia to offer sto Rome pou exoume parapanw) */
(10016, 'Tsironi', 'Anna', 105, 300);                   /* This Reservation Offer has unique reservation_offer_id = 10016,  offers_id = 105 (dhladh gia to offer sto Rome pou exoume parapanw) */



IT 

insert into it(IT_AT, password, start_date, end_date) values
('AT6667778', 'pass1', '2021-01-01 23:59:59', DEFAULT),                /* IT for branch 1 using password = pass1 to login, end_date is DEFAULT cause noone is fired or left the job */
('BB888889', 'pass2', '2021-01-01 23:59:59', DEFAULT),                 /* IT for branch 2 using password = pass2 to login, end_date is DEFAULT cause noone is fired or left the job */
('BB999999', 'pass3', '2021-01-01 23:59:59', DEFAULT),                 /* IT for branch 3 using password = pass3 to login, end_date is DEFAULT cause noone is fired or left the job */
('AT0000221', 'pass4', '2021-01-01 23:59:59', DEFAULT),                /* IT for branch 4 using password = pass4 to login, end_date is DEFAULT cause noone is fired or left the job */
('AT0001112', 'pass5', '2021-01-01 23:59:59', DEFAULT),                /* IT for branch 5 using password = pass5 to login, end_date is DEFAULT cause noone is fired or left the job */
('AX2222222', 'pass6', '2021-01-01 23:59:59', DEFAULT),                /* IT for branch 6 using password = pass6 to login, end_date is DEFAULT cause noone is fired or left the job */
('BB333334', 'pass7', '2021-01-01 23:59:59', DEFAULT),                 /* IT for branch 7 using password = pass7 to login, end_date is DEFAULT cause noone is fired or left the job */
('AX4455667', 'pass8', '2021-01-01 23:59:59', DEFAULT),                /* IT for branch 8 using password = pass8 to login, end_date is DEFAULT cause noone is fired or left the job */
('BB555556', 'pass9', '2021-01-01 23:59:59', DEFAULT),                 /* IT for branch 9 using password = pass9 to login, end_date is DEFAULT cause noone is fired or left the job */
('AT0123456', 'pass10', '2021-01-01 23:59:59', DEFAULT);               /* IT for branch 10 using password = pass10 to login, end_date is DEFAULT cause noone is fired or left the job */

