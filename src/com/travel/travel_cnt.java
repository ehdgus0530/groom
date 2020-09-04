package com.travel;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.center.main_handler;

	/**
	 * Servlet implementation class admin_cnt
	 */
	@WebServlet("/travel_cnt")
	public class travel_cnt extends HttpServlet {
		private static final long serialVersionUID = 1L;
		private Map<String, main_handler> map = new HashMap();

		/**
		 * @see HttpServlet#HttpServlet()
		 */
		public travel_cnt() {
			super();
			// TODO Auto-generated constructor stub
		}

		/**
		 * @see Servlet#init(ServletConfig)
		 */
		public void init(ServletConfig config) throws ServletException {
			// TODO Auto-generated method stub
			String Iparam = config.getInitParameter("travel_config");
			Properties prop = new Properties();
			try (FileReader fs = new FileReader(Iparam)) {
				prop.load(fs);
			} catch (IOException e) {
				System.out.println("properties 파일 열기 실패! 경로 확인하세요");
			}
			Iterator key = prop.keySet().iterator();
			while (key.hasNext()) {
				String cmd = (String) key.next();
				String value = prop.getProperty(cmd);
				try {
					Class<?> hclass = Class.forName(value);
					main_handler hinst = (main_handler) hclass.newInstance();
					map.put(cmd, hinst);
				} catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
					System.out.println("클래스가 존재하지않거나 객체 클래스형식 또는 이름이 잘못되었습니다.");
				}
			}
		}

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
		 *      response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			// TODO Auto-generated method stub
			active(request, response);
		}

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
		 *      response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			// TODO Auto-generated method stub
			active(request, response);
		}

		protected void active(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			String uri = request.getRequestURI();
			String path = request.getContextPath();
			String key = uri.substring(path.length() + 1);

			main_handler hnd = map.get(key);
			request.setCharacterEncoding("utf-8");
			System.out.println(key);

			String view = "index.jsp";
			try {
				System.out.println("컨트롤러 정상");
				view = hnd.action(request, response);
			} catch (Exception e) {
				System.out.println("travel 핸들러 클래스 action 메소드 오류");
				e.printStackTrace();
			}
			if (view != null) {
				RequestDispatcher dps = request.getRequestDispatcher(view);
				dps.forward(request, response);
			}
		}

	}
