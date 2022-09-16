package hk220916;

public class Ex05 {
	public static void main(String[] args) {
		int i = 10; // = 은 대입연산자, 이항연산자
		i = 10 + 20; // + 은 이항연산자
		
		i = 10;
		int i1 = 20;
		int res = i1 + i;
		System.out.println(res);
		res = i1/i;
		System.out.println(res);
		
		i = 3;
		i1 = 10;
		int res1 = i1%i;
		System.out.println(res1);
		
		double d1 = 3;
		double d2 = 10;
		int res2 = (int)(d2/d1);
		System.out.println(res2);
	}
}
