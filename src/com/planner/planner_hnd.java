package com.planner;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.center.main_handler;

public class planner_hnd implements main_handler{
	planner_service ps = new planner_service();
	
	@Override
	public String action(HttpServletRequest request, HttpServletResponse response) {
		String kind = request.getParameter("kind");
		String view = "index.jsp";
		if(kind==null){
			ps.select_method(kind, request);
			view = "planner/index.jsp";
		}
		else if(kind.equals("bucket")) {
			ps.select_method(kind, request);
			view = "planner/bucket.jsp";
		}
		else if(kind.equals("bk_save")) {
			ps.select_method(kind, request);
			view = null;
			try {
				response.sendRedirect("bk.pl?kind=bucket");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(kind.equals("scheduler")) {
			view = "planner/scheduler.jsp";
			ps.select_method(kind, request);
		}
		else if(kind.equals("scd_set")) {
			System.out.println("핸들러 정상");
			
			ps.select_method(kind, request);
		}
		
		else if(kind.equals("calendar")) {
			view = "planner/calendar.jsp";
			ps.select_method(kind, request);
		}
		
		return view;
	}
	
}
