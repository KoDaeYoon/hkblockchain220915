package abstractex;

public class DeskTop extends Computer {
	//상속받은 클래스가 있는데 상속받은 클래스에 추상 메서드가 있어서 재정의해줘야한다.
	@Override
	public void display() {
		System.out.println("DeskTop Display()");
	}

	@Override
	public void typing() {
		System.out.println("DeskTop Typing()");
	}
}
