class Student
{
	long er_no;
	String name;
	char gender;
	float marks;
	static int count = 0;

	Student(long er_no, String name, char gender, float marks)
	{
		this.er_no = er_no;
		this.name = name;
		this.gender = gender;
		this.marks = marks;
		count++;
	}
	public void display()
	{
		System.out.print("Enter enrollment no.:" + this.er_no + '\n' + "Name:" + this.name + '\n' + "Gender:" + this.gender + '\n' + "Marks:" + this.marks + '\n' + '\n');
	}
}
public class A
{
	public static void main(String[] args)
	{
		Student s1 = new Student(102, "Diya", 'F', 20.5f);
		Student s2 = new Student(103, "Rutvi", 'F', 32.2f);
		s1.display();
		s2.display();
		System.out.print(Student.count);
	}
}
