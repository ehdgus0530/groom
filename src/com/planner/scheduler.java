package com.planner;

public class scheduler {

	private int num;
	private String memnum;
	private String scd_time;
	private String scd_content;
	private String scd_writer;
	
	public scheduler() {}
	public scheduler(int num, String memnum, String scd_time, String scd_content, String scd_writer) {
		this.num = num;
		this.memnum = memnum;
		this.scd_time = scd_time;
		this.scd_content = scd_content;
		this.scd_writer = scd_writer;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getMemnum() {
		return memnum;
	}
	public void setMemnum(String memnum) {
		this.memnum = memnum;
	}
	public String getScd_time() {
		return scd_time;
	}
	public void setScd_time(String scd_time) {
		this.scd_time = scd_time;
	}
	public String getScd_content() {
		return scd_content;
	}
	public void setScd_content(String scd_content) {
		this.scd_content = scd_content;
	}
	public String getScd_writer() {
		return scd_writer;
	}
	public void setScd_writer(String scd_writer) {
		this.scd_writer = scd_writer;
	}
}