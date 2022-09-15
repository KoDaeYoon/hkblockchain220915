package hk220915;

public class Variable6 {
	public static void main(String[] args) {
		float f = 10;
		System.out.println(f);
		f = 10.5f; // 실수는 8byte이고 f는 4byte이면 에러가 생김. 따라서 실수 뒤에 f를 붙여준다(overflow하지말라는 뜻)
		System.out.println(f);
		double d = 10.5; // 양쪽 모두 8byte라 상관 없음
		System.out.println(d);
		d = 1001.0000000000159;
		System.out.println(d);
		f = (float)d;   // 8byte를 4byte로 변환시키는 것.
		System.out.println(f);
	}
}
