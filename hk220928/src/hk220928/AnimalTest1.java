package hk220928;

public class AnimalTest1 {
	public static void main(String[] args) {
		Animal animal = new Human();
		animal.move();
		//animal.readBook(); 부모 클래스의 멤버만 사용 가능해서 자식 클래스의 객체는 사용 불가
		animal = new Tiger();
		animal.move();
		animal = new Eagle();
		animal.move();
		
		Eagle eagle = (Eagle)animal;//다운캐스팅 -> 부모가 자식이 되는것.
		eagle.flying(); //이제 다시 사용 가능.
		
		if (animal instanceof Eagle) {
			System.out.println("Eagle입니까?");
		}
		if (animal instanceof Tiger) {
			System.out.println("Tiger입니까?");
		}
	}
}	
