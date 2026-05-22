import java.util.Scanner;
public class C
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		int i, j;
		int arr[][] = new int[3][3];
		System.out.print("Enter elements:");
		for(i=0; i<3; i++)
		{
			for(j=0; j<3; j++)
			{
				arr[i][j] = sc.nextInt();
			}
		}
		System.out.print("Entered elements are:\n");
		for(i=0; i<3; i++)
		{
			for(j=0; j<3; j++)
			{
				System.out.print(arr[i][j]);
			}
		}
	}
}