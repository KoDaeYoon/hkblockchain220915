package hk220921;

public class Calculator { //사용자 자료형
	int num1;
	int num2; // 멤버필드(파란색)
	int result;
	// 멤버필드를 사용하기 위한 기능 구현: 메서드, 함수
	// 괄호 안에 있는 애들을 parameter-매개변수, 가인자 라고 부름(int num11, int num12) 
	public void setData1(int num11, int num12, int num13) {
		//피호출 메서드
		this.num1 = num11;// 파라미터(갈색)
		this.num2 = num12; //멤버필드에 파라미터 값을 넣는다는 뜻.
		//this는 이 변수가 멤버필드라는 것을 보여준다. 파란색으로 바꿔줌(파란색이 아닐때)
	}
	     //반환형
	public int add() {
		result = num1 + num2;
		return result; // 호출 함수쪽으로 값을 반환해준다.
	}
	public int sub() {
		result = num1 - num2;
		return result;
	}
	public int mul() {
		result = num1 * num2;
		return result;
	}
	public int div() {
		result = num1 / num2;
		return result;
	}
}
