package constructor;

public class PersonTest {
	public static void main(String[] args) {
		Person person = new Person("이숭무", 172.5f, 75.9f);
		person.print();
		
		Person person1 = new Person(); // 디폴트 생성자 
		person1.setData("고대윤", 200.0f, 100.0f);
		person1.print();
		
		Person person2 = new Person("이상범");
		person2.print();
		person2.setHeight(197.0f);
		person2.setWeight(60.0f);
		person2.print();
		
		Person person3 = new Person();
		person3.setName("이장범");
		person3.setHeight(170.0f);
		person3.setWeight(50.6f);
		person3.print();
	}
}
