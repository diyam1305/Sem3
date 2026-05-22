public class lab_12_2 
{
	public static void main(String[]args)
	{
		int age = -2;
		try
		{
			if(age<0)
			{
				throw new AgeException("Age must be greater than 0");
			}
			else
			{
				System.out.println("Age is:" + age);
			}
		}
		catch(AgeException e)
		{
			System.out.println(e.getMessage());
		}
	}	
}
class AgeException extends Exception
{
	public AgeException(String message)
	{
		super(message);
	}
}