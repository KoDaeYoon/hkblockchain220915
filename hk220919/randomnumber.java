package hk220919;

public class randomnumber {
	public static void main(String[] args) {
		//int num = Math.random();   이 값은 0 < Math.random() < 1
		int num = (int)(Math.random()*6)+1;
		if(num == 1)
			System.out.println("1입니다.");
		else if(num ==2)
			System.out.println("2입니다.");
		else if(num ==3)
			System.out.println("3입니다.");
		else if(num ==4)
			System.out.println("4입니다.");
		else if(num ==5)
			System.out.println("5입니다.");
		else System.out.println("6입니다.");
	} 
}