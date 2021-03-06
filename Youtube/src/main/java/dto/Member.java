package dto;

public class Member {

	// 필드
	private int m_no; 
	private String m_id; 
	private String m_pw;
	private String m_name; 
	private String m_birth; 
	private String m_phone;
	private String m_date;
	private String m_image;
	
	// 생성자
	public Member() {
		// TODO Auto-generated constructor stub
	}


	public Member(int m_no, String m_id, String m_pw, String m_name, String m_birth, String m_phone, String m_date,
			String m_image) {
		this.m_no = m_no;
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_birth = m_birth;
		this.m_phone = m_phone;
		this.m_date = m_date;
		this.m_image = m_image;
	}

	// 프로필사진 미선택
	public Member(String m_id, String m_pw, String m_name, String m_birth, String m_phone) {
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_birth = m_birth;
		this.m_phone = m_phone;
	}
	
	// 프로필사진 선택
	public Member(String m_id, String m_pw, String m_name, String m_birth, String m_phone, String m_image) {
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_birth = m_birth;
		this.m_phone = m_phone;
		this.m_image = m_image;
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

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_birth() {
		return m_birth;
	}

	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}


	public String getM_date() {
		return m_date;
	}


	public void setM_date(String m_date) {
		this.m_date = m_date;
	}


	public String getM_image() {
		return m_image;
	}


	public void setM_image(String m_image) {
		this.m_image = m_image;
	}
	
	
	
	
}
