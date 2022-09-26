package thisex;

public class Person {
	//멤버필드는 초기화를 안해도 초기값을 가진다.
	private String name;
	private float height;
	private float weight;
	//멤버필드를 나타내주는 this와 this()가 있다.
	//this()
	public String getName() {
		return this.name;
	}
	public float getHeight() {
		return this.height;
	}
	public float getWeight() {
		return this.weight;
	}
	
	//this() - 생성자 내에서 생성자를 호출할 때 사용
	public Person() {
		this(74.0f);
	}
	public Person(float weight) {
		this("고대윤", 170.5f, weight);
	}
	public Person(String name, float height, float weight) {
		this.name = name;
		this.height = height;
		this.weight = weight;
	}
	
}
