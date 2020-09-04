package com.planner;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.center.main_handler;

public class planner_hnd implements main_handler{
	planner_service ps = new planner_service();
	
	@Override
	public String action(HttpServletRequest request, HttpServletResponse response) {
		Map<String,String> view_page = new HashMap<String,String>();
		view_page.put("bucket","bucket.jsp");
		view_page.put(null,"index.jsp");
		view_page.put("scheduler","scheduler.jsp");
		view_page.put("scd_set","index.jsp");
		view_page.put("calendar","calendar.jsp");
		
		String kind = request.getParameter("kind");
		String view = "planner/"+view_page.get(kind);
		
		
		System.out.println(view_page.get(kind));
		ps.select_method(kind, request);
		
		if(kind!=null&&kind.equals("bk_save")) {
			view = null;
			try {
				response.sendRedirect("bk.pl?kind=bucket");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return view;
	}
	
}
