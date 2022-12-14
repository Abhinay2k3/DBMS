create database LOCATION;
use LOCATION;
create table location(location_id int primary key,relational_group varchar(50));
select *from location;
insert into location values(122, 'newyork');
insert into location values(123,'dallas');
insert into location values(124, 'chicago');
insert into location values(167,'boston');
create table DEPARTMENT(department_id int, name varchar(50),location_id int primary key, foreign key(location_id) references location(location_id));
select *from DEPARTMENT;
insert into DEPARTMENT values(10,'accounting',122);
insert into DEPARTMENT values(20,'research',124);
insert into DEPARTMENT values(30,'sales',123);
insert into DEPARTMENT values(40,'operations',167);
create table job(job_id int primary key,function_ varchar(50));
select *from job;
insert into job values(667,'clerk');
insert into job values(668,'staff');
insert into job values(669,'analyst');
insert into job values(670,'salesperson');
insert into job values(671,'manager');
insert into job values(672,'president');
create table employe(employe_id int,last_name varchar(100),first_name varchar(100),middle_name varchar(100),job_id int, manager_id varchar(100), hiredate varchar(29), salary int,comm int, department_id int);
select *from employe;
insert into employe values(7369,'smith','john','q',667,7902,'17-10-84',800,null,20);
insert into employe values(7499,'allen','kevin','j',670,7698,'20-02-85',1600,300,30);
insert into employe values(7505,'doyle','jean','k',661,7839,'4-04-85',2850,null,30);
insert into employe values(7506,'dennis','lynn','s',671,7839,'15-05-85',2750,null,30);
insert into employe values(7507,'baker','leslie','d',671,7839,'10-06-85',4400,null,40);
insert into employe values(7521,'wark','cynthia','d',670,7698,'22-02-85',1250,500,30);
select *from employe;
select *from DEPARTMENT;
select *from job;
select *from location;
select *from employe where last_name='smith'
select *from employe;
select first_name,last_name,salary,comm from employe
select employe_id"id of the employe",last_name"name of the employe",department_id"Department ID" from employe
select last_name, salary*12 "annual salary" from employe
select *from employe where last_name='SMITH';
select *from employe where department_id=20
select *from employe where salary between 3000 and 4500
select *from employe where department_id in (20,30)
select last_name,salary,comm,department_id from employe where department_id not in (10,30)
select *from employe where last_name like 'S%'
select *from employe where last_name like 'S%H'
select *from employe where last_name like 'S___'
select *from employe where department_id=10 and salary>3500
select *from employe where comm is NULL
select employe_id,last_name from employe order by employe_id asc
select employe_id,last_name from employe order by salary desc
select *from employe order by last_name,salary desc
select *from employe order by last_name,department_id desc
select count(distinct department_id) from employe
select avg(salary), max(salary),min(salary) from employe order by department_id
select *from employe group by month(hiredate) order by hiredate
