import java.util.Scanner;
public class a
{
	public static void main(String[] args)
	{
		System.out.print("Enter area of circle:");
		Scanner sc=new Scanner(System.in);
		double area=sc.nextDouble();
		double r=Math.sqrt(area/3.14);
		double d=2*r;
		System.out.println("Diameter of a circle is:"+d);
	}
}
