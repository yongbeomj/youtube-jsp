package dto;

public class Channel {
	private int cb_no;
	private int cb_m_no;
	private String cb_title;
	private String cb_contents;
	private String createdate;
	private String updatedate;
	
	public int getCb_no() {
		return cb_no;
	}
	public void setCb_no(int cb_no) {
		this.cb_no = cb_no;
	}
	public int getCb_m_no() {
		return cb_m_no;
	}
	public void setCb_m_no(int cb_m_no) {
		this.cb_m_no = cb_m_no;
	}
	public String getCb_title() {
		return cb_title;
	}
	public void setCb_title(String cb_title) {
		this.cb_title = cb_title;
	}
	public String getCb_contents() {
		return cb_contents;
	}
	public void setCb_contents(String cb_contents) {
		this.cb_contents = cb_contents;
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
	
	public Channel(int cb_no, int cb_m_no, String cb_title, String cb_contents, String createdate, String updatedate) {
		this.cb_no = cb_no;
		this.cb_m_no = cb_m_no;
		this.cb_title = cb_title;
		this.cb_contents = cb_contents;
		this.createdate = createdate;
		this.updatedate = updatedate;
	}
	
	public Channel() {
		// TODO Auto-generated constructor stub
	}
}
