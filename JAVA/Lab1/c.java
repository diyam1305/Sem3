import java.util.Scanner;
public class c
{
	public static void main(String[] args)
	{
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter length in meter:");
		double m=sc.nextDouble();
		double feet=m*3.28084;
		System.out.println(m+"meter="+feet+"ft");
	}
}