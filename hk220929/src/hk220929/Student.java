package hk220929;

public class Student {
	int money;
	String name;
	Student(int money, String name){
		this.money = money;
		this.name = name;
	}
	//                 매개변수를 객체변수로 사용한 예
	public void use(Object obj) {
		if(obj instanceof Bus) {
			((Bus)obj).takeBus(1000);
		}else {
			((SubWay)obj).takeSub(1000);
		}
	}	
}	
//object는 모든 객체를 받아들이기 때문에 instanceof를 쓸 수 있다.
