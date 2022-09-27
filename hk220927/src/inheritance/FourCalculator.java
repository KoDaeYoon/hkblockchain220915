package inheritance;

public class FourCalculator extends Calculator{
	//private 빼고 전부 상속 가능
	public int sub() {
		result = num1 - num2;
		return result;
	}
	public int mul() {
		result = num1 * num2;
		return result;
	}
	//상속받은 부모 클래스의 메서드를 내가 다시 정의한 것을 메서드 오버라이딩이라고 한다.
	@Override
	public int div() { //메서드 오버라이딩
		if(num2==0) {
			return 0;
		}else {
			return num1 / num2;
		}
	}
	//pDiv()를 부모클래스의 오버라이딩된 메서드를 사용하고자 할때 사용하는 것이 super.이다
	public int pDiv() {
		return super.div();
	}
	
}
