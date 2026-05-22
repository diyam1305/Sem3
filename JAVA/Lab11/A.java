interface EventListener
{
	public void performEvent();
}
interface MouseListener extends EventListener
{
	public void mouseClicked();
	public void mousePressed();
	public void mouseReleased();
	public void mouseMoved();
	public void mouseDragged();
}
interface keyListener extends EventListener
{
	public void keyPressed();
	public void keyReleased();
}
class EventDemo implements MouseListener, keyListener
{
	public void performEvent()
	{
		System.out.println("Perform Event");
	}
	public void mouseClicked()
	{
		System.out.println("Mouse Clicked");
	}
	public void mousePressed()
	{
		System.out.println("Mouse Pressed");
	}
	public void mouseReleased()
	{
		System.out.println("Mouse Released");
	}
	public void mouseMoved()
	{
		System.out.println("Mouse Moved");
	}
	public void mouseDragged()
	{
		System.out.println("Mouse Dragged");
	}
	public void keyPressed()
	{
		System.out.println("Key Pressed");
	}
	public void keyReleased()
	{
		System.out.println("Key Released");
	}
	public static void main(String[]args)
	{
		EventDemo obj1 = new EventDemo();
		obj1.mouseClicked();
		obj1.mousePressed();
		obj1.mouseReleased();
		obj1.mouseMoved();
		obj1.mouseDragged();
		obj1.keyPressed();
		obj1.keyReleased();
	}
}
