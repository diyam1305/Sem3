public class lab_8_2
{
	public static void main(String[] args)
	{
		B b = new B();
		b.displayA();
		b.displayB();
	}
}
class A
{
	public void displayA()
	{
		System.out.println("This is class A");
	}
}
class B extends A
{
	public void displayB()
	{
		System.out.println("This is class B");
	}
}