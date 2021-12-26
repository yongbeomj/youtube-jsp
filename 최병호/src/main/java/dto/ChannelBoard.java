package dto;

public class ChannelBoard {
	
	private int cb_no;
	private int c_no;
	private String cb_title;
	private String cb_contents;
	private String cb_createdate;
	private String cb_updatedate;
	private String cb_image;
	
	public ChannelBoard() {
		
	}

	public ChannelBoard(int cb_no, int c_no, String cb_title, String cb_contents, String cb_createdate,
			String cb_updatedate, String cb_image) {
		
		this.cb_no = cb_no;
		this.c_no = c_no;
		this.cb_title = cb_title;
		this.cb_contents = cb_contents;
		this.cb_createdate = cb_createdate;
		this.cb_updatedate = cb_updatedate;
		this.cb_image = cb_image;
	}
	
	public ChannelBoard(int c_no, String cb_title, String cb_contents, String cb_image) {
		this.c_no = c_no;
		this.cb_title = cb_title;
		this.cb_contents = cb_contents;
		this.cb_image = cb_image;
	}

	public int getCb_no() {
		return cb_no;
	}

	public void setCb_no(int cb_no) {
		this.cb_no = cb_no;
	}

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
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

	public String getCb_createdate() {
		return cb_createdate;
	}

	public void setCb_createdate(String cb_createdate) {
		this.cb_createdate = cb_createdate;
	}

	public String getCb_updatedate() {
		return cb_updatedate;
	}

	public void setCb_updatedate(String cb_updatedate) {
		this.cb_updatedate = cb_updatedate;
	}

	public String getCb_image() {
		return cb_image;
	}

	public void setCb_image(String cb_image) {
		this.cb_image = cb_image;
	}	
	
	
	

	
	
}
