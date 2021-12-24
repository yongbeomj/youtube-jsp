package dto;

public class Video {
	
	//필드
	private int v_no;
	private int c_no;
	private String v_thumbnail;
	private String v_name;
	private String v_detail;
	private String v_createdate;
	private String v_updatedate;
	private String v_path;

	//생성자
	public Video() {}

	public Video(int v_no, int c_no, String v_thumbnail, String v_name, String v_detail, String v_createdate,
			String v_updatedate, String v_path) {
		super();
		this.v_no = v_no;
		this.c_no = c_no;
		this.v_thumbnail = v_thumbnail;
		this.v_name = v_name;
		this.v_detail = v_detail;
		this.v_createdate = v_createdate;
		this.v_updatedate = v_updatedate;
		this.v_path = v_path;
	}






	public String getV_path() {
		return v_path;
	}

	public void setV_path(String v_path) {
		this.v_path = v_path;
	}

	public int getV_no() {
		return v_no;
	}

	public void setV_no(int v_no) {
		this.v_no = v_no;
	}

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
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

	public String getV_detail() {
		return v_detail;
	}

	public void setV_detail(String v_detail) {
		this.v_detail = v_detail;
	}

	public String getV_createdate() {
		return v_createdate;
	}

	public void setV_createdate(String v_createdate) {
		this.v_createdate = v_createdate;
	}

	public String getV_updatedate() {
		return v_updatedate;
	}

	public void setV_updatedate(String v_updatedate) {
		this.v_updatedate = v_updatedate;
	}
	
	
	
}
