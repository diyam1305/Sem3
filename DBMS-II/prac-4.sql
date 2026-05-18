---prac 4

---Q-1
---Create a simple view Bank_View which contains only Bank_ID and Bank_Name---
Create view Bank_View 
as
select Bank_ID, Bank_Name from Bank_Master

select * from Bank_View


--Q-2
---Create a simple view Customer_View which contains Cust_FullName, Cust_MobileNo, Cust_EmailID---
Create view Customer_View
as 
select Cust_FullName, Cust_MobileNo, Cust_EmailID from Customer_Master

select * from Customer_View

--Q-3
---Create a complex view that contains Acc_No, Cust_ID, Branch_Name, Bank_Name---
Create view  Acc_Cust_view
as
select
	Account_Master.Acc_No,
	Account_Master.Cust_Id,
	Branch_Master.Branch_Name,
	Bank_Master.Bank_Name
from Account_Master
inner join Branch_Master
on Account_Master.Branch_IFSC = Branch_Master.Branch_IFSC
inner join Bank_Master
on Branch_Master.Bank_Id=Bank_Master.Bank_Id

select * from Acc_Cust_view


--Q-4
---Create a simple view with Check Option Cust_View which contains Cust_FullName, Cust_City---
Create view Cust_View
as
select Cust_FullName, Cust_City from Customer_Master
where Cust_City='Rajkot'
with check option

select * from Cust_View


--Q-5
---Create a sequence on the following table’s listed columns:
--Bank_Master -> Bank_ID, Branch_Master -> Branch_ID, Employee_Master -> Emp_No
--output

Create sequence Bank_Master_Seq
start with 106
increment by 1

select next value for Bank_Master_Seq

insert into Bank_Master(Bank_Id,Bank_Name,Bank_ShortName)
values (next value for Bank_Master_Seq ,'State Bank of India',' SBI')

select * from Bank_Master

---2---

 Create sequence  Branch_Master_seq
 as int 
 start with 211 
 Increment by 1
 maxvalue 215

select next value for Branch_Master_seq

insert into Branch_Master (Branch_Id,Branch_Name,Branch_IFSC, Bank_Id)
values (next value for Branch_Master_seq, 'Green Chowk, Morbi','SBI101MB291', 101)

select * from Branch_Master

--3---

 Create sequence Employee_Master_seq
 as int 
 start with 311 
 Increment by 1
 maxvalue 315

select next value for Employee_Master_seq

insert into Employee_Master(Emp_No,Branch_IFSC ,Emp_FullName, Emp_Designation, Emp_Manager_No, Emp_Salary)
values(next value for Employee_Master_seq,'SBI101MB201', 'Shashikant Das','Bank Manager', 9876543210, 250000)

select * from Employee_Master


--Q-6
---Create Synonym T_Master for Transaction_Master---
Create Synonym 
T_Master for Transaction_Master

select * from T_Master


--Q-7
---Create a simple view Tr_View which contains Tran_ID, Tras_Acc_No those whose Tran_Type is Online---

Create view Tr_View 
as
select Tran_ID, Tran_Acc_No, Tran_Type from
Transaction_Master where Tran_Type='OL'

select * from  Tr_View


--Q-8
---Create whole view of the Custome_Master table with check option for customer city = ‘Rajkot’ and insert data using view.---
Create view Cust_Master
as 
select * from Customer_Master where Cust_City='Rajkot'

select * from  Cust_Master

 insert into Cust_Master (Cust_Id,Cust_FullName,Cust_DOB,Cust_Address,Cust_MobileNo, Cust_EmailID,Cust_City)
 values (411,' C N Kanani ','1985-08-20','MilapNagar,UniversityRoad',2134567890, 'cnk@gmail.com', 'Gandhinagar')
 select * from Customer_Master

 --Q-9
 /*Create a one Table and create sequence for which contain start from 101 increment by 5 and maximum value is 120, minimum value is 100
 and restart cycle after reach on maximum value*/

 Create table Bnk_Master (
 Bank_Id int Primary Key,
 Bank_Name varchar(40),
 Bank_ShortName varchar(10)
 )

 Create sequence Bnk_Master_seq
 as int 
 start with 101
 Increment by 5
 maxvalue 120
 minvalue 100
 cycle

insert into Bnk_Master(Bank_Id,Bank_Name,Bank_ShortName)
values (next value for Bnk_Master_seq ,'State Bank of India',' SBI')

select * from Bnk_Master

select next value for Bnk_Master_seq

--Q-10
--- Insert one value into the Employee_Master table fetch next id from using sequence ---

insert into Employee_Master(Emp_No,Branch_IFSC ,Emp_FullName, Emp_Designation, Emp_Manager_No, Emp_Salary)
values(next value for Employee_Master_seq,'SBI101MB201', 'Shashikant Das','Bank Manager', 9876543210, 250000)

select * from Employee_Master

select next value for Employee_Master_seq

--Q-11
---Alter Tr_View that also contains Tran_Amount column---
Alter view Tr_View
as 
select Tran_Amount from Transaction_Master

select * from Transaction_Master

--Q-12
---Drop the Customer_View---

Drop view Customer_View

--Q-13
---Drop the Employee_Master table sequence and try to insert data using sequence---
Drop sequence Employee_Master_seq

insert into Employee_Master(Emp_No, Branch_IFSC, Emp_FullName, Emp_Designation, Emp_Manager_No, Emp_Salary)
values(next value for Employee_Master_seq,'SBI101MB201', 'Shashikant Das','Bank Manager', 9876543210, 250000)