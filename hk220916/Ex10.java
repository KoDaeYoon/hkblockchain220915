package hk220916;

public class Ex10 {
	public static void	main(String[] args) {
		int i = 10;
		int j;
		j = ++i;
		System.out.println(i);
		System.out.println(j);
		j = i++;
		System.out.println(i);
		System.out.println(j);
		
		int x = 10;
		int y;
		y = --x;
		System.out.println(x);
		System.out.println(y);
		
		y = x--;
		System.out.println(x);
		System.out.println(y);
		
		//대입연산자
		int i1 = 10;
		i1 = i1 + 1;
		System.out.println(i1);
		i1++; // 1씩만 증가시키고 싶을 때
		System.out.println(i1);
		i1+=1; // i1 = i1 + 1;  1말고도 더 큰 숫자만큼씩 증가시키고 싶을 때
		System.out.println(i1);
		i1+=2;
		System.out.println(i1);
		i1-=2;
		System.out.println(i1);
		i1*=2;
		System.out.println(i1);
		i1/=2;
		System.out.println(i1);
		i1%=2;
		System.out.println(i1);
		
	}
}
