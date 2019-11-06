package com.exam.entity;

public class Movie {
	
	private Integer mid;
	
	private String mname;
	
	private String pname;
	
	private String price;
	
	private String hiredate;
	
	private String mlen;
	
	private String type;
	
	private String time;
	
	private String area;
	
	private Integer zt;

	public Integer getMid() {
		return mid;
	}

	public void setMid(Integer mid) {
		this.mid = mid;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getHiredate() {
		return hiredate;
	}

	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}

	public String getMlen() {
		return mlen;
	}

	public void setMlen(String mlen) {
		this.mlen = mlen;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public Integer getZt() {
		return zt;
	}

	public void setZt(Integer zt) {
		this.zt = zt;
	}

	public Movie(Integer mid, String mname, String pname, String price, String hiredate, String mlen, String type,
			String time, String area, Integer zt) {
		super();
		this.mid = mid;
		this.mname = mname;
		this.pname = pname;
		this.price = price;
		this.hiredate = hiredate;
		this.mlen = mlen;
		this.type = type;
		this.time = time;
		this.area = area;
		this.zt = zt;
	}

	public Movie() {
		super();
	}

	@Override
	public String toString() {
		return "Movie [mid=" + mid + ", mname=" + mname + ", pname=" + pname + ", price=" + price + ", hiredate="
				+ hiredate + ", mlen=" + mlen + ", type=" + type + ", time=" + time + ", area=" + area + ", zt=" + zt
				+ "]";
	}
	
}