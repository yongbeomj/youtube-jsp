package dto;

public class Login {

	// 필드
	private int m_no;
	private String id;
	
	// 생성자
	public Login() {
		// TODO Auto-generated constructor stub
	}

	public Login(int m_no, String id) {
		this.m_no = m_no;
		this.id = id;
	}

	// 메소드
	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	

	
	
}
