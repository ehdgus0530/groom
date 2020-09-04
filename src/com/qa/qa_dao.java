package com.qa;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

public class qa_dao {

	private Connection conn;
	private ResultSet rs;
	private PreparedStatement ptmt;
	
	
	public qa_dao(){
		try {
			conn=DriverManager.getConnection("jdbc:apache:commons:dbcp:groom");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public qa select_qa(int num) {
		String sql = "select * from qa where num="+num;
		qa temp = null;
		try {
			ptmt = conn.prepareStatement(sql);
			rs = ptmt.executeQuery();
			if(rs.next()) {
				temp = new qa(
						rs.getInt("num"), rs.getString("qa_title"),
						rs.getString("qa_writer"),rs.getString("qa_cate"),
						rs.getString("qa_content"),rs.getDate("qa_date"),
						rs.getString("qa_file"),rs.getString("qa_comment")
						);
			}
			return temp;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("qa 테이블 실패");
			e.printStackTrace();
		}
		
		return null;
	}
	
	public void insert_qa(qa data) {
		String sql = "insert into qa(num, qa_title, qa_writer, qa_cate, qa_content, qa_date, qa_file, qa_comment) values(?,?,?,?,?,?,?,?)";
		
		try {
			int num=get_maxnum();
			ptmt=conn.prepareStatement(sql);
			ptmt.setInt(1, num);
			ptmt.setString(2, data.getQa_title());
			ptmt.setString(3, data.getQa_writer());
			ptmt.setString(4, data.getQa_cate());
			ptmt.setString(5, data.getQa_content());
			ptmt.setTimestamp(6, new Timestamp(data.getQa_date().getTime()));
			ptmt.setString(7, data.getQa_file());
			ptmt.setString(8, data.getQa_comment());
			ptmt.executeUpdate();
			ptmt.close();
		}catch(SQLException e) {
			System.out.println("게시판 글 저장 실패");
			e.printStackTrace();
		}
	}
	public ArrayList<qa> All_select(){
		ArrayList<qa> data = new ArrayList<qa>();
		String sql = "select * from qa order by num desc";
		try {
			ptmt=conn.prepareStatement(sql);
			rs = ptmt.executeQuery();
			while(rs.next()) {
				qa temp = new qa(
						rs.getInt("num"),rs.getString("qa_title"),rs.getString("qa_writer"),
						rs.getString("qa_cate"),rs.getString("qa_content"),rs.getDate("qa_date"),
						rs.getString("qa_file"),rs.getString("qa_comment")
						);

				data.add(temp);
			}
			return data;
		}catch(SQLException e) {
			System.out.println("게시판 DB 오류");
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				rs.close();
				ptmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return null;
	}
	private int get_maxnum() {
		String sql ="select Max(num) as m from qa";
		try {
			ptmt = conn.prepareStatement(sql);
			rs = ptmt.executeQuery(sql);
			if(rs.next()) {
				return rs.getInt("m")+1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				rs.close();
				ptmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 1;
	}
	public int total() {
		String sql = "select count(num) as n from qa";
		try {
			ptmt = conn.prepareStatement(sql);
			rs=ptmt.executeQuery();
			if(rs.next()) {
				return rs.getInt("n");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				rs.close();
				ptmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;
	}

}
