package polymorphism;

public class AnimalTest1 {
	public static void main(String[] args) {
		Animal animal = new Human();
		animal.move();
		//animal.readBook(); 부모 클래스의 멤버만 사용 가능해서 자식 클래스의 객체는 사용 불가
		animal = new Tiger();
		animal.move();
		animal = new Eagle();
		animal.move();
	}
}	
