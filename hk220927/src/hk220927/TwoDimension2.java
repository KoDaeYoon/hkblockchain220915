package hk220927;

public class TwoDimension2 {
	public static void main(String[] args) {
		int [] [] arr = {{1,2,3,4}, {5,6,7,8},{9,10,11,12}};
		for(int x[] : arr) {
			for(int y :x) {
				System.out.print(y);
			}
			System.out.println(); // 한번 돌릴 때 출력 후엔 행을 바꿔달라는 의미
		}
		//가변형 2차원 배열 - for each문
		int [] [] arr1 = {{1,2,3},{1,2},{1,2,3,4}};
		for(int x[] : arr1) {
			for(int y : x) {
				System.out.print(y);
			}
			System.out.println();
		}
		//가변형 2차원 배열 - for문
		for(int x = 0 ; x < arr1.length; x++) {
			for(int y = 0; y < arr1[x].length; y++) {
				System.out.print(arr1[x][y]);
			}
			System.out.println();
		}
		//2차원 배열에서는 행의 크기는 꼭 적어야 되지만 열의 크기는 상관 x
		int [][] arr2 = new int [3][];
		arr2[0] = new int[2];
		arr2[1] = new int[5];
		arr2[2] = new int[4];
		//arr2[0] = new int[] {1,2};
		//arr2[1] = new int[] {1,2,3,4,5};
		//arr2[2] = new int[] {1,2,3,4};
	}
}
