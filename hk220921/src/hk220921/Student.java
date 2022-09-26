package hk220921;

public class Student { //사용자 자료형을 만드는 것이다.
	//멤버 변수
	//멤버 필드
	int age;
	double height;
	String addr;
	String phone;
	String name;
	
	// 메서드: 기능구현
	public void print() {
		System.out.println(name+"의 주소는 "+addr);
	}
}
