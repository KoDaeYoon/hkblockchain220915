package hk220919;

public class Ex07 {
	public static void main(String[] args) {
		//int num = Math.random();   이 값은 0 < Math.random() < 1
		int num = (int)(Math.random()*6)+1;
		if(num == 1)
			System.out.println("1입니다.");
		else if(num == 2)
			System.out.println("2입니다.");
		else if(num == 3)
			System.out.println("3입니다.");
		else if(num == 4)
			System.out.println("4입니다.");
		else if(num == 5)
			System.out.println("5입니다.");
		else System.out.println("6입니다.");
		//---------------------------------------------------------
		switch(num) {
		case 1 : System.out.println("1입니다.");break;//break를 안썼을 때 case가 끝나고 멈추지 않고 num에 따라 달라진다.
		case 2 : System.out.println("2입니다.");break;
		case 3 : System.out.println("3입니다.");break;
		case 4 : System.out.println("4입니다.");break;
		case 5 : System.out.println("5입니다.");break;
		default : System.out.println("6입니다.");break;
		}
	} 
}
