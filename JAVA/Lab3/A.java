public class A
{
	public static double SI(double P, double R, double T)
	{
		return P*R*T/100;
	}
	public static void main(String[] args)
	{
		System.out.println(A.SI(10, 10, 10));
	}
}
