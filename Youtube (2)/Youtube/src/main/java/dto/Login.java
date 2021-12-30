package dto;

public class Login {

	// 필드
	private int m_no;
	private String m_id;
	
	// 생성자
	public Login() {
		// TODO Auto-generated constructor stub
	}

	public Login(int m_no, String m_id) {
		this.m_no = m_no;
		this.m_id = m_id;
	}


	// 메소드
	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	

	
	
}
