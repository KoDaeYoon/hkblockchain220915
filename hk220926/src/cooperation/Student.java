package cooperation;

public class Student {
	String studentName;
	int grade;
	int money;
	
	//생성자
	public Student(String studentName, int money) {
		this.studentName = studentName;
		this.money = money;
	}
	//매개변수로 객체변수를 사용하면 객체 협력을 할 수 있다.->Bus class의 take를 씀
	public void takeBus(Bus bus) {
		bus.take(1000);
		this.money -= 1000;
	}
	public void takeSubWay(SubWay subWay) {
		subWay.take(1500);
		this.money-= 1500;
	}
	public void showInfo() {
		System.out.println(studentName+"님의 남은 돈은 "+money+"원 입니다.");
	}
}
