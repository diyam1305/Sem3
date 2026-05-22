import java.io.FileReader;
import java.io.FileWriter;
public class lab_13_2
{
	public static void main(String[]args)
	{
		try
		{
			FileReader reader = new FileReader("demo.txt");
			FileWriter writer = new FileWriter("demo2.txt");
			int c = reader.read();
			while(c != -1)
			{
				writer.write(c);
				System.out.println((char)c);
				c = reader.read();
			}
			reader.close();
			writer.close();
		}
		catch(Exception e)
		{
			System.out.println("File copy failed!");
		}
	}
}