package com.wwcd.entity;

public class Order {
	private int oid;
	private String ostatus;
	private String ologistics;
	private String ocontent;
	private double ototal;
	private String odate;
	private int aid;
	private int uid;

	
	public Order() {
		super();
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getOstatus() {
		return ostatus;
	}
	public void setOstatus(String ostatus) {
		this.ostatus = ostatus;
	}
	public String getOlogistics() {
		return ologistics;
	}
	public void setOlogistics(String ologistics) {
		this.ologistics = ologistics;
	}
	public String getOcontent() {
		return ocontent;
	}
	public void setOcontent(String ocontent) {
		this.ocontent = ocontent;
	}
	public double getOtotal() {
		return ototal;
	}
	public void setOtotal(double ototal) {
		this.ototal = ototal;
	}
	public String getOdate() {
		return odate;
	}
	public void setOdate(String odate) {
		this.odate = odate;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	
	
}
