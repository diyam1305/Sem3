import java.util.*;
public class C
{
	public static double area(double r)
	{
		return 3.14 * r * r;
	}
	public static double area(double b, double h)
	{
		return 0.5 * b * h;
	}
	public static float area(float a)
	{
		return a * a; 
	}
	public static void main(String[] args)
	{
		Scanner sc =  new Scanner(System.in);
		System.out.print("Enter your choice:");
		int choice = sc.nextInt();
		switch(choice)
		{
			case 1:
				System.out.print("Enter radius of circle:");
				double r = sc.nextDouble();
				System.out.print(area(r));
				break;

			case 2:
				System.out.print("Enter value of base and height of triangle:");
				double b = sc.nextDouble();
				double h = sc.nextDouble();
				System.out.print(area(b, h));
				break;

			case 3:
				System.out.print("Enter side of square:");
				float a = sc.nextFloat();
				System.out.print(area(a));
				break;				

			default:
				System.out.print("Invalid");
		}
	}
}