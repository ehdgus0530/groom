package com.planner;

import java.util.Date;

public class calendar {

	private int num;
	private String cal_title;
	private String cal_content;
	private Date cal_date;
	private String cal_writer;
	
	public calendar() {}
	public calendar(int num, String cal_title, String cal_content, Date cal_date, String cal_writer) {

		this.num=num;
		this.cal_title=cal_title;
		this.cal_content=cal_content;
		this.cal_date=cal_date;
		this.cal_writer=cal_writer;
	}
	
	public String getCal_writer() {
		return cal_writer;
	}
	public void setCal_writer(String cal_writer) {
		this.cal_writer = cal_writer;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getCal_title() {
		return cal_title;
	}
	public void setCal_title(String cal_title) {
		this.cal_title = cal_title;
	}
	public String getCal_content() {
		return cal_content;
	}
	public void setCal_content(String cal_content) {
		this.cal_content = cal_content;
	}
	public Date getCal_date() {
		return cal_date;
	}
	public void setCal_date(Date cal_date) {
		this.cal_date = cal_date;
	}
	
	
}