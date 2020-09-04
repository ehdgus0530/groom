package com.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class member_dao {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement ptmt;
	
	public member_dao(){
		try {
			conn=DriverManager.getConnection("jdbc:apache:commons:dbcp:groom");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private int get_maxnum() {
		String sql ="select Max(num) as m from member";
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
	public boolean insert_db(member temp) {
		int num = get_maxnum();
		String sql="insert into member(num,name,nickname,birth,id,pw,phone,email) values(?,?,?,?,?,?,?,?)";
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, num);
			ptmt.setString(2, temp.getUser_name());
			ptmt.setString(3,temp.getUser_nick());
			ptmt.setString(4, temp.getUser_birth());
			ptmt.setString(5, temp.getUser_id());
			ptmt.setString(6, temp.getUser_pw());
			ptmt.setString(7, temp.getUser_phone());
			ptmt.setString(8, temp.getUser_email());
			ptmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("회원가입 DB 저장 실패");
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
		return false;
	}
	public boolean login_db(String id, String pw) {
		String sql=" select * from member where id=? and pw=?";
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, id);
			ptmt.setString(2, pw);
			rs = ptmt.executeQuery();
			if(rs.next()) {
				return true;
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
		return false;
	}
}
