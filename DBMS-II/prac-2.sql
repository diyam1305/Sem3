---Lab-2---


---Table 1---
---Display Employee number, name and branch name---

select
Employee_Master.Emp_No,
Employee_Master.Emp_FullName,
Branch_Master.Branch_Name
from Employee_Master
inner join Branch_Master 
on Employee_Master.Branch_IFSC = Branch_Master.Branch_IFSC


---Table 2---
---Display Account number, customer id, name and branch IFSC code using join---

select 
Account_Master.Acc_No,
Account_Master.Branch_IFSC,
Customer_Master.Cust_Id,
Customer_Master.Cust_FullName 
from Customer_Master
inner join Account_Master 
on Customer_Master.Cust_Id = Account_Master.Cust_Id


---Table 3---
---Display Transaction ID, amount, account number, account type whose transaction type is Online---

select 
Account_Master.Acc_No,
Account_Master.Acc_Type,
Transaction_Master.Tran_Id,
Transaction_Master.Tran_Amount
from Transaction_Master
inner join Account_Master 
on Account_Master.Acc_No = Transaction_Master.Tran_Acc_No
where Transaction_Master.Tran_Type ='OL'


---Table 4---
---Display Account number, type, transaction account number and amount using left outer join---

select 
Account_Master.Acc_No,
Account_Master.Acc_Type,
Transaction_Master.Tran_Acc_No,
Transaction_Master.Tran_Amount
from Account_Master
left outer join Transaction_Master 
on Transaction_Master.Tran_Acc_No = Account_Master.Acc_No


---Table 5---
---Display Account number, type, transaction account number and amount using right outer join---

select 
Account_Master.Acc_No,
Account_Master.Acc_Type,
Transaction_Master.Tran_Acc_No,
Transaction_Master.Tran_Amount
from Account_Master
Right outer join Transaction_Master 
on Transaction_Master.Tran_Acc_No = Account_Master.Acc_No;


---Table 6---
---Display customer name, mobile number who has highest transaction amount---

select 
Customer_Master.Cust_FullName,
Customer_Master.Cust_MobileNo
from Customer_Master 
inner join  Account_Master
on Account_Master.Cust_ID = Customer_Master.Cust_ID
inner join  Transaction_Master 
on Transaction_Master.Tran_Acc_No = Account_Master.Acc_No
where Transaction_Master.Tran_Amount = (select max(Tran_Amount) 
from Transaction_Master)


---Table 7---
---Display Branch name, IFSC and Bank ID who has lowest paying amount employee---

select
Branch_Master.Branch_Name,
Branch_Master.Branch_IFSC,
Branch_Master.Bank_ID
from Branch_Master
inner join Employee_Master
on Employee_Master.Branch_IFSC = Branch_Master.Branch_IFSC
where Employee_Master.Emp_Salary = (select min(Emp_Salary) 
from Employee_Master);


---Table 8---
---Display the count of total designation of an employee---

select Emp_Designation,
count(Emp_Designation)
as Emp_Count 
from Employee_Master
group by Emp_Designation


---Table 9---
---Display the count of how many customers have saving account---

select Acc_Type,
count(*)
From Account_Master
where Acc_Type = 'SB' 
group by Acc_Type


---Table 10---
---Display details of branch master branch name wise in descending order---

select * from Branch_Master
order by Branch_Name DESC