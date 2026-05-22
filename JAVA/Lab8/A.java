class Student
{
	int rollno;
	String name;
	static int count=0;

	Student(int rollno, String name)
	{
		this.rollno = rollno;
		this.name =  name;
		count++;
	}
	public void display()
	{
		System.out.println("Student Rollno:" + this.rollno + "\nStudent Name:" + this.name);
	}
}
public class lab_8_1
{
	public static void main(String[] args)
	{
		Student s1 = new Student(101, "ABC");
		Student s2 = new Student(102, "DEF");
		s1.display();
		s2.display();
		System.out.println(Student.count);
	}
}
