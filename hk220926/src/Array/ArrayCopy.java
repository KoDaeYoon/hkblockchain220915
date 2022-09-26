package Array;

public class ArrayCopy {
	public static void main(String[] args) {
		int[] array1 = {10,20,30,40,50};
		int[] array2 = {1,2,3,4,5};
		System.out.println(array1[0]);
		System.out.println(array2[0]);
		//array1을 array2에 copy
		array2 = array1; // 주소를 저장하라는 뜻이 된다. 
		//얕은 복사 - 주소를 복사하는 것을 얕은 복사라고 한다.(쓰면 안좋음)
		System.out.println(array1[0]);
		System.out.println(array2[0]);
		array2[0] = 1;
		System.out.println(array2[0]);
		System.out.println(array1[0]); //10이 나올 것 같지만 array2 = array1에 의해 1이나온다.
		
		//깊은 복사
		int [] array3 = {1,2,3,4,5};
		array3[0] = array1[0];
		array3[1] = array1[1];
		array3[2] = array1[2];
		System.out.println(array1[0]);
		System.out.println(array3[0]);
		array3[0] = 10;
		System.out.println(array3[0]);
		System.out.println(array1[0]); // 얕은 복사였으면 얘도 값이 10으로 출력됐을 것이다.
		
		for(int idx = 0 ; idx < array1.length; idx++) {
			array3[idx] = array1[idx];
			System.out.println(array1[idx]);
		}
	}
}
