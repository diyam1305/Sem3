class Demo
{
	int x=10;
	Demo()
	{
		System.out.println("Parent Constructor");
	}
	void display()
	{
		System.out.println("Parent Method");
	}
}
class New extends Demo
{
	int x=5;
	New()
	{
		super();
	}
	void print()
	{
		System.out.println(super.x);
		System.out.println(x);
		super.display();
	}
}
public class lab_9_2
{
	public static void main(String[] args)
	{
		New n = new New();
		n.print();
	}
}