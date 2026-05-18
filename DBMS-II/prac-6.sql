--prac 6

--Q-1
---Write a stored procedure to find the Factorial---
Create procedure factor(@n int, @ans int = 1)
as
	begin
		declare @i int = 1
		while(@n >= @i)
			begin
				set @ans = @ans * @i
				set @i = @i + 1
			end
		print @ans
	end
Exec factor 5


--Q-2
---Write a stored procedure to find maximum number out of two numbers---
Create procedure max_no(@a int, @b int)
as 
	begin
		if(@a > @b)
			begin
				print concat(@a, ' is maximum');
			end
		else
			begin
				print concat(@b, 'is maximum');
			end
	end

Exec max_no 2,3


--Q-3
---Write a stored procedure to find square of number---
Create procedure square_no(@n int)
as 
	begin
		print @n * @n;
	end

Exec square_no 4

--Q-4
---Write a stored procedure to find the sum of first 50 even numbers---
Create procedure sum_even(@n int = 1, @sum int = 0)
as
	begin
		while(@n <= 100)
			begin
				if(@n % 2 = 0)
					begin
						set @sum = @sum + @n;
						set @n = @n + 1;
					end
				else
					begin
						set @n = @n + 1;
					end
			end
			print @sum;
	end

Exec sum_even


--Q-5
---Write a Stored Procedure that returns Total marks of 3 subjects using output parameter if marks of all 3 subject is >35 else
--- return a proper message
Create procedure total_marks(@s1 int, @s2 int, @s3 int, @T int output)
as
	begin
		if(@s1 > 35 AND @s2 > 35 AND @s3 > 35)
			begin
				set @T = @s1 + @s2 + @s3;
			end
		else
			begin
				print 'Fail';
				set @T = 0;
			end
	end
Declare @Total int = 0;
Exec total_marks 50, 60, 70, @Total output
print @Total