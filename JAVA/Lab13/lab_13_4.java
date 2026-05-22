public class lab_13_4
{
	public static void main(String[]args)
	{
		OuterClass o = new OuterClass();
		o.display();
		OuterClass.InnerClass i = new OuterClass.InnerClass();
		i.display();
	}
}
class OuterClass
{
	public void display()
	{
		System.out.println("This is Outerclass");
	}
	static class InnerClass
	{
		public void display()
		{
			System.out.println("This is InnerClass");
		}
	}
}