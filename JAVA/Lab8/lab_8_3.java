public class lab_8_3
{
	public static void main(String[] args)
	{
		C c1 = new C();
		c1.displayA();
		c1.displayB();
		c1.displayC();
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
class C extends B
{
	public void displayC()
	{
		System.out.println("This is class C");
	}
}
