class Mypoint
{
	double x;
	double y;
	Mypoint()
	{
		this.x = 0;
		this.y = 0;
	}
	Mypoint(double x, double y)
	{
		this.x = x;
		this.y = y;
	}
	double getx()
	{
		return this.x;
	}
	double gety()
	{
		return this.y;
	}
	double distance(Mypoint obj)
	{
		double dx = this.x - obj.x;
		double dy = this.y - obj.y;
		return Math.sqrt(dx*dx + dy*dy);
	}
	double distance(double x, double y)
	{
		double dx = this.x - x;
		double dy = this.y - y;
		return Math.sqrt(dx*dx + dy*dy);
	}
}
public class lab_10_1
{
	public static void main(String[] args)
	{
		Mypoint p1 = new Mypoint(2,5);
		Mypoint p2 = new Mypoint(3,3);
		System.out.println(p1.distance(p2));
		System.out.println(p1.distance(0,0));
	}
}
