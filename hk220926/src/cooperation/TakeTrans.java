package cooperation;

public class TakeTrans {
	public static void main(String[] args) {
	Student student1 = new Student("이숭무", 5000);
	Student student2 = new Student("이상범", 6000);
	
	Bus bus1 = new Bus(100);
	student2.takeBus(bus1); //이것을 쓰려면 takeBus를 Student 클래스에 만들어줘야된다.
	student2.showInfo();
	bus1.showInfo();
	
	SubWay subWay1 = new SubWay(1);
	student2.takeSubWay(subWay1);
	student2.showInfo();
	subWay1.showInfo();
	
	SubWay subWay2 = new SubWay(2);
	student2.takeSubWay(subWay2);
	subWay2.showInfo();
	student2.showInfo();
	}
}
