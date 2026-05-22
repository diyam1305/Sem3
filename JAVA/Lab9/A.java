class A
{
	void display()
	{
		System.out.println("This is method A");
	}
}
class B extends A
{
	void display()
	{
		System.out.println("This is method B");	
	}
}
public class lab_9_1
{
	public static void main(String[] args)
	{
		B b = new B();
		b.display(); 
	}
}
