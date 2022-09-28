package scheduler;

import java.io.IOException;

public class SchedulerTest1 {
	public static void main(String[] args) throws IOException {
		Scheduler scheduler = null;
		System.out.println("전화 상담 할당 방식을 선택하세요.");
		System.out.println("R: 한명씩 차례로 할당");
		System.out.println("L: 쉬고 있거나 대기가 가장 적은 상담원에게 할당");
		System.out.println("P: 우선순위가 높은 고객 먼저 할당");
		int ch = System.in.read(); // 문자를 칠 수 있게 만들어줌.
		if(ch == 'R'|| ch =='r') {
		Scheduler1 sch1 = new Scheduler1();
		sch1.getNextCall();
		sch1.sendCallToAgent();
		}else if(ch == 'L' || ch =='l') {
		Scheduler1 sch1 = new Scheduler1();
		sch1.getNextCall1();
		sch1.sendCallToAgent1();
		}else if(ch =='P' || ch == 'p') {
		Scheduler1 sch1 = new Scheduler1();
		sch1.getNextCall2();
		sch1.sendCallToAgent2();
		}
		//인터페이스를 상속시키지 않았을 때 복잡해지는 경우
	}
}
