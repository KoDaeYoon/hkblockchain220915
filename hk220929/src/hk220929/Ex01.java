package hk220929;

public class Ex01 {
	public static void main(String[] args) {
		Object obj = 10;
		obj = "123123132awdasd";
		obj = new Ex01();
		obj = 18.0;
		System.out.println((double)obj+10);
		//System.out.println(obj+10); object는 여러값을 가지고 있기 때문에 어떤 것을 출력할지 미리 알려줘야된다.	
	}
}
//object 타입은 어떠한 것도 다 받아들인다. var라는 타입도 있다.
