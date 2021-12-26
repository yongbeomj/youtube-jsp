package dto;

public class Video {
	private int v_no;
	private String v_thumbnail;
	private String v_name;
	private String v_title;
	private String v_detail;
	private String createdate;
	private String updatedate;
	private int m_no;
	private String v_path;
	
	public int getV_no() {
		return v_no;
	}
	public void setV_no(int v_no) {
		this.v_no = v_no;
	}
	public String getV_thumbnail() {
		return v_thumbnail;
	}
	public void setV_thumbnail(String v_thumbnail) {
		this.v_thumbnail = v_thumbnail;
	}
	public String getV_name() {
		return v_name;
	}
	public void setV_name(String v_name) {
		this.v_name = v_name;
	}
	public String getV_title() {
		return v_title;
	}
	public void setV_title(String v_title) {
		this.v_title = v_title;
	}
	public String getV_detail() {
		return v_detail;
	}
	public void setV_detail(String v_detail) {
		this.v_detail = v_detail;
	}
	public String getCreatedate() {
		return createdate;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}
	public String getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(String updatedate) {
		this.updatedate = updatedate;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getV_path() {
		return v_path;
	}
	public void setV_path(String v_path) {
		this.v_path = v_path;
	}
	
	public Video(int v_no, String v_thumbnail, String v_name, String v_title, String v_detail, String createdate,
			String updatedate, int m_no, String v_path) {
		this.v_no = v_no;
		this.v_thumbnail = v_thumbnail;
		this.v_name = v_name;
		this.v_title = v_title;
		this.v_detail = v_detail;
		this.createdate = createdate;
		this.updatedate = updatedate;
		this.m_no = m_no;
		this.v_path = v_path;
	}
	
	public Video(String v_thumbnail, String v_name, String v_title, String v_detail, int m_no, String v_path) {
		this.v_thumbnail = v_thumbnail;
		this.v_name = v_name;
		this.v_title = v_title;
		this.v_detail = v_detail;
		this.m_no = m_no;
		this.v_path = v_path;
	}
	
	public Video() {
		// TODO Auto-generated constructor stub
	}
}
