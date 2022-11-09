create database nagasiva;
show databases;
use nagasiva;
create table sailor3(sid integer(6) primary key,sname char(10),rating float(10),age integer(10));
desc sailor3;
insert into  sailor3 values('22','dustin','7','45.0');
insert into  sailor3 values('29','brustus','1','33.0');
insert into  sailor3 values('31','lauara','8','55.0');
insert into  sailor3 values('32','andy','8','25.5');
insert into  sailor3 values('58','rusty','10','35.5');
insert into  sailor3 values('64','horatio','7','35.0');
insert into  sailor3  values('71','zelda','10','16.0');
insert into  sailor3  values('74','horatio','9','35.0');
insert into  sailor3  values('85','amy','3','25.5');
insert into  sailor3 values('95','bob','3','63.5');
select *
from sailor3;
create table boat3(bid integer(10) primary key,bname char(10),colour char(10));
desc boat3;
insert into boat3 values('101','interlake','blue');
insert into boat3 values('102','interlake','red');
insert into boat3 values('103','clipper','green');
insert into boat3 values('104','marine','red');
select *
from boat3;
create table reserve4(sid integer(10),bid integer(10),day varchar(10),foreign key(sid) references sailor3(sid),foreign key(bid) references boat3(bid));
desc reserve4;
insert  into reserve4 values('22','101','1998-10-10');
insert  into reserve4 values('22','102','1998-10-10');
insert  into reserve4 values('22','103','1998-10-8');
insert  into reserve4 values('22','104','1998-10-7');
insert  into reserve4 values('31','102','1998-11-10');  
insert  into reserve4 values('31','103','1998-11-6');
insert  into reserve4 values('31','104','1998-11-12');
insert  into reserve4 values('64','101','1998-9-5');
insert  into reserve4 values('64','102','1998-9-8');
insert  into reserve4 values('74','103','1998-9-8');
select *
from reserve4;
select *
from sailor3
order by rating desc,age desc;
select *
from sailor3
order by rating desc,age asc;
select min(age) from sailor3
group by rating
order by rating;
select boat3.bid,count(*)
from sailor3,boat3,reserve4
where sailor3.sid=reserve4.sid and boat3.bid=reserve4.bid
group by boat3.bid
having count(*)>2
order by bid;
