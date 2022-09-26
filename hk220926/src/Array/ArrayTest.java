package Array;

public class ArrayTest {
	public static void main(String[] args) {
		int i = 10;
		int [] i1 = new int [10]; // new int[몇개의 변수를 저장할건지]
		i1[2] = 11; //3번째 공간 -> 0이 첫번째 공간
		
		double d = 10.5;
		double [] d1 = new double[15]; //new는 heap영역에 객체를 만들기 위한 연산자이다.
		d1[3] = 100.5; //double d1[]로 써도 됨.
		
		System.out.println(i1[2]);
		System.out.println(d1[3]);
		System.out.println(i1[3]); //배열을 만들면 기본적으로 0 값이 들어간다.
		
		int [] i2 = new int[5];
		int [] i3; // 배열 변수로 사용하겠다고 이미 연산자를 사용했기때문에
		i3 = new int[4]; //여긴 따라오면 안됨.
		
		//배열의 초기화
		int i4[] = new int[4];
		for(int idx = 0; idx < 4; idx++) {
			System.out.println(i4[idx]);
		}
		int i5[] = new int[] {100,200,300,400};//초기값 개수만큼 배열이 만들어진다. 내가 직접 배열을 만들 수 있다.
		for(int idx = 0; idx < 4; idx++) {
			System.out.println(i5[idx]);
		}
		
		int i6[];
		i6 = new int[] {100,200,300,400}; //초기화를 나눠서 해도 똑같다.
		
		//int i7[] = new int[4] {100,200,300,400}; 크기를 정해주면 안된다.
		
		int i8[] = {100,200,300,400}; //new int[] 안적어줘도 됨.
		for(int idx = 0; idx < 4; idx++) {
			System.out.println(i8[idx]);
		}
		//int i9[];
		//i9 = {100,200,300,400}; -> 이건 불가능
		
		int iiii = 10;
		int y = iiii; // int y = 10;이랑 같은 개념
		i8[2] = 100;
		y = i8[2]; // y = 100;이랑 같은 개념
		
		int arr[] = new int[] {3,6,9,12};
		y = arr[0]+2;
		System.out.println(y);
		y = arr[1]+arr[2];
		System.out.println(y);
		//y = arr[4]-3; -> 오류, 범위를 벗어났기 때문이다.
		//System.out.println(y);
	}
}
