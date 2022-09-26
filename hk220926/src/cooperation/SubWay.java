package cooperation;

public class SubWay {
	int lineNumber;
	int passengerCount;
	int money;
	//지하철 호선을 매개변수로 받는 생성자
	public SubWay(int lineNumber) {
		this.lineNumber = lineNumber;
	}
	//승객이 지하철에 탄 경우를 구현한 메서드
	public void take(int money) {
		this.money+=money;
		this.passengerCount++;
	}
	//지하철 정보를 출력하는 메서드
	public void showInfo() {
		System.out.println(lineNumber+"호선의 승객은 "+passengerCount+"명이고 수익은 "+money+"원입니다.");
	}
}
