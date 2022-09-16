package hk220916;

public class Ex07 {
	public static void main(String[] args) {
		int i = 10;
		i = i + 1;
		System.out.println(i); //11
		i = i + 1;
		System.out.println(i); // 12
		i = i + 1;
		System.out.println(i); // 13
		i++; // i++ -> i = i + 1과 같다. ++i도 가능.
		System.out.println(i); // 14
		i++; // 후행
		System.out.println(i); // 15
		++i; // 선행
		System.out.println(i); // 16
		System.out.println(++i); // 17
		System.out.println(i++); // 17
		System.out.println(i); // 18
	}
}
