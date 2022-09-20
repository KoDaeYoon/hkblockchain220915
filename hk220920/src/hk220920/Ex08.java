package hk220920;

public class Ex08 {
	public static void main(String[] args) {
		int sum = 0;
		for(int i = 1; i <=10 ; i++) {
			sum+=i;
		}
		System.out.println(sum);
		System.out.println("------------while-----------");
		//--------------------------------------------
		sum = 0;
		int j = 1;
		while(j<=10) {
			sum += j;
			j++;
		}
	}
}
