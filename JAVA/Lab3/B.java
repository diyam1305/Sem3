import java.util.*;
public class B
{
	public int max(int p, int q, int r)
	{
		if(p>q && p>r)
		{
			return p;
		}
		else if(q>p && q>r)
		{
			return q;
		}
		else
		{
			return r;
		}
	}
	public static void main(String[] args)
	{
		B b = new B();
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter value of p, q and r:");
		int p = sc.nextInt();
		int q = sc.nextInt();
		int r = sc.nextInt();
		System.out.println("Maximum number is:");
		System.out.println(b.max(p, q, r));
	}
}