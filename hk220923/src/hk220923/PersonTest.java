package hk220923;

public class PersonTest {
	public static void main(String[] args) {
		Person person = new Person(); // new Person()을 인스턴스 , 객체라고 부름
		//person.name = "이숭무"; //은닉된 상태 (private 등의 접근지정자를 쓰면 은닉됨)
		//person.name안의 name은 객체 안의 변수이고 객체 안에 있는 변수를 인스턴스 변수라고 부른다.
		//person을 인스턴스, 객체라고 부른다.
		person.setData("이숭무", 197.00f, 75.0f); //setData는 호출 메서드, 괄호 안은 argument
		//setData는 객체(인스턴스)내에 있는 멤버 필드(인스턴스 변수)에 초기화
		person.print();
		
		Person person1;//객체 선언
		person1 = new Person(); // 객체 생성
		
		Person_1 p = new Person_1("고대윤", 200.00f, 100.0f);
		p.print();
		
		// 객체를 생성할 때는 생성자를 이용해서 객체를 생성한다.
	}
}
