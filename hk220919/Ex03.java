package hk220919;

public class Ex03 {
	public static void main(String[] args) {
		int i = 10;
		if(i<20) {
			System.out.println("작다");// 하나일 떄는 굳이 { } 안써도 됨
		}
		if(i<20) {
			System.out.println("i가");
			System.out.println("작다");
		}
		System.out.println("--------------------------------------");
		i = 30;
		if(i<20) System.out.println("i가");
		         System.out.println("작다"); // 바로 다음거만 if문의 영향을 받고 뒤에거부터는 if문의 영향을 받지 않고 실행
		
		int money = 3000;
		// 3000원 이상이면 "차를 타고 가시오"를 출력
		if(money>=3000) 
			System.out.println("차를 타고 가시오");
			System.out.println("if문 종료");
		money = 2000;
		// 3000원 이상이면 "차를 타고 가시오"를 출력
		if(money>=3000) 
			System.out.println("차를 타고 가시오");
			System.out.println("if문 종료");			
	}
}
