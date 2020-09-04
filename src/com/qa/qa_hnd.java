package com.qa;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.center.main_handler;

public class qa_hnd implements main_handler{
	qa_service qs = new qa_service();
	
	public String action(HttpServletRequest request, HttpServletResponse response) {
		
		String kind = request.getParameter("kind");
		String view = "index.jsp";
		qs.select_method(kind, request);
		if(kind==null){
			view = "qa/index.jsp";
		}
		else if(kind.equals("view")) {
			view = "qa/qa_view.jsp";
		}
		else if(kind.equals("write")) {
			view = "qa/qa_write.jsp";
		}else if(kind.equals("save")) {
			view = "qa/index.jsp";
		}
		
		return view;
	}
}
