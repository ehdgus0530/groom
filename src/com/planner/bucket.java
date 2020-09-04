package com.planner;

public class bucket {

	private int num;
	private String bk_title;
	private String bk_content;
	private int bk_check;
	private String bk_writer;
	
	public bucket() {}
	public bucket(int num, String bk_title, String bk_content, int bk_check, String bk_writer) {
		this.num = num;
		this.bk_title = bk_title;
		this.bk_content = bk_content;
		this.bk_check = bk_check;
		this.bk_writer = bk_writer;
	}
	public String getBk_writer() {
		return bk_writer;
	}
	public void setBk_writer(String bk_writer) {
		this.bk_writer = bk_writer;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getBk_title() {
		return bk_title;
	}
	public void setBk_title(String bk_title) {
		this.bk_title = bk_title;
	}
	public String getBk_content() {
		return bk_content;
	}
	public void setBk_content(String bk_content) {
		this.bk_content = bk_content;
	}
	public int getBk_check() {
		return bk_check;
	}
	public void setBk_check(int bk_check) {
		this.bk_check = bk_check;
	}
	
	
}
