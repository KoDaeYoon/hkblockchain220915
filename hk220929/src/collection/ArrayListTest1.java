package collection;

import java.util.ArrayList;

public class ArrayListTest1 {
	public static void main(String[] args) {
		ArrayList<String> list1 = new ArrayList<String> ();
		list1.add("이숭무");
		list1.add("이상범");
		list1.add("이상범");
		list1.add("이장범");
		for(String s:list1) {
			System.out.println(s);
		}
		System.out.println("---------------------");
		list1.add(2, "고대윤"); //index number=2에 "고대윤" 추가
		for(String s:list1) {
			System.out.println(s);
		}
		System.out.println("---------------------");
		list1.remove(3); //index number=3을 삭제
		for(String s:list1) {
			System.out.println(s);
		}
		System.out.println("---------------------");
		list1.remove("이상범"); //지정한 값 삭제
		for(String s:list1) {
			System.out.println(s);
		}
		System.out.println("---------------------");
		list1.clear();
		for(String s:list1) {
			System.out.println(s);
		}
		System.out.println(list1.isEmpty()); //list1이 비어 있나요?
		System.out.println(list1.size()); //list1의 크기는 얼마인가요?
		
		list1.add("이숭무");
		list1.add("이상범");
		list1.add("이상범");
		list1.add("이장범");
		
		System.out.println(list1.subList(2, 2+1));
		//2번째 index포함 하나 가져와라
		System.out.println(list1.subList(2, 2+2));
		////2번째 index포함 두개 가져와라
		System.out.println("---------------------");
		ArrayList list2 = new ArrayList(list1.subList(1, 1+2));
		System.out.println(list2);
	}
}
