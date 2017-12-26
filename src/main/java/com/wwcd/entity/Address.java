package com.wwcd.entity;

import java.io.Serializable;

public class Address implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int aid;
	private String aname;
	private String addr;
	private String atel;
	private String apcode;
	private String adefault;
	private int uid;
	public Address() {
		super();
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAtel() {
		return atel;
	}
	public void setAtel(String atel) {
		this.atel = atel;
	}
	public String getApcode() {
		return apcode;
	}
	public void setApcode(String apcode) {
		this.apcode = apcode;
	}
	public String getAdefault() {
		return adefault;
	}
	public void setAdefault(String adefault) {
		this.adefault = adefault;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
}
