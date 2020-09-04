package com.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class member_service {
	private member_dao md = new member_dao();
	
	public void login_excute(HttpServletRequest request, HttpServletResponse response) {
		String id =request.getParameter("user_id");
		String pw =request.getParameter("user_pw");
		if(md.login_db(id,pw)) {
			request.getSession().setAttribute("id", id);
		}
		else
			request.setAttribute("nomatch", "fail");
	}
	public void join_save(HttpServletRequest request, HttpServletResponse response) {
		member temp = new member();
		temp.setUser_name(request.getParameter("user_name"));
		temp.setUser_nick(request.getParameter("user_nick"));
		temp.setUser_birth(request.getParameter("user_birth"));
		temp.setUser_id(request.getParameter("user_id"));
		temp.setUser_pw(request.getParameter("user_pw"));
		temp.setUser_phone(request.getParameter("user_phone"));
		temp.setUser_email(request.getParameter("user_email"));
		if(md.insert_db(temp)) {
			request.setAttribute("idt", temp.getUser_id());
			System.out.println("회원가입 저장성공");
		}else 
			System.out.println("회원가입 저장실패");
		
	}
}
