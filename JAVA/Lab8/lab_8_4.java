public class lab_8_4
{
	public static void main(String[] args)
	{
		B b = new B();
		b.displayA();
		b.displayB();
		C c1 = new C();
		c1.displayA();
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
class C extends A
{
	public void displayC()
	{
		System.out.println("This is class C");
	}
}