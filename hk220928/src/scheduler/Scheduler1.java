package scheduler;

public class Scheduler1 {
	public void getNextCall() {
		System.out.println("상담 전화를 순서대로 대기열에서 가져옵니다.");
	}
	public void sendCallToAgent() {
		System.out.println("다음 순서 상담원에게 배분합니다.");
	}
	public void getNextCall1() {
		System.out.println("상담 전화를 순서대로 대기열에서 가져옵니다.");
	}
	public void sendCallToAgent1() {
		System.out.println("현재 상담업무가 없거나 상담대기가 가장 작은 상담원에게 할당합니다.");
	}
	public void getNextCall2() {
		System.out.println("고객 등급이 높은 고객의 전화를 먼저 가져옵니다.");
	}
	public void sendCallToAgent2() {
		System.out.println("업무 skill 값이 높은 상담원에게 우선적으로 배분합니다.");
	}
	//인터페이스를 상속시키지 않았을 때 복잡해지는 경우
}
