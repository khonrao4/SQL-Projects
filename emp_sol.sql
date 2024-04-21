use etl1;
create table emp12 (id int,fname varchar(20),lname varchar(20),salary int, Gender varchar(20));
insert into emp12 
values(1,'Bhanu','Pratap',75,'M'),
(2,'Priya','Anand',80,'F'),
(3,'Savendra','Singh','85','M'),
(4,'Riya','Gupta','90','F'),
(5,'Komal','Joshi',80,'F'),
(6,'Supriya','Deshmukh',87,'f'),
(7,'Abhi','Sing',77,'M'),
(8,'Bhavesh','Sharma',66,'M'),
(9,'Tanu','Chauhan',85,'F'),
(10,'OM','Prakash',70,'M');

select * from emp12;

select salary from emp12;

select fname,salary from emp12;

select fname,salary from emp12 where salary>75;

select fname,lname,gender from emp12 where gender='f';

select * from emp12 where gender='M' and salary>75;

select * from emp12 where id in (1,3,5,6,8);

select * from emp12 where salary between 60 and 80;

select * from emp12 where fname='abhi' and 'Komal';

