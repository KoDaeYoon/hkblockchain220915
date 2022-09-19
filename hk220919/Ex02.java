package hk220919;

public class Ex02 {
	public static void main(String[] args) {
		int kor = 65;
		int eng = 75;
		int mat = 85;
		boolean result = kor >= 60 && eng >= 60 && mat >= 60;
		System.out.println(result);
		//---------------------------------------------------------
		System.out.println(!true); // 관계식 앞에 !을 붙여 반대의 조건을 붙임.
		boolean bl = true; 
		System.out.println(!bl);
		System.out.println(!!bl);
		//---------------------------------------------------
		int i3 = 65;
		int i4 = 75;
		int i5 = 85;
		boolean b5, b6, b7;
		b5 = i3 > i4;
		b6 = i4 < i5;
		b7 = b5 || b6;
		System.out.println(b7);
		//------------------------------------------------------
		float f1 = 10.1f; // 4byte
		double d = 10.1; // 8byte
		result = f1 == d;
		System.out.println(f1);
		System.out.println(d);
		System.out.println(result); // byte가 달라서 다르다.
		result = (double)f1 ==d;
		System.out.println(result); // 왜?ㅋㅋㅋㅋㅋㅋㅋ설명좀
		//------------------------------------------------------
		//문제
		int y1 = 2200;
		boolean b1 = y1 % 4 == 0;
		boolean b2 = y1 % 100 != 0;
		boolean b3 = y1 % 400 == 0;
		boolean b4 = b1 && b2 || b3;
		System.out.println(b4);
		
		if(b4) {
			System.out.println("윤년");
		}else {
			System.out.println("평년");
		}
		//-------------------------------------------------------
		int num1 = 10;
		int i = 2;
		boolean value = (num1 = num1 +10) < 10 
						&& (i = i+2) < 10;
		System.out.println(value); // false인데 앞이 false이면 &&일떄 뒷값이 무엇이든 간에 값은 false가 나올거니까 뒷항이 계산되지 않는다.
		System.out.println(num1); // 20
		System.out.println(i); // 2 *하지만 여기서 &&이 ||으로 바뀌게 되면 이 값은 4가 될 것이다.
		//--------------------------------------------------------------
		int i11 = 10 > 5 ? 10 : 5; // 10 > 5이면 10을 출력, 아니면 5출력이라는 뜻(삼항 연산자)
		System.out.println(i11); // 삼항연산자는 ? 와 :로 이루어져있다.
		// 1항이 true이면 2항 출력, 아니면 3항 출력으로 생각.==> 1항은 참 또는 거짓이 와야한다.
		//--------------------------------------------------------------------
		
		
	}
}
