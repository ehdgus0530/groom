package com.travel;

import java.sql.Timestamp;
import java.util.Date;

public class air {
	int num;
	String port_code;
	Date port_dep;
	Date port_arr;
	Timestamp time_dep;
	Timestamp time_arr;
	int air_adt;
	int air_kid;
	int air_way;
	String location;
	long eco_charge;
	long pre_charge;
	String airline_code;
	String flight_code;

	public air() {
	}

	public air(int num, String port_code, Date port_dep, Date port_arr, Timestamp time_dep, Timestamp time_arr,
			int air_adt, int air_kid, int air_way, String location, long eco_charge, long pre_charge,
			String airline_code, String flight_code) {

		this.num = num;
		this.port_code = port_code;
		this.port_dep = port_dep;
		this.port_arr = port_arr;
		this.time_dep = time_dep;
		this.time_arr = time_arr;
		this.air_adt = air_adt;
		this.air_kid = air_kid;
		this.air_way = air_way;
		this.location = location;
		this.eco_charge = eco_charge;
		this.pre_charge = pre_charge;
		this.airline_code = airline_code;
		this.flight_code = flight_code;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getPort_code() {
		return port_code;
	}

	public void setPort_code(String port_code) {
		this.port_code = port_code;
	}

	public Date getPort_dep() {
		return port_dep;
	}

	public void setPort_dep(Date port_dep) {
		this.port_dep = port_dep;
	}

	public Date getPort_arr() {
		return port_arr;
	}

	public void setPort_arr(Date port_arr) {
		this.port_arr = port_arr;
	}

	public Timestamp getTime_dep() {
		return time_dep;
	}

	public void setTime_dep(Timestamp time_dep) {
		this.time_dep = time_dep;
	}

	public Timestamp getTime_arr() {
		return time_arr;
	}

	public void setTime_arr(Timestamp time_arr) {
		this.time_arr = time_arr;
	}

	public int getAir_adt() {
		return air_adt;
	}

	public void setAir_adt(int air_adt) {
		this.air_adt = air_adt;
	}

	public int getAir_kid() {
		return air_kid;
	}

	public void setAir_kid(int air_kid) {
		this.air_kid = air_kid;
	}

	public int getAir_way() {
		return air_way;
	}

	public void setAir_way(int air_way) {
		this.air_way = air_way;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public long getEco_charge() {
		return eco_charge;
	}

	public void setEco_charge(long eco_charge) {
		this.eco_charge = eco_charge;
	}

	public long getPre_charge() {
		return pre_charge;
	}

	public void setPre_charge(long pre_charge) {
		this.pre_charge = pre_charge;
	}

	public String getAirline_code() {
		return airline_code;
	}

	public void setAirline_code(String airline_code) {
		this.airline_code = airline_code;
	}

	public String getFlight_code() {
		return flight_code;
	}

	public void setFlight_code(String flight_code) {
		this.flight_code = flight_code;
	}

}
