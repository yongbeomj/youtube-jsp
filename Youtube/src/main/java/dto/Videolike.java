package dto;

public class Videolike {

	private int vl_no;
	private int v_no;
	private int m_no;
	
	public Videolike() {}

	public Videolike(int vl_no, int v_no, int m_no) {
		this.vl_no = vl_no;
		this.v_no = v_no;
		this.m_no = m_no;
	}
	public Videolike(int m_no) {
		this.m_no = m_no;
	}

	public int getVl_no() {
		return vl_no;
	}

	public void setVl_no(int vl_no) {
		this.vl_no = vl_no;
	}

	public int getV_no() {
		return v_no;
	}

	public void setV_no(int v_no) {
		this.v_no = v_no;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	
	
}
