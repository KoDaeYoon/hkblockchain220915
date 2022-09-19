package hk220919;

public class Ex05 {
	public static void main(String[] args) {
		int score = 5;
		if (score>=90) System.out.println("A");
		else if(score>=80) System.out.println("B");
		else if(score>=70) System.out.println("C");
		else if(score>=60) System.out.println("D");
		else System.out.println("F");
		//-----------------------------------------------------------
		int age = 7;
		int money=2000;
		if(age<8) {
			money = 2000;
			System.out.println("취학 전 아동");
		}else if(age<14) {
			money = 4000;
			System.out.println("초등학생");
		}else if(age<17) {
			money = 6000;
			System.out.println("중학생");
		}else if(age<20) {
			money = 8000;
			System.out.println("고등학생");
		}else {
			money = 10000;
			System.out.println("성인");
		}   System.out.println(money);
	}
}
