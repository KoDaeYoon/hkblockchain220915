package hk220920;

public class Ex07 {
	public static void main(String[] args) {
		int sum = 0;
		for(int i = 1; i<=10 ; i++) {
			sum += i;
		}
		System.out.println(sum);
		System.out.println("------------------------------");
		//-----------------------------------------------------
		sum = 0;
		int i = 1; // 밖에 초기 값을 빼내도 상관없음.
		for(; i<=10 ; i++) {
			sum += i;
		}
		System.out.println(sum);
		System.out.println("----------------------------------");
		//-------------------------------------------------------
		sum = 0;
		i = 1; 
		for(; i<=10 ;) {
			sum += i;
			i++;
		}
		System.out.println(sum);
		System.out.println("----------------------------------");
		//---------------------------------------------------
		sum = 0;
		i = 1; 
		while(i<=10) {
			sum += i;
			i++;
		}
		System.out.println(sum);
	}
}
