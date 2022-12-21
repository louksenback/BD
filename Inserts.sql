BRANCH

insert into branch values (NULL, 'Gerokwstopoulou', 9910, 'Patras');
insert into branch values (NULL, 'Agiou Andreou', 9911, 'Patras');
insert into branch values (Null, 'Kwnstantinoupolews', 9912, 'Patras');
insert into branch values (Null, 'korinthou', 9913, 'Patras');
insert into branch values (Null, 'Agiou Nikoaou', 9914, 'Patras');
insert into branch values (Null, 'Ermou', 9915, 'Patras');
insert into branch values (Null, 'Maizwnos', 9916, 'Patras');
insert into branch values (Null, 'Karaiskakh', 9917, 'Patras');
insert into branch values (Null, 'Aratou', 9918, 'Patras');
insert into branch values (Null, 'Gounarh', 9919, 'Patras');

PHONES

insert into phones values (1, '2610 920470');
insert into phones values (2, '2610 811361');
insert into phones values (3, '2610 700252');
insert into phones values (4, '2610 632122');
insert into phones values (5, '2610 591287');
insert into phones values (6, '2610 419230');
insert into phones values (7, '2610 339587');
insert into phones values (8, '2610 250391');
insert into phones values (9, '2610 153097');
insert into phones values (10, '2610 012987');

WORKER

insert into worker values ('AM 990011', 'IWANNIS', 'ALEXANDROU', 650, 1);
insert into worker values ('BD 880022', 'DIMITRIOS', 'GEORGAKOPOULOS', 750, 1);         
insert into worker values ('GA 770033', 'GEWRGIOS', 'BAXEBANIS', 1000, 1);

insert into worker values ('SZ 661100', 'SPYRIDWN', 'IWANNOU', 1100, 2);
insert into worker values ('AN 552200', 'PANAGIOTHS', 'GEWRGIOU', 450, 2);
insert into worker values ('RT 443300', 'LOUKAS', 'SHMOPOULOS', 400, 2);

insert into worker values ('KB 334400', 'AGGELIKH', 'ZHSIMOPOULOU', 655.37 , 3);
insert into worker values ('SA 225500', 'ATHANASIA', 'NAVARINOU', 736.42 , 3);
insert into worker values ('FM 116600', 'MANWLHS', 'PAPAPANAGIWTOU', 983.26 , 3);

insert into worker values ('PR 007711', 'KATERINA', 'NIKOLAOU', 600, 4);
insert into worker values ('PR 117711', 'KALLIOPI', 'PAPADOPOULOU', 600, 4);
insert into worker values ('BR 901130', 'ANDREAS', 'GEWRGIOU', 650, 4);

insert into worker values ('AP 097015', 'ANASTASIOS', 'GEWRGOBASSIOPOULOS', 600, 5);
insert into worker values ('PE 089614', 'NIKOLIA', 'TSERPA', 600, 5);
insert into worker values ('MP 871240', 'ANNA', 'SPYRIDWNIDOU', 600, 5);

insert into worker values ('OP 123456', 'DIMITRIOS', 'MAMOULIS', 600, 6);
insert into worker values ('EM 400000', 'DIMITRIOS', 'EUTHIMAKIS', 1500, 6);
insert into worker values ('AK 470000', 'NIKOLAOS', 'KROUSKAS', 600, 6);

insert into worker values ('AU 700000', 'ATHANASIOS', 'MANTZARIS', 200, 7);
insert into worker values ('GT 005000', 'GEWRGIOS', 'SIDERIS', 500, 7);

ADMIN

insert into admin values ('AM 990011', 'ADMINISTRATIVE', 'This worker has diploma for ADMINISTRATIVE at: University of salford.');
insert into admin values ('SZ 661100', 'ADMINISTRATIVE', 'This worker has diploma for ADMINISTRATIVE at: University of Macedonia.');
insert into admin values ('KB 334400', 'ADMINISTRATIVE', 'This worker has diploma for ADMINISTRATIVE at: University of Macedonia.');
insert into admin values ('PR 007711', 'ADMINISTRATIVE', 'This worker has diploma for ADMINISTRATIVE at: University of Athens.');
insert into admin values ('AP 097015', 'ADMINISTRATIVE', 'This worker has diploma for ADMINISTRATIVE at: University of Athens.');
insert into admin values ('OP 123456', 'ADMINISTRATIVE', 'This worker has diploma for ADMINISTRATIVE at: University of Athens.');
insert into admin values ('AU 700000', 'ADMINISTRATIVE', 'This worker has diploma for ADMINISTRATIVE at: University of Athens.');

MANAGES

insert into manages values ('AM 990011', 1);
insert into manages values ('SZ 661100', 2);
insert into manages values ('KB 334400', 3);
insert into manages values ('PR 007711', 4);
insert into manages values ('AP 097015', 5);
insert into manages values ('OP 123456', 6);
insert into manages values ('AU 700000', 7);

GUIDE

insert into guide values ('BD 880022', 'O Dimitrios Georgakopoulos einai gennhmenos to 1990. Exei plhrh gnwsh geografias.');
insert into guide values ('AN 552200', 'O Panagioths Gewrgiou einai gennhmenos to 1997. Exei plhrh gnwsh geografias.');
insert into guide values ('SA 225500', 'H Athanasia Navarinou einai gennhmenh to 1985. Exei gnwsh arxaias istorias kai gewgrafias. Exei doulepsei me thn trivago kai exei terastia empeiria ston xwro.');
insert into guide values ('EM 400000', 'O Dimitrios Euthimakis einai gennhmenos to 1990. Exei plhrh gnwsh geografias.');
insert into guide values ('GT 005000', 'O Gewrgios Sideris einai gennhmenos to 1987. Einai arketa empeiros ston xwro tou tourismou kai twn ksenaghsewn.');

LANGUAGES

insert into languages values ('BD 880022', 'Ispanika');
insert into languages values ('AN 552200', 'Gallika');
insert into languages values ('SA 225500', 'Agglika');
insert into languages values ('EM 400000', 'Kinezika');
insert into languages values ('GT 005000', 'Ellinika');

DRIVER

insert into driver values ('GA 770033', 'A', 'LOCAL', 3);
insert into driver values ('RT 443300', 'B', 'ABROAD', 3);
insert into driver values ('FM 116600', 'C', 'LOCAL', 3);
insert into driver values ('BR 901130', 'A', 'ABROAD', 4);
insert into driver values ('MP 871240', 'D', 'LOCAL', 5);

TRIP

insert into trip values (Null, '2022-12-31 12:35:00', '2023-01-06 12:35:00', 1, 600, 1, 'BD 880022', 'GA 770033');
insert into trip values (Null, '2022-12-25 13:30:00', '2023-01-08 12:35:00', 4, 300, 2, 'AN 552200', 'RT 443300');
insert into trip values (Null, '2023-02-28 14:30:00', '2023-03-02 12:35:00', 8, 600, 3, 'SA 225500', 'FM 116600');
insert into trip values (Null, '2022-12-31 15:30:00', '2023-01-06 12:35:00', 1, 600, 4, 'EM 400000', 'BR 901130');
insert into trip values (Null, '2022-12-31 11:30:00', '2023-01-06 12:35:00', 48, 600, 5, 'GT 005000', 'MP 871240');

EVENT

insert into event values (1, '2023-1-1 11:00:00', '2023-1-1 14:00:00', 'Episkepsh sthn akropolh.');
insert into event values (1, '2022-12-27 11:00:00', '2022-12-27 14:00:00', 'Episkepsh sthn akropolh.');
insert into event values (1, '2023-3-1 11:00:00', '2023-3-1 14:00:00', 'Episkepsh sthn akropolh.');
insert into event values (1, '2023-1-3 11:00:00', '2023-1-3 14:00:00', 'Episkepsh sthn akropolh.');
insert into event values (1, '2023-1-2 11:00:00', '2023-1-2 14:00:00', 'Episkepsh sthn akropolh.');


DESTINATION

Ακροπολη ID: 1000
Ναυπλιο ID: 1001
Αρχαιολογικο μουσειο πατρας ID: 1002
Μονεμβασια ID: 1003

insert into destination values (1000, 'Athina', 'Arxaiologiko Mouseio Akropolis', 'LOCAL', 'ELLHNIKA', 1000);
insert into destination values (1001, 'Nauplio', 'H omorfh polh tou Naupliou', 'LOCAL', 'ELLHNIKA', 1001);
insert into destination values (1002, 'Patra', 'Arxaiologiko Mouseio Patrwn', 'LOCAL', 'ELLHNIKA', 1002);
insert into destination values (1003, 'Monembasia', 'To panemorfo topio ths monembasias', 'LOCAL', 'ELLHNIKA', 1003);

TRAVEL_TO

insert into travel_to values (1, 1000, '2022-12-31 15:35:00', '2023-01-06 15:35:00');
insert into travel_to values (2, 1000, '2022-12-27 14:00:00', '2023-01-06 18:35:00');
insert into travel_to values (3, 1001, '2023-3-1 15:00:00', '2023-3-1 18:00:00');
insert into travel_to values (4, 1002, '2023-1-3 11:00:00', '2023-1-3 14:00:00');
insert into travel_to values (5, 1003, '2022-12-31 18:35:00', '2023-01-06 19:35:00');

RESERVATION

insert into reservation values (1, 1, 'Dimitrios', 'Euaggelou', 'ADULT');
insert into reservation values (2, 2, 'Xaralampos', 'Mpompos', 'ADULT');
insert into reservation values (3, 6, 'Eugenia', 'Samara', 'ADULT');
insert into reservation values (4, 1, 'Alexandros', 'Kollwshs', 'ADULT');
insert into reservation values (1, 45, 'Paulos', 'Kexrimparhs', 'MINOR');
