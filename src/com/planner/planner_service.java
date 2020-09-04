package com.planner;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

public class planner_service {

	public void select_method(String kind, HttpServletRequest request) {

		planner_dao pd = new planner_dao();
		bucket bdata;
		calendar cdata;
		scheduler sdata;

		// 메인 화면 ?? 버킷 어레이 리스트??
		if(kind==null) {
			String id = (String) request.getSession().getAttribute("id");
			ArrayList<bucket> list1 = pd.Allselect_bucket(id);
			request.setAttribute("list1", list1);
		}
		// 스케쥴러 목록 보기 동작

		else if (kind.equals("scheduler")) {
			String id = (String) request.getSession().getAttribute("id");
			
			HashMap<String, String> scd_page = (HashMap<String, String>)pd.Allselect_scheduler(id);
			request.setAttribute("scd_content", scd_page);
		}

		// 스케쥴러 저장 시에 동작
		else if (kind.equals("scd_set")) {
			System.out.println("서비스 정상");
	
			String id = (String) request.getSession().getAttribute("id");
			sdata = new scheduler(0, "0", request.getParameter("scd_time"), request.getParameter("scd_content"), id);
			pd.insert_scheduler(sdata);
		}

		// 버킷리스트 목록 보기 동작
		else if (kind.equals("bucket")) {
			String id = (String) request.getSession().getAttribute("id");
			ArrayList<bucket> list = pd.Allselect_bucket(id);
			request.setAttribute("list", list);
		}

		// 버킷 리스트 글쓰기 저장 시에 동작
		else if (kind.equals("bk_save")) {
			String id = (String) request.getSession().getAttribute("id");

			bdata = new bucket(0, request.getParameter("bk_title"), request.getParameter("bk_content"), 0, id);
			pd.insert_bucket(bdata);

			ArrayList<bucket> list = pd.Allselect_bucket(id);
			request.setAttribute("list", list);
		}
		
		// 캘린더 달력 보기 동작
		else if (kind.equals("calendar")) {
			String id = (String) request.getSession().getAttribute("id");
			ArrayList<calendar> list = pd.Allselect_calendar(id);
			request.setAttribute("list", list);
		}
		
		
	}

}