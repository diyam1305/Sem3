import java.io.File;
public class lab_13_1
{
	public static void main(String[]args)
	{
		File file = new File("demo.txt");
		try
		{
			if(file.createNewFile())
			{
				System.out.println("File created successfully!");
			}
			else
			{
				System.out.println("File already exists!");
			}
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
	} 
}