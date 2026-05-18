--prac 8


Create table demo_table_trigger
(
Roll_No int,
Stu_Name varchar(50)
)
insert into demo_table_trigger(Roll_No, Stu_Name)
values(101, 'XYZ')
select * from demo_table_trigger


--Q-1
---Create a DML After/For Trigger for INSERT event and display the message of the successful event---
Create trigger insert_trigger
on demo_table_trigger
for Insert
as
	begin
		print 'Inserted successfully';
	end


--Q-2
---Create a DML After/For Trigger for the UPDATE event and display a message of the successful event---
Create trigger update_trigger
on demo_table_trigger
for update
as
	begin
		print 'Updated successfully';
	end

Update demo_table_trigger
set Stu_Name='ABC'
where Roll_No=101


--Q-3
---Create a DML After/For Trigger for the DELETE event and display the message of the successful event---
Create trigger delete_trigger
on demo_table_trigger
for delete 
as	
	begin
		print 'Deleted successfully';
	end

Delete from demo_table_trigger
where Roll_No=101


--Q-4
---Create a DML After/For Trigger for all three-event using log table---
Create trigger DML_log_trigger
on demo_table_trigger
for Insert, Update, Delete
as
	begin
		Declare @Insert_ID int, @Delete_ID int
		select @Insert_ID = Roll_No from Inserted
		select @Delete_ID = Roll_No from Deleted
	end

if(@Insert_ID is NOT NULL AND @Delete_ID is NOT NULL)
	begin
		Insert into DML_log_trigger
		values('Update', GETDATE())
	end

else if(@Insert_ID is NOT NULL)
	begin
		Insert into DML_log_trigger
		values('Insert', GETDATE())
	end

else
	begin
		Insert into DML_log_trigger
		values('Delete', GETDATE())
	end