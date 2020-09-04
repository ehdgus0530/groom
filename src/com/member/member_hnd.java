package com.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.center.main_handler;

public class member_hnd implements main_handler{
	private member_service ms = new member_service();
	@Override
	public String action(HttpServletRequest request, HttpServletResponse response) {
		
		String kind = request.getParameter("kind");
		String view = "index.jsp";
		if(kind==null) {
			view = "index.jsp";
		}
		else if(kind.equals("join")) {
			view = "member/join.jsp";
		}else if(kind.equals("join_save")) {
			ms.join_save(request, response);
			view = "index.jsp";
		}else if(kind.equals("login")) {
			view = "member/login.jsp";
		}else if(kind.equals("login_ok")) {
			ms.login_excute(request, response);
			view=null;
			try {
				response.sendRedirect("index.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(kind.equals("logout")){
			request.getSession().removeAttribute("id");
			view = "index.jsp";
		}else if(kind.equals("mypage")) {
			view = "member/info.jsp";
		}
		return view;
	}
}
