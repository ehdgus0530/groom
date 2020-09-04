package com.travel;

import java.sql.Timestamp;

public class room {
	int num;
	String room_name;
	String location;
	Timestamp chk_in;
	Timestamp chk_out;
	String room_info;
	int room_adt;
	int room_kid;
	long room_charge;
	int room_code;
	int memnum;

	public room() {

	}

	public room(int num, String room_name, String location, Timestamp chk_in, Timestamp chk_out, String room_info,
			int room_adt, int room_kid, long room_charge, int room_code, int memnum) {

		this.num = num;
		this.room_name = room_name;
		this.location = location;
		this.chk_in = chk_in;
		this.chk_out = chk_out;
		this.room_info = room_info;
		this.room_adt = room_adt;
		this.room_kid = room_kid;
		this.room_charge = room_charge;
		this.room_code = room_code;
		this.memnum = memnum;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Timestamp getChk_in() {
		return chk_in;
	}

	public void setChk_in(Timestamp chk_in) {
		this.chk_in = chk_in;
	}

	public Timestamp getChk_out() {
		return chk_out;
	}

	public void setChk_out(Timestamp chk_out) {
		this.chk_out = chk_out;
	}

	public String getRoom_info() {
		return room_info;
	}

	public void setRoom_info(String room_info) {
		this.room_info = room_info;
	}

	public int getRoom_adt() {
		return room_adt;
	}

	public void setRoom_adt(int room_adt) {
		this.room_adt = room_adt;
	}

	public int getRoom_kid() {
		return room_kid;
	}

	public void setRoom_kid(int room_kid) {
		this.room_kid = room_kid;
	}

	public long getRoom_charge() {
		return room_charge;
	}

	public void setRoom_charge(long room_charge) {
		this.room_charge = room_charge;
	}

	public int getRoom_code() {
		return room_code;
	}

	public void setRoom_code(int room_code) {
		this.room_code = room_code;
	}

	public int getMemnum() {
		return memnum;
	}

	public void setMemnum(int memnum) {
		this.memnum = memnum;
	}
}
