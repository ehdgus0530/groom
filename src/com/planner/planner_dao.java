package com.planner;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class planner_dao {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement ptmt;

	public planner_dao() {
		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:groom");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 버킷리스트 넘버값
	private int get_maxnum() {
		String sql = "select Max(num) as m from bucket";
		try {
			ptmt = conn.prepareStatement(sql);
			rs = ptmt.executeQuery(sql);
			if (rs.next()) {
				return rs.getInt("m") + 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 1;
	}

	// 버킷 글 등록
	public void insert_bucket(bucket bdata) {
		String sql = "insert into bucket(num,bk_title,bk_content,bk_check,bk_writer) values(?,?,?,?,?)";
		try {
			int num = get_maxnum();
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, num);
			ptmt.setString(2, bdata.getBk_title());
			ptmt.setString(3, bdata.getBk_content());
			ptmt.setInt(4, bdata.getBk_check());
			ptmt.setString(5, bdata.getBk_writer());
			ptmt.executeUpdate();
			ptmt.close();
		} catch (SQLException e) {
			System.out.println("버킷리스트 글 저장 실패");
			e.printStackTrace();
		}
	}

	// 버킷리스트 전체 불러오기
	public ArrayList<bucket> Allselect_bucket(String id) {
		ArrayList<bucket> data = new ArrayList<bucket>();
		String sql = "select * from bucket  where bk_writer = '" + id + "' order by num desc";

		try {
			ptmt = conn.prepareStatement(sql);
			rs = ptmt.executeQuery();
			while (rs.next()) {
				bucket temp = new bucket(rs.getInt("num"), rs.getString("bk_title"), rs.getString("bk_content"),
						rs.getInt("bk_check"), rs.getString("bk_writer"));
				data.add(temp);
			}
			return data;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("bucket 테이블 실패");
			e.printStackTrace();
		}
		return null;
	}

	// 스케쥴 넘버값
	private int get_maxnum2() {
		String sql = "select Max(num) as m from scheduler";
		try {
			ptmt = conn.prepareStatement(sql);
			rs = ptmt.executeQuery(sql);
			if (rs.next()) {
				return rs.getInt("m") + 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 1;
	}

	// 스케쥴러 글 등록
	public void insert_scheduler(scheduler sdata) {
		System.out.println("디비 정상");

		String sql = "insert into scheduler(num,memnum,scd_time,scd_content,scd_writer) values(?,?,?,?,?)";
		try {
			int num = get_maxnum2();
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, num);
			ptmt.setString(2, sdata.getMemnum());
			ptmt.setString(3, sdata.getScd_time());
			ptmt.setString(4, sdata.getScd_content());
			ptmt.setString(5, sdata.getScd_writer());
			ptmt.executeUpdate();
			ptmt.close();
		} catch (SQLException e) {
			System.out.println("스케쥴러 글 저장 실패");
			e.printStackTrace();
		}
	}

	// 스케쥴러 전체 불러오기
	public Map<String, String> Allselect_scheduler(String id) {
		Map<String, String> scd_page = new HashMap<String, String>();

		String sql = "select * from scheduler where scd_writer = '" + id + "' order by num desc";

		try {
			ptmt = conn.prepareStatement(sql);
			rs = ptmt.executeQuery();
			while (rs.next()) {
				scheduler temp = new scheduler(rs.getInt("num"), rs.getString("memnum"), rs.getString("scd_time"),
						rs.getString("scd_content"), rs.getString("scd_writer"));
				scd_page.put(temp.getScd_time(), temp.getScd_content());
			}
			return scd_page;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("scheduler 테이블 실패");
			e.printStackTrace();
		}
		return null;
	}

	// 캘린더 넘버값
	private int get_maxnum1() {
		String sql = "select Max(num) as m from calendar";
		try {
			ptmt = conn.prepareStatement(sql);
			rs = ptmt.executeQuery(sql);
			if (rs.next()) {
				return rs.getInt("m") + 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 1;
	}

	// 캘린더 글 등록
	public void insert_calendar(calendar cdata) {
		String sql = "insert into calendar(num,cal_title,cal_content,cal_date,cal_writer) values(?,?,?,?,?)";

		try {
			int num = get_maxnum1();
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, num);
			ptmt.setString(2, cdata.getCal_title());
			ptmt.setString(3, cdata.getCal_content());
			ptmt.setDate(4, (Date) cdata.getCal_date());
			ptmt.setString(5, cdata.getCal_writer());
			ptmt.executeUpdate();
			ptmt.close();
		} catch (SQLException e) {
			System.out.println("캘린더 글 저장 실패");
			e.printStackTrace();
		}
	}

	// 캘린더 전체 불러오기
	public ArrayList<calendar> Allselect_calendar(String id) {
		ArrayList<calendar> data = new ArrayList<calendar>();
		String sql = "select * from calendar order by num desc";

		try {
			ptmt = conn.prepareStatement(sql);
			rs = ptmt.executeQuery();
			while (rs.next()) {
				calendar temp = new calendar(rs.getInt("num"), rs.getString("cal_title"), rs.getString("cal_content"),
						rs.getDate("cal_date"), rs.getString("cal_writer"));
				data.add(temp);
			}
			return data;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("calendar 테이블 실패");
			e.printStackTrace();
		}
		return null;
	}

}
