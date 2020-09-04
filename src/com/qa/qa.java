package com.qa;

import java.util.Date;

public class qa {

	private int num;
	private String qa_title;  //  제목
	private String qa_writer;  //  작성자
	private String qa_cate;  //  분류
	private String qa_content;  //  내용
	private Date qa_date;  // 작성날짜
	private String qa_file;  //  첨부파일
	private String qa_comment;  // 덧글
	
	public qa() {}
	public qa(int num, String qa_title, String qa_writer, String qa_cate,
			String qa_content, Date qa_date, String qa_file,
			String qa_comment) {
		
		this.num=num;
		this.qa_title=qa_title;
		this.qa_writer=qa_writer;
		this.qa_cate=qa_cate;
		this.qa_content=qa_content;
		this.qa_date=qa_date;
		this.qa_file=qa_file;
		this.qa_comment=qa_comment;		
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getQa_title() {
		return qa_title;
	}
	public void setQa_title(String qa_title) {
		this.qa_title = qa_title;
	}
	public String getQa_writer() {
		return qa_writer;
	}
	public void setQa_writer(String qa_writer) {
		this.qa_writer = qa_writer;
	}
	public String getQa_cate() {
		return qa_cate;
	}
	public void setQa_cate(String qa_cate) {
		this.qa_cate = qa_cate;
	}
	public String getQa_content() {
		return qa_content;
	}
	public void setQa_content(String qa_content) {
		this.qa_content = qa_content;
	}
	public Date getQa_date() {
		return qa_date;
	}
	public void setQa_date(Date qa_date) {
		this.qa_date = qa_date;
	}
	public String getQa_file() {
		return qa_file;
	}
	public void setQa_file(String qa_file) {
		this.qa_file = qa_file;
	}
	public String getQa_comment() {
		return qa_comment;
	}
	public void setQa_comment(String qa_comment) {
		this.qa_comment = qa_comment;
	}
	
	
	
}
