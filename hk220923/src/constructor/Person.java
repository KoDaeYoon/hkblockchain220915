package constructor;

public class Person {
	String name;
	float height;
	float weight;
	
	//생성자 - 객체생성과 동시에 멤버필드를 초기화
	public Person(String name,float height, float weight) {
		this.name = name;
		this.height = height;
		this.weight = weight;
	}
	//생성자를 정의하게 되면 디폴트 생성자는 자동으로 만들어지지 않는다.

	// 같은 이름의 생성자가 두개 이상 있는 것을 오버로드라고 한다.
	public Person(String name) {
		this.name = name;
	}
	//setter
	public void setName(String name) {
		this.name = name;
	}
	public void setHeight(float height) {
		this.height = height;
	}
	public void setWeight(float weight) {
		this.weight = weight;
	}
	// 하나만 초기화했을 때는 나머지도 초기화해야하는데 그럼 setter를 만들어야한다.
	
	public Person(String name, float weight) {
		this.name = name;
		this.weight = weight;
	}
	public void print() {
		System.out.println(name+"는 키가 "+height+"이고 몸무게는 "+weight+"입니다.");
	}
	//디폴트 생성자만 있으면 꼭 setData를 통해 데이터 필드를 알려줘야한다.
	public Person() { }
	
	public void setData(String name,float height, float weight) {
		this.name = name;
		this.height = height;
		this.weight = weight;
	}
}
