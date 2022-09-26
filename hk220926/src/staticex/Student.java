package staticex;

public class Student {
	static int serialNum=1000; // static은 다른 class에서 어떤 수를 공유하기 위해 방을 만드는 느낌.
	int studentId;				//원래는 객체는 heap영역에 존재해야하는데 static을 붙여주면 static 영역에 존재한다.
	String studentName;			//정적 변수, 클래스 변수(클래스 내에 존재하는 변수)
	int grade;
	String address;
	
	//static 메서드는 static 변수만 사용 가능
	public static int getSerialNum() {
		return serialNum;
		//return studentId; 는 불가능.
	} 
	//setter
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	//getter
	public int getStudentId() {
		return studentId;
	}
	public String getStudentName() {
		return studentName;
	}
	public int getGrade() {
		return grade;
	}
	public String getAddress() {
		return address;
	}
}
