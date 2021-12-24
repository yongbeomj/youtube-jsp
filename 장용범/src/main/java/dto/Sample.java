package dto;

public class Sample {
	
	private int v_no; 
	private String v_name; 
	private String v_title; 
	private String v_image; 
	private String v_thumnail;
	
	public Sample() {
		// TODO Auto-generated constructor stub
	}

	public Sample(int v_no, String v_name, String v_title, String v_image, String v_thumnail) {
		this.v_no = v_no;
		this.v_name = v_name;
		this.v_title = v_title;
		this.v_image = v_image;
		this.v_thumnail = v_thumnail;
	}

	public int getV_no() {
		return v_no;
	}

	public void setV_no(int v_no) {
		this.v_no = v_no;
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

	public String getV_image() {
		return v_image;
	}

	public void setV_image(String v_image) {
		this.v_image = v_image;
	}

	public String getV_thumnail() {
		return v_thumnail;
	}

	public void setV_thumnail(String v_thumnail) {
		this.v_thumnail = v_thumnail;
	}
	
}
