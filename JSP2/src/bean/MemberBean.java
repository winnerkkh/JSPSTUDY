package bean;

public class MemberBean {
	
	//데이타를 은닉하기위해 항상 필드는 private으로 해줘야함
	//jsp에 있는 name(변수명과) 필드 이름을 항상 일치시켜줘야 매핑이 됨.
	private String id;
	private String pass1;
	private String email;
	private String tel;
	private String address;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass1() {
		return pass1;
	}
	public void setPass1(String pass1) {
		this.pass1 = pass1;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	
}
