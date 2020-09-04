package com.travel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.center.main_handler;


public class travel_hnd implements main_handler{
	travel_service ts = new travel_service();
	
	public String action(HttpServletRequest request, HttpServletResponse response) {
		
		String kind = request.getParameter("kind");
		String view = "index.jsp";
		ts.select_method(kind, request);
		if(kind==null){
			view = "travel/index.jsp";
		}
		else if(kind.equals("tr_list")) {
			view = "travel/planner_list.jsp";
		}else if(kind.equals("tr_pl")) {
			view = "travel/travel_planner.jsp";
		}
		
		return view;
	}
}
