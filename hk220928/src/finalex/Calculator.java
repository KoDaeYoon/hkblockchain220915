package finalex;

public final class Calculator {
	//class에 final이 있으면 상속 불가능하다.
	int num1;
	int num2;
	
	public void setData(int num1, int num2) {
		this.num1 = num1;
		this.num2 = num2;
	}
	public int add() {
		return num1 + num2;
	}
	public int sub() {
		return num1 - num2;
	}
	
}