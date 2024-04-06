create database CompanyDataBase;
use CompanyDataBase;

create table Employes(
 EmployeeID int primary key,
 FirstName  varchar(50),
 LastName varchar(50),
 DepartmentID int 
 foreign key (DepartmentID) references departments(departmentID),
 Salary decimal(38)
);


insert into Employes(EmployeeID,FirstName,LastName,DepartmentID,Salary,HireDate)values(1,'Rabia', 'Malik', 2 , 15000, '2023-11-11 13:23:44'),
(2,'Hanif', 'Khan', 4 , 23000, '2023-11-12 15:45:21'),
(3,'Ahtesham', 'Arain', 3 , 36000, '2023-11-14 11:12:01'),
(4,'sarah', 'Fatima', 1 , 45000,'2023-11-19 15:23:45'),
(5,'areeba', 'Mirza', 5 ,67000, '2023-11-06 15:23:44'), 
(6,'shimzay', 'Ahmed', 1 , 95000, '2023-11-25 23:23:47'),
(7,'warda', 'Hassan', 3 , 54000, '2023-11-21 22:25:49'),
(8,'Sheeza', 'sheikh', 4 , 74000,' 2023-04-11 14:20:50'),
(9,'Zehra', 'Fatima', 5 , 14000, '2023-11-26 10:21:48'),
(10,'Shahroz', 'Malik', 2 , 91000,'2023-11-18 22:15:46');



select * from Employes;

create table departments(
 departmentID int primary key,
 departmentName varchar(50) 
);

insert into departments( departmentID,departmentName)values (1 , 'Inch_Dep'),
(2, 'Acc_Dep'),
(3, 'Hr_Dep'),
(4, 'Finance_Dep'),
(5, 'Sales_Dep');

alter table Employes add HireDate datetime;

drop table Employes;


UPDATE Employes SET salary = salary * 1.1 where departmentID = 1;

delete from Employes where salary <30000;

Select * from Employes inner join Departments on departments.departmentID = Employes.departmentID;
Select * from Employes right join Departments  on departments.departmentID = Employes.departmentID;
Select * from Employes left join Departments  on departments.departmentID = Employes.departmentID;

Select FirstName, LastName, HireDate from Employes where HireDate = 19;

select * from departments;
select * from Employes;