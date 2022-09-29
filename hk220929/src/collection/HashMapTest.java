package collection;

import java.util.HashMap;

public class HashMapTest {
	public static void main(String[] args) {
		HashMap<Integer,String> map = new HashMap<>();
		map.put(1, "이숭무");  //넣을때는 put
		map.put(2, "이상범");
		map.put(3, "이장범");
		map.put(4, "고대윤");
		
		map.get(1); //받아올때는 get
		System.out.println(map.get(3)); //key가 있어서 index 번호를 쓸 필요가 없다.
		
		map.put(3, "강원일");
		System.out.println(map.get(3));//key가 미리 지정된 경우 수정해버림.
		
		map.remove(3);
		System.out.println(map);
		System.out.println(map.isEmpty());
		//keyset은 키 묶음을 얘기함
		for(Integer key : map.keySet()) {
			System.out.println(map.get(key));
		}
	}
}
