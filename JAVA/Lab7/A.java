public class A
{
	public static void main(String[] args)
	{
		String str="Hello", str2="Welcome", str3="HelloWorld";
		int a=5, b=5;
		System.out.println("Length of String is:" + str.length());
		System.out.println("Character of that index is:" + str.charAt(1));
		System.out.println("Merged string is:" + str.concat(str2));
		System.out.println("Index of first character:" + str3.indexOf("World"));
		System.out.println("String equalization:" + str.equals(str3));

		System.out.println("Total is:" + (a+b));
		String s1=String.valueOf(a);
		String s2=String.valueOf(b);
		System.out.println("Merged string is:" + s1+s2);
		System.out.println("Converted string is:" + str.toString());

		String str4="         Hello";
		System.out.println("Trimed string:" + str4.trim());

		String str5="Hello World";
		System.out.println("Substring is:" + str5.substring(1));
		System.out.println("Substring is:" + str5.substring(1,5));
	}
}
