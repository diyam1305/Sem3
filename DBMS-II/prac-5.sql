--prac 5

--Q-1
---Create a function to calculate simple interest (SI=P*R*N/100)---
Create function SI(@p int,@r int ,@n int)
returns int
	begin 
			  return (@p*@r*@n)/100;
	end

select dbo.SI(1000,5,2)

--Q-2
---Create a function to find the feet to inch---
Create function feet_inch(@feet int)
returns float
	begin
		return @feet * 12;
	end

select dbo.feet_inch(10)

--Q-3
---Create a function to convert Celsius to Fahrenheit---
Create function celsius_fahren(@C int)
returns float
	begin
		return (@C * 9/5) + 32
	end

select dbo.celsius_fahren(5)

--Q-4
---Create a function to find factorial of a number---

Create function factorial(@number int )
returns int
as
	begin
        declare @ans int = 1, @i int = 1;
	    while(@number >= @i)
			begin
				set @ans = @ans * @i
				set @i = @i + 1
			end
		return @ans
	end

select dbo.factorial(5)


--Q-5
---Write a function to find the sum of odd numbers between two range---
Create function sum_odd(@num1 int, @num2 int )
returns int
as
	begin
		 declare @total int = 0;
		 while(@num1<=@num2)
			 begin
				if(@num1%2!=0)
					begin
						set  @total=@total+@num1;
					end
				set @num1=@num1+1;
			 end
		 return @total
	end

select dbo.sum_odd(5, 10)