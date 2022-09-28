package interfaceex;

public abstract class Calculator implements Calc{
//인터페이스는 추상메서드로만 되어 있으니 구현(implements)해서 사용해야된다.
	@Override
	public int add(int num1, int num2) {
		return num1 + num2;
	}

	@Override
	public int substract(int num1, int num2) {
		return num1-num2;
	}
	//default메서드도 상속해서 재정의할 수 있다.
	public void description() {
		System.out.println("정수 계산기를 구현합니다.");
	}
}
