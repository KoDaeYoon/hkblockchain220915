package Array;

public class ArrayTest3 {
	public static void main(String[] args) {
		double[] data = new double[5];
		int size = 0;
		data [0] = 100.0; size++;
		data [1] = 200.0; size++;
		data [2] = 300.0; size++;
		// size 크기만큼만 출력하세요.
		for(int idx = 0; idx < size; idx++) {
			System.out.println(data[idx]);
		}
		// 저장된 값 전부를 출력하세요.
		for(int idx = 0; idx < data.length; idx++) {
			System.out.println(data[idx]);
		}
	}
}
