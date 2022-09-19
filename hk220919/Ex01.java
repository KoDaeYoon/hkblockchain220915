package hk220919;

public class Ex01 {
	public static void main(String[] args) {
		int i = 6;
		System.out.println(i > 5); 
		if(i > 5) {
			System.out.println("i는 5보다 큽니다.");
			
		int i3 = 65;
		int i4 = 75;
		int i5 = 85;
		boolean result;
		result = i3 > i5; //(i3 > i5)로 괄호를 쳐주면 가독성이 높아진다.
		System.out.println(result);
		result = i4 < i3;
		System.out.println(result);
		result = i4 == i5;
		System.out.println(result);
		result = i3 != i5;
		System.out.println(result);
		}
	}
}
