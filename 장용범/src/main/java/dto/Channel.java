package dto;

public class Channel {
	private int c_no;
	private int m_no;
	private String c_name;
	private String c_image;
	private String c_createdate;
	private String c_updatedate;
	private String c_info;
	private String c_presentation;
	
	public int getC_no() {
		return c_no;
	}
	public void setC_no(int c_no) {
		this.c_no = c_no;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_image() {
		return c_image;
	}
	public void setC_image(String c_image) {
		this.c_image = c_image;
	}
	public String getC_createdate() {
		return c_createdate;
	}
	public void setC_createdate(String c_createdate) {
		this.c_createdate = c_createdate;
	}
	public String getC_updatedate() {
		return c_updatedate;
	}
	public void setC_updatedate(String c_updatedate) {
		this.c_updatedate = c_updatedate;
	}
	public String getC_info() {
		return c_info;
	}
	public void setC_info(String c_info) {
		this.c_info = c_info;
	}
	public String getC_present() {
		return c_presentation;
	}
	public void setC_present(String c_present) {
		this.c_presentation = c_present;
	}
	
	public Channel(int c_no, int m_no, String c_name, String c_image, String c_createdate, String c_updatedate,
			String c_info, String c_present) {
		this.c_no = c_no;
		this.m_no = m_no;
		this.c_name = c_name;
		this.c_image = c_image;
		this.c_createdate = c_createdate;
		this.c_updatedate = c_updatedate;
		this.c_info = c_info;
		this.c_presentation = c_present;
	}
	
	public Channel(int m_no, String c_name, String c_image, String c_info, String c_present) {
		this.m_no = m_no;
		this.c_name = c_name;
		this.c_image = c_image;
		this.c_info = c_info;
		this.c_presentation = c_present;
	}
	
	public Channel() {
		// TODO Auto-generated constructor stub
	}
}