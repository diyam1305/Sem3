---prac 3

---Q-1
---Write a T - SQL block to check whether the given number is a positive number or a negative number using a simple if statement-
Declare @a int = 2;
if(@a>0)
		print 'Number is positive';

else
		print 'Number is negative';



---Q-2
---Write a T - SQL block to find the maximum number from the given two numbers---
Declare @a int =2, @b int = 3;
if(@a>@b)
	begin
		print concat(@a, 'is maximum');
	end

else
	begin
		print concat(@b, 'is maximum');
	end


---Q-3
---Write a T-SQL block to find the maximum number from the given three numbers---
Declare @a int = 13, @b int = 15, @c int = 17;
if(@a>@b AND @a>@c)
	begin
		print concat(@a, 'is maximum');
	end

else if(@b>@a AND @b>@c)
	begin
		print concat(@b, 'is maximum');
	end

else
	begin
		print concat(@c, 'is maximum');
	end


---Q-4
---Write a T - SQL block to print the first 25 natural numbers using a loop---
Declare @n int = 1;
	while(@n <=25)
		begin
			print @n;
			set @n = @n + 1;
		end


---Q-5
---Write a T - SQL Program to Print Odd Numbers From 1 to 100---
Declare @n int = 1;
	while (@n <= 100)
		begin
			if(@n%2=0)
				begin
					set @n = @n + 1;
				end

			else
				begin
					print @n;
					set @n = @n + 1;
				end
		end


---Q-6
---Write a T - SQL block to find the sum of the first 100 natural nos---
Declare @n int = 1, @sum int = 0;
	while(@n <=100)
		begin
			set @sum = @sum + @n;
			set @n = @n + 1;
		end
	print concat('Total is:', @sum);


---Q-7
---Write a T-SQL block to find whether the number is even or odd---
Declare @n int = 10;
if(@n%2=0)
	begin
		print 'Number is even';
	end

else
	begin
		print 'Number is odd';
	end


---Q-8
---Write a T - SQL block to print the first 25 Odd numbers using a loop in Reverse order---
--not executed
Declare @n int = 50;
	while (@n%2!=0)
		begin
			if(@n%2!=0)
				begin
					print @n;
				end

			else
				set @n=@n-1;
		end


---Q-9
/*Write a T-SQL block for given conditions: marks > 70 then Print '1st Class', marks>50 and marks<=70 then print '2nd Class',
marks>=35 and marks<=50 then print '3rd Class', marks<35 then print 'Fail' !!*/

Declare @marks int = 80;
	if(@marks > 70)
		begin
			print 'You passed with 1st class!!!';
		end

	else if(@marks <= 70 AND @marks > 50)
		begin
			print 'You passed with 2nd class!!!';
		end

	else if(@marks >= 35 AND @marks <= 50)
		begin
			print 'You passed with 3rd class';
		end

	else if(@marks < 35)
		begin
			print 'So sorry, you are failed';
		end

else
	begin
		print 'Enter valid number';
	end