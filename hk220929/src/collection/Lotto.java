package collection;

import java.util.ArrayList;

public class Lotto {
	public static void main(String[] args) {
		ArrayList<Integer> lottoNum = new ArrayList<Integer>();
		for(int i = 1; i <= 45 ; i++) {
			lottoNum.add(i);
		}
		int lottoSize;
		for(int i = 1; i <= 6; i++) {
		lottoSize = lottoNum.size();
		int idx = (int)(Math.random()*lottoSize);
		int lotto = lottoNum.remove(idx);
		System.out.print(lotto + ",");
		}
	}
}
//배열로 하면 비복원추출이 불가하다 - 크기가 정해져있기 때문에.. 따라서 collection으로 
//만들어야 한다. 