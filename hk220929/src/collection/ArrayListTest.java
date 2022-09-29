package collection;

import java.util.ArrayList;

public class ArrayListTest {
	public static void main(String[] args) {
		ArrayList list1 = new ArrayList();
		//변수 : 1개 값 저장
		//배열 : 여러개 값 저장, 단점: 크기가 정해져있다. int i[] = new int [3];
		//컬렉션: 크기를 가지지 않는 배열
		ArrayList<Integer> list2 = new ArrayList<Integer>();
		//컬렉션에서 어떠한 타입을 저장할지 지정해주는 것이 제네릭 타입이라고 한다.
		list2.add(1); //index 번호 0번
		list2.add(2); //index 번호 1번
		list2.add(3);
		list2.add(4);
		list2.add(5);
		list2.add(6);
		list2.add(7);
		
		System.out.println(list2.get(0));
		
		for(int idx = 0; idx < list2.size(); idx++) {
			System.out.println(list2.get(idx));
		}
		for(int s: list2) {
			System.out.println(s);
		}
		System.out.println();
		list2.add(5);
		for(int s: list2) {
			System.out.println(s);
		}
	}
}
