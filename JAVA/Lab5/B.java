import java.util.Scanner;
class Employee
{
	int Emp_ID;
	String Emp_Name;
	String Emp_Designation;
	int Emp_Age;
	double Emp_Salary;

	public void GetEmpDetails()
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter Employee ID:");
		Emp_ID = sc.nextInt();
		System.out.print("Enter Employee Name:");
		sc.nextLine();
		Emp_Name = sc.nextLine();
		System.out.print("Enter Employee Designation:");
		Emp_Designation = sc.nextLine();
		System.out.print("Enter Employee Age:");
		Emp_Age = sc.nextInt();
		System.out.print("Enter Employee Salary:");
		Emp_Salary = sc.nextDouble();
	}
	public void DisplayEmpDetails()
	{
		System.out.print("Employee ID:" + Emp_ID + "\nEmployee Name:" + Emp_Name + "\nEmployee Designation:" + Emp_Designation + "\nEmployee Age:" + Emp_Age + "\nEmployee Salary:" + Emp_Salary);
	}
}
public class B
{
	public static void main(String[] args) 
	{
		Employee e1 = new Employee();
		e1.GetEmpDetails();
		e1.DisplayEmpDetails();
	}
}