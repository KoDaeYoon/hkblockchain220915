package hk220921;

public class Member {
	private String memberNum; //private는 접근지정자?
	private String memberName;
	private int memberAge;
	
	public void setMemberNum(String memberNum) { //값을 받는 set
		this.memberNum = memberNum;
	}
	public String getMemberNum() { // 값을 보내는 get
		return memberNum;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberAge(int memberAge) {
		this.memberAge = memberAge;
	}
}
