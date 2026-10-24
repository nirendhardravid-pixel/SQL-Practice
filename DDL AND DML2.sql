DDL(data definition language)
1.create 
2.alter 
3.drop
4.truncate

DML(data manipulation language)
1.insert
2.update 
3.delete 
4.select

data type
->int(Max 7 numbers)
->BIGINT
->Char(Max 7 char)
->VARCHAR
->Decimal
->date 
->datetime
->time
->json


create table student(student_id int,
                     student_name VARCHAR(250),
                     Course VARCHAR(250),
                     Phone_number int);

insert into student(student_id,student_name,Course,Phone_number)
            Values(1,"arun","DA",9898977),
                  (2,"Dravid","DS",9795635),
                  (3,"sandy","DA",9895922),
                  (4,"Vinu","FSP",7875747);
select*from student;

select student_id,student_name from student;

select *from student where Course="DA";

CTE-common table Expression
It is used to store result temporary
using with keyword

WITH result AS(SELECT *FROM Student WHERE Course = 'DA')
SELECT *FROM result;

update-

update student set  Course="DS WITH ML" where student_id=2;

alter
->add
->drop
->modify
->rename

add

alter table student add fees BIGINT;

drop table student;

update student set fees=35000 where student_id=1;

update student set fees=45000 where student_id=2;




update student set fees=55000 where student_id=3;

update student set fees=65000 where student_id=4;

alter table student drop column fees;

modify

alter table student modify column Phone_number BIGINT;

update student set  Phone_number=9897959645 where student_id=1;

update student set   Phone_number=8754359102 where student_id=2;

update student set Phone_number=9344335331 where student_id=3;

update student set Phone_number=9629034964 where student_id=4;

select * from student;

rename
->to change old name to new name

alter table student rename column student_name to name;

delete 

->delete from student where Course="DA"

Truncate
->To delete the rows

truncate table student;

drop 
->to delete the table

drop table student;

drop table Employess;

create table Employess(Emp_id int,
                       Emp_name VARCHAR(250),
                       Dept_Name VARCHAR(200),
                       EXP_YRS INT);

insert into Employess(Emp_id,Emp_name,Dept_Name,EXP_YRS)
values(1,"Dravid","IT",2),
      (2,"Sanu","HR",4),
      (3,"Sasi","Finance",3),
      (4,"Nirendhar","Sales",7),
      (5,"naveen","IT",5);

select * from Employess;

select Emp_id,Emp_name from Employess;

select * from Employess where Dept_Name="IT";

alter table Employess add salary BIGINT;
alter table Employess add Phno BIGINT;


update  Employess set salary=36000 where Emp_id=1;
update  Employess set salary=46000 where Emp_id=2;
update  Employess set salary=40000 where Emp_id=3;
update  Employess set salary=76000 where Emp_id=4;
update  Employess set salary=56000 where Emp_id=5;

update  Employess set Phno=9687526541 where Emp_id=1;
update  Employess set Phno=9547812365 where Emp_id=2;
update  Employess set Phno=8754359102 where Emp_id=3;
update  Employess set Phno=9344335331 where Emp_id=4;
update  Employess set Phno=9629034964 where Emp_id=5;

drop (to delete the specific column)

alter table Employess  drop column phno;

modify

alter table Employess modify column Dept_Name VARCHAR(350); 

rename
 
alter table Employess rename column Emp_id to Employee_id;
alter table Employess rename column Emp_name to Employee_Name;
alter table Employess rename column Dept_Name to Department_Name;
alter table Employess rename column EXP_YRS to Experience_Years;


delete from Employess where Department_Name="IT";

truncate table Employess

drop table Employess;

create table Orders(ord_id int,Customer_name VARCHAR(250),
                    product_name VARCHAR(250),
                    price decimal,
                    phno decimal,
                    ord_date date,
                    ord_time time);

INSERT INTO Orders
(ord_id, Customer_name, product_name, price, phno, ord_date, ord_time)
VALUES
(1, 'Dravid', 'Headset', 650, '8754359102', '2026-07-19', '18:58:00'),
(2, 'Niren', 'CYCLE', 8500, '9756412348', '2026-07-17', '16:40:00'),
(3, 'Sanu', 'VIVO', 38000, '9754379112', '2026-07-14', '15:58:00'),
(4, 'Sasi', 'Asus Laptop', 65000, '6754359172', '2026-07-10', '19:50:00');

select * from Orders;

select ord_id,customer_name,product_name,price from Orders;

select * from Orders where price>30000;

alter table Orders add gender char;

drop table Orders;

alter table Orders drop column gender;





















