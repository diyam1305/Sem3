import java.io.*;
public class lab_13_3
{
	public static void main(String[]args)
	{
		try
		{
			FileInputStream in = new FileInputStream("demo.txt");
			String op = "";
			int c = in.read();
			while(c != -1)
			{
				op += (char)c;
				c = in.read();
			}
			in.close();
			FileOutputStream out = new FileOutputStream("demo2.txt");
			out.write(op.getBytes());
			out.close();
		}
		catch(Exception e)
		{
			System.out.println("Failed");
		}
	}
}