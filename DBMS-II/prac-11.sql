--prac 11
    
	 
--Q-1
---Write T-SQL block to perform System Defined Exception for data type conversion Exception
begin try
	Declare @a varchar(50)='Hello', @b int;
	set @b = @a;
end try

begin catch
	select ERROR_MESSAGE()as ERRORMESSAGE,
		   ERROR_LINE()as ERRORLINE ,
		   ERROR_STATE()as ERRORSTATE, 
		   ERROR_SEVERITY()as ERRORSEVERITY, 
		   ERROR_PROCEDURE()as ERRORPROCEDURE, 
		   ERROR_NUMBER()as ERRORNUMBER
end catch


--Q-2
---Write T-SQL block to perform System Defined Exception for divide by 0---
begin try
	Declare @a int = 20, @b int = 0, @c int;
	set @c = @a/@b;
	set @a = @c/0;
	print @c;
end try

begin catch
	select ERROR_MESSAGE()as ERRORMESSAGE,
		   ERROR_LINE()as ERRORLINE ,
		   ERROR_STATE()as ERRORSTATE, 
		   ERROR_SEVERITY()as ERRORSEVERITY, 
		   ERROR_PROCEDURE()as ERRORPROCEDURE, 
		   ERROR_NUMBER()as ERRORNUMBER
end catch


--Q-3
---Write T - SQL to perform User Defined Exception. If User enter age<14 then print the 
---error message "Child labour is not legal"
begin try
	Declare @age int = 13;
	if(@age < 14)
	begin
		Raiserror(' Child labour is illegal ', 16, 1)
	end
	else
		begin
			print @age;
		end
end try

begin catch
	select ERROR_MESSAGE()as ERRORMESSAGE,
		   ERROR_LINE()as ERRORLINE ,
		   ERROR_STATE()as ERRORSTATE, 
		   ERROR_SEVERITY()as ERRORSEVERITY, 
		   ERROR_PROCEDURE()as ERRORPROCEDURE, 
		   ERROR_NUMBER()as ERRORNUMBER
end catch

--Q-4
---Write T-SQL block to generate System Defined Exception for Check constraint violation---
Create table Stu_demo
(
Stu_ID int,
Stu_Name varchar(50),
Stu_Age int check(Stu_Age < 5)
)
begin try
	insert into Stu_demo
	values(101, 'XYZ', 66)
	print('Row inserted');
end try

begin catch
	select ERROR_MESSAGE()as ERRORMESSAGE,
		   ERROR_LINE()as ERRORLINE ,
		   ERROR_STATE()as ERRORSTATE, 
		   ERROR_SEVERITY()as ERRORSEVERITY, 
		   ERROR_PROCEDURE()as ERRORPROCEDURE, 
		   ERROR_NUMBER()as ERRORNUMBER
end catch


--Q-5
---Write T-SQL block to perform User Defined Exception if we try to delete data that is not available in table
begin try
	Delete from Bank_Master
	where Bank_ID = 201
	if @@ROWCOUNT = 0
	begin
		throw 50001, 'Record not found', 1;
	end
end try

begin catch
	select ERROR_MESSAGE()as ERRORMESSAGE,
		   ERROR_LINE()as ERRORLINE ,
		   ERROR_STATE()as ERRORSTATE, 
		   ERROR_SEVERITY()as ERRORSEVERITY, 
		   ERROR_PROCEDURE()as ERRORPROCEDURE, 
		   ERROR_NUMBER()as ERRORNUMBER
end catch

--Q-6
---Write T – SQL block to generate System Defined Exception for primary key violation---
begin try
	insert into Bank_Master
	values(101, 'State Bank of India', 'SBI')
end try

begin catch
	select ERROR_MESSAGE()as ERRORMESSAGE,
		   ERROR_LINE()as ERRORLINE ,
		   ERROR_STATE()as ERRORSTATE, 
		   ERROR_SEVERITY()as ERRORSEVERITY, 
		   ERROR_PROCEDURE()as ERRORPROCEDURE, 
		   ERROR_NUMBER()as ERRORNUMBER
end catch

--Q-7
---Write T-SQL block to multiply three numbers and if any number is 0 then generate User Defined Exception
begin try
	declare @a int = 0, @b int = 1, @c int = 1;
	if(@a = 0 OR @b = 0 OR @c = 0)
	begin
		Throw 50001, 'Invalid Input', 1;
	end

	else 
	begin
		print(@a * @b * @c);
	end
end try

begin catch
	select ERROR_MESSAGE()as ERRORMESSAGE,
		   ERROR_LINE()as ERRORLINE ,
		   ERROR_STATE()as ERRORSTATE, 
		   ERROR_SEVERITY()as ERRORSEVERITY, 
		   ERROR_PROCEDURE()as ERRORPROCEDURE, 
		   ERROR_NUMBER()as ERRORNUMBER
end catch
