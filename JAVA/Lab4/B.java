import java.util.Scanner;
public class B
{
	public static void main(String[] args) 
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter size:");
		int n = sc.nextInt();
		System.out.print("Enter elements:");
		int arr[] = new int[n];
		int i, even = 0, odd = 0;

		for(i=0; i<arr.length; i++)
		{
			arr[i] = sc.nextInt();
		}	
		for(i=0; i<arr.length; i++)
		{
			if(arr[i] % 2 == 0)
			{
				even++;
			}
			else
			{
				odd++;
			}
		}
		System.out.print("Even numbers are:" + even);
		System.out.print('\n');
		System.out.print("Odd numbers are:" + odd);
	}
}