package staticex;

public class Student {
	static int serialNum = 1000; //heap영역이 아닌 static 영역에 만들어지게 함.
	int studentId;               // static영역은 굳이 setter를 사용하지 않아도 됨.
	String studentName;          // static은 정적인 변수, 클래스변수
	int grade;                   //정적인 변수는 모든 객체가 공유하는 데이터를 만들어서 사용
	String address;
	
	public static int getSerialNum() {
		return serialNum;
	}
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
	//public void setSerialNum(int serialNum) {
	//	this.serialNum = serialNum;
	//}
	public void setStudentId(int studentId) {
		this.studentId= studentId;
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
}
