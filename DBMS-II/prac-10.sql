--prac-10

Create table emp
(
Emp_ID int,
Emp_Name varchar(50),
Emp_Salary int
)
insert into emp
values(101, 'ABC', 10000),
	  (102, 'DEF', 20000),
	  (103, 'GHI', 30000)
select * from emp


--Q-1
---Write T - SQL block to perform Dynamic cursor---
Declare @Emp_ID int, @Emp_Name varchar(50), @Emp_Salary int;
Declare Dynamic_Cursor1 cursor
dynamic
for select *from emp
open Dynamic_Cursor1
		fetch next from Dynamic_Cursor1 into  @Emp_ID, @Emp_Name, @Emp_Salary
		while (@@FETCH_STATUS = 0)
		begin
			update emp set @Emp_Salary = 50000 
			where current of Dynamic_Cursor1
			print concat (@Emp_ID, @Emp_Name, @Emp_Salary);
			fetch next from Dynamic_Cursor1 into  @Emp_ID, @Emp_Name, @Emp_Salary
		end
close Dynamic_Cursor1
deallocate Dynamic_Cursor1  