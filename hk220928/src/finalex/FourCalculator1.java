package finalex;

public class FourCalculator1 extends Calculator1{
	public int mul() {
		return num1 * num2;
	}
	public int div() {
		return num1/num2;
	}
	//@Override
	//public int sub() { //final은 재정의할 수 없는 메서드 -> 에러뜸
	//	return num1 - num2;
	//}
}	
