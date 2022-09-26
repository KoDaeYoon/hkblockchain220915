package constructor;

//멤버 필드, 멤버 메서드, 생성자를 모두 하나로 묶은 것이 class이다 : 캡슐화 : 정보의 은닉을 할 수 있다.
public class Member {
	String name;
	int nai;
	String addr;
	public Member() {}
	public Member(String name, int nai, String addr) {
		this.name = name;
		this.nai = nai;
		this.addr = addr;
	}
	
	//setter만들기
	public void setName(String name) {
		this.name = name;
	}
	public void setnai(int nai) {
		this.nai = nai;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	//getter만들기 
	public String getName() {
		return name;
	}
	public int getNai() {
		return nai;
	}
	public String getAddr() {
		return addr;
	}
}
