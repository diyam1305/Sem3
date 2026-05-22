abstract class Vegetable
{
	String color;
	Vegetable(String color)
	{
		this.color= color;
	}
	public String toString()
	{
		return "Color of Vegetable";
	}
}
class Potato extends Vegetable
{
	Potato(String color)
	{
		super(color);
	}
	public String toString()
	{
		return "Potato is:" + color;
	}
}
class Brinjal extends Vegetable
{
	Brinjal(String color)
	{
		super(color);
	}
	public String toString()
	{
		return "Brinjal is:" + color;
	}
}class Tomato extends Vegetable
{
	Tomato(String color)
	{
		super(color);
	}
	public String toString()
	{
		return "Tomato is:" + color;
	}
}
public class lab_10_2
{
	public static void main(String[]args)
	{
		Potato p = new Potato("Brown");
		System.out.println(p);
		Brinjal b = new Brinjal("Purple");
		System.out.println(b);
		Tomato t = new Tomato("Red");
		System.out.println(t);
	}
}