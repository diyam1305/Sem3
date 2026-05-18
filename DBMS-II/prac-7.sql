--prac 7

--Q-1
---Create a DDL Trigger for CREATE event and display message of successful event---
Create trigger create_event
on database
for create_table
as
	begin
		print 'Event created successfully';
	end

Create table DDL_Trigger(XYZ varchar(30));


--Q-2
---Create a DDL Trigger for ALTER event and display message of successful event---
Create trigger create_alter
on database
for alter_table
as
	begin
		print 'Updated successfully';
	end
alter table DDL_Trigger
alter column XYZ nvarchar(30);


--Q-3
---Create a DDL Trigger for DROP event and display message of successful event---
Create trigger create_drop
on database
for drop_table
as
	begin
		print 'Deleted successfully';
	end
drop table DDL_Trigger


--Q-4
---Create a DDL Trigger for All three events using log table---
Create table DDL_log_table(
Event_Int int identity(1,1) primary key,
Event_data XML not null,
Event_date datetime not null,
Event_by varchar(20) not null
)
Create trigger Tr_DDL_log
on database
for create_table, alter_table, drop_table
as
	begin
		insert into DDL_log_table(Event_data, Event_date, Event_by)
		values(EVENTDATA(), GETDATE(), USER)
	end
Create table DDL_Trigger (XYZ varchar(30));
select * from DDL_log_table