package beans.missing.vo;

import java.util.Date;

public class PetVO {
	private int missing_no;
	private String missing_pic;
	private Date write_date;
	private String missing_place;
	private Date missing_date;
	private String type;
	private String comment;
	private String tip;
	private Date complete_date;

	public PetVO() {
		// TODO Auto-generated constructor stub
	}

	public PetVO(int missing_no, String missing_pic, Date write_date, String missing_place, Date missing_date,
			String type, String comment, String tip, Date complete_date) {
		super();
		this.missing_no = missing_no;
		this.missing_pic = missing_pic;
		this.write_date = write_date;
		this.missing_place = missing_place;
		this.missing_date = missing_date;
		this.type = type;
		this.comment = comment;
		this.tip = tip;
		this.complete_date = complete_date;
	}

	public int getMissing_no() {
		return missing_no;
	}

	public void setMissing_no(int missing_no) {
		this.missing_no = missing_no;
	}

	public String getMissing_pic() {
		return missing_pic;
	}

	public void setMissing_pic(String missing_pic) {
		this.missing_pic = missing_pic;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	public String getMissing_place() {
		return missing_place;
	}

	public void setMissing_place(String missing_place) {
		this.missing_place = missing_place;
	}

	public Date getMissing_date() {
		return missing_date;
	}

	public void setMissing_date(Date missing_date) {
		this.missing_date = missing_date;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	public Date getComplete_date() {
		return complete_date;
	}

	public void setComplete_date(Date complete_date) {
		this.complete_date = complete_date;
	}

	@Override
	public String toString() {
		return "PetVO [missing_no=" + missing_no + ", missing_pic=" + missing_pic + ", write_date=" + write_date
				+ ", missing_place=" + missing_place + ", missing_date=" + missing_date + ", type=" + type
				+ ", comment=" + comment + ", tip=" + tip + ", complete_date=" + complete_date + "]";
	}

}
