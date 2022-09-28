package abstractex;

public abstract class Computer {//추상 클래스 - 추상메서드를 가진 클래스
	public abstract void display(); //머리부만 있는 메서드를 추상 메서드라고 부른다.
	// abstract는 추상메서드인 것을 나타낸다.
	public abstract void typing(); 
	public void turnOn() {
		System.out.println("전원을 켭니다.");
	}
	public void turnOff() {
		System.out.println("전원을 끕니다.");
	}
	//추상클래스는 꼭 재정의한 후 상속해서 사용해야한다.
}
