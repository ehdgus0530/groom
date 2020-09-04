package com.travel;

import java.util.Date;

public class travel {

	private int num;
	private String tr_title;
	private String tr_area;
	private Date tr_date;
	private String tr_money;
	private String tr_writer;
	
	public travel() {}
	public travel(int num, String tr_title, String tr_area, Date tr_date, String tr_money, String tr_writer) {
		this.num = num;
		this.tr_title = tr_title;
		this.tr_area = tr_area;
		this.tr_date = tr_date;
		this.tr_money = tr_money;
		this.tr_writer = tr_writer;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTr_title() {
		return tr_title;
	}
	public void setTr_title(String tr_title) {
		this.tr_title = tr_title;
	}
	public String getTr_area() {
		return tr_area;
	}
	public void setTr_area(String tr_area) {
		this.tr_area = tr_area;
	}
	public Date getTr_date() {
		return tr_date;
	}
	public void setTr_date(Date tr_date) {
		this.tr_date = tr_date;
	}
	public String getTr_money() {
		return tr_money;
	}
	public void setTr_money(String tr_money) {
		this.tr_money = tr_money;
	}
	public String getTr_writer() {
		return tr_writer;
	}
	public void setTr_writer(String tr_writer) {
		this.tr_writer = tr_writer;
	}
	
	

}