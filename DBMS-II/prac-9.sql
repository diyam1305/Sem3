--prac-9

--Q-1
---Write T - SQL block to perform Static cursor---
Declare @B_N varchar(50), @B_SN varchar(20);
Declare pr_cursor cursor
static
	for select Bank_Name, Bank_ShortName from Bank_Master
	open pr_cursor
		if(@@CURSOR_ROWS > 0)
			begin
				fetch next from pr_cursor into @B_N, @B_SN
				while(@@FETCH_STATUS = 0)
					begin
						print concat (@B_N, ' is ', @B_SN);
						fetch next from pr_cursor into @B_N, @B_SN
					end
			end
	close pr_cursor
deallocate pr_cursor


--Q-2
---Write T – SQL block to perform static cursor that fetches first and last value from the result set---
select * from Bank_Master
Declare first_last_cursor cursor
static
	for select * from Bank_Master
	open first_last_cursor
		fetch first from first_last_cursor
		fetch last from first_last_cursor
	close first_last_cursor
deallocate first_last_cursor


--Q-3
---Write T -SQL block to perform static cursor and try to insert/update/delete a record on 
---the table
Declare @B_ID int, @B_N varchar(50), @B_SN varchar(20)
Declare Static_Cursor cursor
static
for select *from Bank_Master
open Static_Cursor
if (@@CURSOR_ROWS > 0)
	begin
		fetch next from Static_Cursor into  @B_ID, @B_N, @B_SN
		while (@@FETCH_STATUS = 0)
		begin
			update Bank_Master set @B_N = 'New Bank' 
			where current of Static_Cursor
			print concat (@B_N, @B_SN);
			fetch next from Static_Cursor into  @B_ID, @B_N, @B_SN
		end
	end
close Static_Cursor
deallocate Static_Cursor