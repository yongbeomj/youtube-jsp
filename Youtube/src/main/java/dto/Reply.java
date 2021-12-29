package dto;

import dao.ChannelDao;

public class Reply {

	private int r_no;
	private int m_no;
	private int v_no;
	private int c_no;
	private String r_contents;
	private String r_date;
	private String c_name;

	//빈 생성자
	public Reply() {}

	
	
	//풀 생성자
	public Reply(int r_no, int m_no, int v_no, int c_no, String r_contents, String r_date) {
		super();
		this.r_no = r_no;
		this.m_no = m_no;
		this.v_no = v_no;
		this.c_no = c_no;
		this.r_contents = r_contents;
		this.r_date = r_date;
		this.c_name = ChannelDao.getChannelDAO().getChannelName(m_no);
		
	}

	//리플 등록
	public Reply(int m_no, int v_no, String r_contents) {
		super();
		this.m_no = m_no;
		this.v_no = v_no;
		this.r_contents = r_contents;
	}

	
	public Reply(int m_no, int v_no, int c_no, String r_contents) {
		super();
		this.m_no = m_no;
		this.v_no = v_no;
		this.c_no = c_no;
		this.r_contents = r_contents;
	}



	//리플 수정
	public Reply(int r_no, String r_contents) {
		this.r_no = r_no;
		this.r_contents = r_contents;
	}
	

	//getter setter
	public int getM_no() {
		return m_no;
	}


	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}


	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getR_contents() {
		return r_contents;
	}

	public void setR_contents(String r_contents) {
		this.r_contents = r_contents;
	}

	public int getV_no() {
		return v_no;
	}

	public void setV_no(int v_no) {
		this.v_no = v_no;
	}

	public String getR_date() {
		return r_date;
	}

	public void setR_date(String r_date) {
		this.r_date = r_date;
	}



	public int getC_no() {
		return c_no;
	}



	public void setC_no(int c_no) {
		this.c_no = c_no;
	}


	

	
	
	
}