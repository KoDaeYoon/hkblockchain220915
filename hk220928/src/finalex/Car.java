package finalex;

public abstract class Car {
	public abstract void drive();
	public abstract void stop();
	
	public void startCar() {
		System.out.println("시동을 켭니다.");
	}
	public void turnOff() {
		System.out.println("시동을 끕니다.");
	}
	final void run() { // 재정의 불가
		startCar();
		drive();
		stop();
		turnOff();
	}
}
