class Time
{
	int hour;
	int minute;

	Time(int hour, int minute)
	{
		this.hour = hour;
		this.minute = minute;
	}
	public Time addition(Time t)
	{
		int newMin = t.minute + this.minute;
		int newHour = t.hour + this.hour;
		
		if(newMin >= 60)
		{
			newHour = newHour + newMin / 60;
			newMin = newMin % 60;
		}
		return new Time(newHour, newMin);
	}
	public void display()
	{
		System.out.print(hour + ":" + minute);
	}
}
public class A
{
	public static void main(String[] args)
	{
		Time t1 = new Time(10,36);
		Time t2 = new Time(12, 40);
		Time t3 = t1.addition(t2);
		t3.display();
	}
}
