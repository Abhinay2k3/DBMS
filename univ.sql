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
