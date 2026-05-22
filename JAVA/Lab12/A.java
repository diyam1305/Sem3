public class lab_12_1
{
	public static void main(String[]args)
	{
		try
		{
			int[]array = {1,2,3};
			System.out.println(array[5]);
		}
		catch(IndexOutOfBoundsException e)
		{
			System.out.println(e.getMessage());
		}
	}
}
