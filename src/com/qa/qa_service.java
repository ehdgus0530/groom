package com.qa;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

public class qa_service {

public void select_method(String kind,HttpServletRequest request) {
		
		qa_dao qd = new qa_dao();
		qa data;
		
	//  문의글 목록 보기 동작
		if(kind==null) {
			System.out.println("qq");
			ArrayList<qa> list = qd.All_select();
			request.setAttribute("list", list);
		}
	//  문의 글쓰기 저장
		else if(kind.equals("save")) {
		String id = (String)request.getSession().getAttribute("id");
		System.out.println(id);
		
		data = new qa(0,request.getParameter("qa_title"),id,
				request.getParameter("qa_cate"),request.getParameter("qa_content"),
				new Date(),request.getParameter("qa_file"),
				request.getParameter("qa_comment"));
		qd.insert_qa(data);
		ArrayList<qa> list = qd.All_select();
		request.setAttribute("list", list);	
		}
	//  문의 글 보기
		else if(kind.equals("view")){
			int num = Integer.parseInt(request.getParameter("num"));
			data= qd.select_qa(num);
			request.setAttribute("data", data);
		}
	}
	

}
	
