package hk220919;

public class Ex04 {
	public static void main(String[] args) {
		int score = 55;
		if(score >= 60) System.out.println("합격");
		else System.out.println("불합격"); 
		// ---------------------------------------------
		char man = 'm';
		if (man == 'm') {
			System.out.println("남자");
		}else {
			System.out.println("여자");
		}
		//3000원 이상이면 "차를 타고 가시오" 아니면 "걸어가시오"를 출력하시오
		int money = 3000;
		if (money >=3000) {
			System.out.println("차를 타고 가시오");
		}else {
			System.out.println("걸어가시오");
		}
		// 8세이상이면 "학교에 다닙니다" 아니면 "학교에 다니지 않습니다"
		int age = 7;
		if(age>=8) {
			System.out.println("학교에 다닙니다");
		}else {
			System.out.println("학교에 다니지 않습니다");
		}
		
	}
}
