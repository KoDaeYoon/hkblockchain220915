package interfaceex;

public interface Calc {
	//인터페이스는 단지 추상메서드만 갖도록 한다. 따라서 abstract도 적어줄 필요 없다.
	double PI = 3.14;
	int ERROR = -9999;
	//인터페이스에는 final 안붙여줘도 상수로 정의된다.
	//추상메서드
	int add(int num1, int num2);
	int substract(int num1, int num2);
	int times(int num1, int num2);
	int divide(int num1, int num2);
	//버전8부터 추가된 개념 default메서드
	default void description() {
		System.out.println("정수 계산기를 구현합니다.");
	}
	static void myStaticMethod() {
		System.out.println("static 메서드 입니다.");
	}
}
