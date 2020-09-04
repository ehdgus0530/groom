package com.travel;

public class car {

	int num;
	String rent_code;
	String return_code;
	int count;
	String lisence;
	int age;
	long car_charge;
	String car_code;
	int memnum;

	public car() {
	}

	public car(int num, String rent_code, String return_code, int count, String lisence, int age, long car_charge,
			String car_code, int memnum) {

		this.num = num;
		this.rent_code = rent_code;
		this.return_code = return_code;
		this.count = count;
		this.lisence = lisence;
		this.age = age;
		this.car_charge = car_charge;
		this.car_code = car_code;
		this.memnum = memnum;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getRent_code() {
		return rent_code;
	}

	public void setRent_code(String rent_code) {
		this.rent_code = rent_code;
	}

	public String getReturn_code() {
		return return_code;
	}

	public void setReturn_code(String return_code) {
		this.return_code = return_code;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getLisence() {
		return lisence;
	}

	public void setLisence(String lisence) {
		this.lisence = lisence;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public long getCar_charge() {
		return car_charge;
	}

	public void setCar_charge(long car_charge) {
		this.car_charge = car_charge;
	}

	public String getCar_code() {
		return car_code;
	}

	public void setCar_code(String car_code) {
		this.car_code = car_code;
	}

	public int getMemnum() {
		return memnum;
	}

	public void setMemnum(int memnum) {
		this.memnum = memnum;
	}

}