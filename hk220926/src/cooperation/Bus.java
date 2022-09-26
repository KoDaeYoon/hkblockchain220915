package cooperation;

public class Bus {
	int busNumber;
	int passengerCount;
	int money;
	
	//생성자 - passengerCount와 money는 변하는 수이기때문에 busNumber만 생성자로 만들어준다.
	public Bus(int busNumber) {
		this.busNumber = busNumber;
	}
	//승객이 버스에 탄 경우를 구현한 메서드
	public void take(int money) {
		this.money+=money;
		this.passengerCount++;
	}
	//버스 정보를 출력하는 메서드
	public void showInfo() {
		System.out.println("버스 "+busNumber+"번의 승객은 "+passengerCount+"명이고 수익은 "+money+"원입니다.");
	}
}
