package com.travel;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class travel_dao {

	private Connection conn;
	private ResultSet rs;
	private PreparedStatement ptmt;

	public travel_dao() {
		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:groom");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private int get_maxnum_air() {
		String sql = "select Max(num) as m from air";
		Statement stmt = null;
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				return rs.getInt("m") + 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 1;
	}

	public boolean insert_air(air air_data) {
		int num = get_maxnum_air();
		String sql = "insert into air(num, port_code, port_dep, port_arr, time_dep, time_arr, air_adt, air_kid, air_way, location, eco_charge, pre_charge, airline_code, flight_code, memnm) values(?,?,?,?,?,?,?,?)";
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, num);
			ptmt.setString(2, air_data.getPort_code());
			ptmt.setDate(3, (Date) air_data.port_dep);
			ptmt.setDate(4, (Date) air_data.port_arr);
			ptmt.setTimestamp(5, air_data.time_dep);
			ptmt.setTimestamp(6, air_data.time_arr);
			ptmt.setInt(7, air_data.air_adt);
			ptmt.setInt(8, air_data.air_kid);
			ptmt.setInt(9, air_data.air_way);
			ptmt.setString(10, air_data.location);
			ptmt.setLong(11, air_data.eco_charge);
			ptmt.setLong(12, air_data.pre_charge);
			ptmt.setString(13, air_data.airline_code);
			ptmt.setString(14, air_data.flight_code);
			ptmt.executeUpdate();
			ptmt.close();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("항공 예약 DB 저장 실패");
			e.printStackTrace();
		}
		return false;
	}
}
