package beans.missing.vo;

import java.util.Date;

public class WitnessVO {

	private int wit_no;
	private String missing_pic;
	private Date write_date;
	private String wit_place;
	private String comment;
	private String id;
	private int missing_no;

	public WitnessVO() {
		// TODO Auto-generated constructor stub
	}

	public WitnessVO(int wit_no, String missing_pic, Date write_date, String wit_place, String comment, String id,
			int missing_no) {
		super();
		this.wit_no = wit_no;
		this.missing_pic = missing_pic;
		this.write_date = write_date;
		this.wit_place = wit_place;
		this.comment = comment;
		this.id = id;
		this.missing_no = missing_no;
	}

	public int getWit_no() {
		return wit_no;
	}

	public void setWit_no(int wit_no) {
		this.wit_no = wit_no;
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

	public String getWit_place() {
		return wit_place;
	}

	public void setWit_place(String wit_place) {
		this.wit_place = wit_place;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getMissing_no() {
		return missing_no;
	}

	public void setMissing_no(int missing_no) {
		this.missing_no = missing_no;
	}

	@Override
	public String toString() {
		return "WitnessVO [wit_no=" + wit_no + ", missing_pic=" + missing_pic + ", write_date=" + write_date
				+ ", wit_place=" + wit_place + ", comment=" + comment + ", id=" + id + ", missing_no=" + missing_no
				+ "]";
	}

}
