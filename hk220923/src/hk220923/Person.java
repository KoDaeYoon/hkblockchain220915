package hk220923;

public class Person {
	// 멤버 필드, 멤버 변수
	private String name; //private는 여기다가 써준다(접근지정자)
	private float height;
	private float weight;
	//모든 클래스에는 생성자가 존재해야 한다.
	public Person() {} //default 생성자 -> 적어줘도 안적어줘도 된다.
	//접근지정자로 접근이 안되어 있으니 접근 가능하도록 "멤버 메서드"를 써준다
	public void setData(String name, float height, float weight) {
		this.name = name;
		this.height = height;
		this.weight = weight;//setData는 피호출 메서드.
	}
	public void print() {
		System.out.println(name+"는 키가 "+height+"이고 몸무게는 "+weight+"입니다.");
	}
}