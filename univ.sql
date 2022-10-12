create database univ
use univ
create table student(Id int not null primary key,name varchar(50) not null,gender varchar(30),course varchar(45));
insert into student values('4585','chaitanya','male','btech')
insert into student values('4586','ajay','male','btech')
select *from student
insert into student values('4587','lehari','female','btech')
insert into student values('4588','shamitha','female','btech')
insert into student values('4589','pallavi','female','btech')
create table course(course_id int not null primary key,name varchar(20) not null, id int,foreign key (id) references student(id));
select *from course
insert into course values('9547','btech','4585')
insert into course values('9548','btech','4586')
insert into course values('9549','btech','4587')
insert into course values('9550','btech','4588')
insert into course values('9551','btech','4589')
insert into course values('9552','btech','4585')
select *from course
create table faculty (fac_id int not null,name varchar(10))
insert into faculty values(2020,'gautham')
insert into faculty values(null,'anil')
select *from faculty
create table subject(sub_id int unique,credits int)
insert into subject values('93478','4')
insert into subject values('93479','4')
insert into subject values('93480','4')
insert into subject values('93481','4')
insert into subject values(null,'8')
select *from subject
create table worker(name varchar(50),age int check (age>=18))
insert into worker values('shamitha',19)
insert into worker values('mani',17)
insert into worker values('niharika',20)
select *from worker
