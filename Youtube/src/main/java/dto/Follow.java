package dto;

public class Follow {
	
	private int f_no;
	private int m_no;
	private int c_no;
	
	public Follow() {
		// TODO Auto-generated constructor stub
	}

	public Follow(int f_no, int m_no, int c_no) {
		this.f_no = f_no;
		this.m_no = m_no;
		this.c_no = c_no;
	}
	
	
	public Follow(int m_no, int c_no) {
		
		this.m_no = m_no;
		this.c_no = c_no;
	}

	public Follow(int m_no) {
		
		this.m_no = m_no;
	}

	public int getF_no() {
		return f_no;
	}

	public void setF_no(int f_no) {
		this.f_no = f_no;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
	}
	
	
	
	
	
	
	
	
}
