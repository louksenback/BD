create table branch(

br_code int(11) not null auto_increment ,
br_street varchar(30) not null,
br_num int(4) not null,
br_city varchar(30) not null,

Primary key (br_code)
);



create table phones(

ph_br_code int(11) not null,
ph_number char(11) not null,

Primary key (ph_br_code, ph_number),

Constraint branch_telephone
Foreign key (ph_br_code) references branch (br_code)
on delete cascade on update cascade
);



/*Εδώ βάζουμε το ph_number 11 ψαρακτηρες για να υπαρχει το κενο αναμεσα στον κωδικο της πολης και το υπολοιπο τηλεφωνο.*/


create table worker(

wrk_AT char(10) not null,
wrk_name varchar(20) default 'Unknown' not null,
wrk_lname varchar(20) default 'Unknown' not null,
wrk_salary float(7,2) default '0' not null,
wrk_br_code int(11) not null,

Primary key (wrk_AT),

Constraint branch_worker
Foreign key (wrk_br_code) references branch (br_code)
on delete cascade on update cascade
);



create table admin(

adm_AT char(10) not null,
adm_type enum('LOGISTICS', 'ADMINISTRATIVE', 'ACCOUNTING') not null,
adm_diploma varchar(200) default 'Unknown',

Primary key (adm_AT),

Constraint admin_AT
Foreign key (adm_AT) references worker (wrk_AT)
on delete cascade on update cascade
);



create table manages(

mng_adm_AT char(10) not null,
mng_br_code int(11) not null,

Primary key (mng_adm_AT, mng_br_code),

Constraint manages_admin_AT 
Foreign key (mng_adm_AT) references admin (adm_AT)
on delete cascade on update cascade,

Constraint manages_branch_code
Foreign key (mng_br_code) references branch (br_code)
on delete cascade on update cascade
);



create table guide(

gui_AT char(10) not null,
gui_cv text,

Primary key (gui_AT),

Constraint guide_AT
Foreign key (gui_AT) references worker (wrk_AT)
on delete cascade on update cascade
);



create table languages(
lng_gui_AT char(10) not null,
lng_language varchar(30) default 'Unknown',

Primary key (lng_gui_AT, lng_language),

Constraint languages_guide_AT
Foreign key (lng_gui_AT) references guide (gui_AT)
on delete cascade on update cascade
);



create table driver(

drv_AT char(10) not null,
drv_license enum('A', 'B', 'C', 'D') not null,
drv_route enum('LOCAL', 'ABROAD') not null,
drv_experience tinyint(4) default '0' not null,

Primary key (drv_AT),

Constraint driver_AT
Foreign key (drv_AT) references worker (wrk_AT)
on delete cascade on update cascade
);



create table trip(

tr_id int(11) not null auto_increment,
tr_departure datetime not null,
tr_return datetime not null,
tr_maxseats tinyint not null,
tr_cost float(7,2) not null,
tr_br_code int(11) not null,
tr_gui_AT char(10) not null,
tr_drv_AT char(10) not null,

Primary key (tr_id),

Constraint trip_branch_code
Foreign key (tr_br_code) references branch (br_code)
on delete cascade on update cascade,

Constraint trip_guide_AT
Foreign key (tr_gui_AT) references guide (gui_AT)
on delete cascade on update cascade,

Constraint trip_driver_AT
Foreign key (tr_drv_AT) references driver (drv_AT)
on delete cascade on update cascade
);



create table event(

ev_tr_id int(11) not null,
ev_start datetime not null,
ev_end datetime not null,
ev_descr text not null,

Primary key (ev_tr_id, ev_start),

Constraint event_trip_id
Foreign key (ev_tr_id) references trip(tr_id)
on delete cascade on update cascade
);



create table destination(

dst_id int(11) not null,
dst_name varchar(50) default 'Unknown' not null,
dst_descr text not null,
dst_rtype enum('LOCAL', 'ABROAD') not null,
dst_language varchar(30) default 'Unknown' not null,
dst_location int(11) not null,

Primary key (dst_id),

constraint destination_location
foreign key(dst_location) references destination(dst_id)
on delete cascade on update cascade

);



create table travel_to(

to_tr_id int(11) not null,
to_dst_id int(11) not null,
to_arrival datetime not null,
to_departure datetime not null,

Primary key (to_tr_id, to_dst_id),

Constraint to_travel_id
Foreign key (to_tr_id) references trip (tr_id)
on delete cascade on update cascade,

Constraint to_destination_id
foreign key (to_dst_id) references destination (dst_id)
on delete cascade on update cascade


);


create table reservation(

res_tr_id int(11) not null,
res_seatnum tinyint(4) not null,
res_name varchar(20) default 'Unknown' not null,
res_lname varchar(20) default 'Unknown' not null,
res_isadult enum('ADULT', 'MINOR') not null,

Primary key (res_seatnum),

constraint reservation_trip_id
foreign key (res_tr_id) references trip(tr_id)
on delete cascade on update cascade
);



create table Log(

date_of_event datetime,
event_type char(10),
table_name char(10),
user_id int(10) not null, // Εδω πρεπει να φτιαχτει ενα key Που να συνδεει τον πινακα με το προσωπο που κανει τα updates

Unique(user_id)
);
 
